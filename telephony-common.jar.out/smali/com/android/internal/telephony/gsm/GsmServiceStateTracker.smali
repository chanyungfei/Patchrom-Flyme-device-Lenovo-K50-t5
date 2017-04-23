.class final Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I = null

.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x3e9

.field protected static final EVENT_SET_AUTO_SELECT_NETWORK_DONE:I = 0x32

.field static final LOG_TAG:Ljava/lang/String; = "GsmSST"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field static final PROPERTY_RIL_UICC_3GPP_TYPE:[Ljava/lang/String;

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field static final REJECT_NOTIFICATION:I = 0x37a

.field static final SPECIAL_CARD_TYPE_NOTIFICATION:I = 0x22c7

.field private static final SST_TYPE:I = 0x0

.field static final VDBG:Z = true

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field public static final customEhplmn:[[Ljava/lang/String;

.field private static mCellInfoTimer:Ljava/util/Timer;

.field private static sReceiveNitz:[Z


# instance fields
.field protected bHasDetachedDuringPolling:Z

.field public dontUpdateNetworkStateFlag:Z

.field private explict_update_spn:I

.field private gprsState:I

.field private isCsInvalidCard:Z

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mBackupDataNetworkType:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private mConfigModemStatus:Z

.field private mCr:Landroid/content/ContentResolver;

.field private mCsgId:Ljava/lang/String;

.field private mDataConnectionSettingObserver:Landroid/database/ContentObserver;

.field private mDataRoaming:Z

.field private mEmergencyOnly:Z

.field private mEverIVSR:Z

.field private mEverPollSignalStrength:Z

.field private mEverRadioHandled:Z

.field private mFemtocellDomain:I

.field private mFirstRadioChange:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mHhbName:Ljava/lang/String;

.field private mImsExtInfo:I

.field private mImsRegInfo:I

.field private mImsRegistry:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsForceSendScreenOnForUpdateNwInfo:Z

.field private mIsImeiLock:Z

.field private mIsRatDowngrade:Z

.field private mLastCsNetworkType:I

.field private mLastPSRegisteredPLMN:Ljava/lang/String;

.field private mLastPsNetworkType:I

.field private mLastRegisteredPLMN:Ljava/lang/String;

.field private mLocatedPlmn:Ljava/lang/String;

.field private mMaxDataCalls:I

.field private mMsicFeatureConfigObserver:Landroid/database/ContentObserver;

.field private mNeedFixZoneAfterNitz:Z

.field mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private mNewMaxDataCalls:I

.field private mNewReasonDataDenied:I

.field private mNitzUpdatedTime:Z

.field private mNotification:Landroid/app/Notification;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mPreferredNetworkType:I

.field private mPsRegState:I

.field private mPsRegStateRaw:I

.field private mReasonDataDenied:I

.field private mReportedGprsNoReg:Z

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

.field private mSimType:Ljava/lang/String;

.field private mStartedGprsRegCheck:Z

.field protected mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

.field private mTimeZoneIdByMcc:[[Ljava/lang/String;

.field private mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field private newGPRSState:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    return v0
.end method

.method static synthetic -get1()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistry:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getcom_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->values()[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistry:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCurrentPhoneDataConnectionOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAllCellInfoByRate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V
    .locals 0
    .param p1, "eventId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyServiceStateChanged()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "receivedNitz"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setReceivedNitz(IZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;II)V
    .locals 0
    .param p1, "iccCardType"    # Ljava/lang/String;
    .param p2, "titleType"    # I
    .param p3, "detailType"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSpecialCardTypeNotification(Ljava/lang/String;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 179
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v0

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sReceiveNitz:[Z

    .line 227
    const/16 v0, 0x15

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "46000"

    aput-object v2, v1, v4

    const-string/jumbo v2, "46002"

    aput-object v2, v1, v5

    const-string/jumbo v2, "46007"

    aput-object v2, v1, v6

    const-string/jumbo v2, "46008"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    .line 228
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "45400"

    aput-object v2, v1, v4

    const-string/jumbo v2, "45402"

    aput-object v2, v1, v5

    const-string/jumbo v2, "45418"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    .line 229
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "46001"

    aput-object v2, v1, v4

    const-string/jumbo v2, "46009"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 230
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "45403"

    aput-object v2, v1, v4

    const-string/jumbo v2, "45404"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    .line 231
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "45412"

    aput-object v2, v1, v4

    const-string/jumbo v2, "45413"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    .line 232
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "45416"

    aput-object v2, v1, v4

    const-string/jumbo v2, "45419"

    aput-object v2, v1, v5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 233
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "45501"

    aput-object v2, v1, v4

    const-string/jumbo v2, "45504"

    aput-object v2, v1, v5

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 234
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "45503"

    aput-object v2, v1, v4

    const-string/jumbo v2, "45505"

    aput-object v2, v1, v5

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 235
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "45002"

    aput-object v2, v1, v4

    const-string/jumbo v2, "45008"

    aput-object v2, v1, v5

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 236
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "52501"

    aput-object v2, v1, v4

    const-string/jumbo v2, "52502"

    aput-object v2, v1, v5

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 237
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "43602"

    aput-object v2, v1, v4

    const-string/jumbo v2, "43612"

    aput-object v2, v1, v5

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 238
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "52010"

    aput-object v2, v1, v4

    const-string/jumbo v2, "52099"

    aput-object v2, v1, v5

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 239
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "24001"

    aput-object v2, v1, v4

    const-string/jumbo v2, "24005"

    aput-object v2, v1, v5

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 240
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "26207"

    aput-object v2, v1, v4

    const-string/jumbo v2, "26208"

    aput-object v2, v1, v5

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 241
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "23430"

    aput-object v2, v1, v4

    const-string/jumbo v2, "23431"

    aput-object v2, v1, v5

    const-string/jumbo v2, "23432"

    aput-object v2, v1, v6

    const-string/jumbo v2, "23433"

    aput-object v2, v1, v7

    const-string/jumbo v2, "23434"

    aput-object v2, v1, v8

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 242
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "72402"

    aput-object v2, v1, v4

    const-string/jumbo v2, "72403"

    aput-object v2, v1, v5

    const-string/jumbo v2, "72404"

    aput-object v2, v1, v6

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 243
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "72406"

    aput-object v2, v1, v4

    const-string/jumbo v2, "72410"

    aput-object v2, v1, v5

    const-string/jumbo v2, "72411"

    aput-object v2, v1, v6

    const-string/jumbo v2, "72423"

    aput-object v2, v1, v7

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 244
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "72432"

    aput-object v2, v1, v4

    const-string/jumbo v2, "72433"

    aput-object v2, v1, v5

    const-string/jumbo v2, "72434"

    aput-object v2, v1, v6

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 245
    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "31026"

    aput-object v2, v1, v4

    const-string/jumbo v2, "31031"

    aput-object v2, v1, v5

    const-string/jumbo v2, "310160"

    aput-object v2, v1, v6

    const-string/jumbo v2, "310200"

    aput-object v2, v1, v7

    const-string/jumbo v2, "310210"

    aput-object v2, v1, v8

    const-string/jumbo v2, "310220"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 246
    const-string/jumbo v2, "310230"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "310240"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "310250"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "310260"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "310270"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "310280"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 247
    const-string/jumbo v2, "311290"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "310300"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "310310"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "310320"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "311330"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "310660"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 248
    const-string/jumbo v2, "310800"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 245
    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 249
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "310150"

    aput-object v2, v1, v4

    const-string/jumbo v2, "310170"

    aput-object v2, v1, v5

    const-string/jumbo v2, "310380"

    aput-object v2, v1, v6

    const-string/jumbo v2, "310410"

    aput-object v2, v1, v7

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 250
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "31033"

    aput-object v2, v1, v4

    const-string/jumbo v2, "310330"

    aput-object v2, v1, v5

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 227
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    .line 328
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    .line 334
    new-array v0, v8, [Ljava/lang/String;

    .line 335
    const-string/jumbo v1, "gsm.ril.uicc.3gpptype"

    aput-object v1, v0, v4

    .line 336
    const-string/jumbo v1, "gsm.ril.uicc.3gpptype.2"

    aput-object v1, v0, v5

    .line 337
    const-string/jumbo v1, "gsm.ril.uicc.3gpptype.3"

    aput-object v1, v0, v6

    .line 338
    const-string/jumbo v1, "gsm.ril.uicc.3gpptype.4"

    aput-object v1, v0, v7

    .line 334
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PROPERTY_RIL_UICC_3GPP_TYPE:[Ljava/lang/String;

    .line 340
    new-array v0, v8, [Ljava/lang/String;

    .line 341
    const-string/jumbo v1, "gsm.ril.fulluicctype"

    aput-object v1, v0, v4

    .line 342
    const-string/jumbo v1, "gsm.ril.fulluicctype.2"

    aput-object v1, v0, v5

    .line 343
    const-string/jumbo v1, "gsm.ril.fulluicctype.3"

    aput-object v1, v0, v6

    .line 344
    const-string/jumbo v1, "gsm.ril.fulluicctype.4"

    aput-object v1, v0, v7

    .line 340
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 14
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v11, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 559
    iget-object v7, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v10, Landroid/telephony/CellInfoGsm;

    invoke-direct {v10}, Landroid/telephony/CellInfoGsm;-><init>()V

    invoke-direct {p0, p1, v7, v10}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    .line 141
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 142
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 143
    iput v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 144
    iput v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 150
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 156
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 161
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 168
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 172
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 176
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 186
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 189
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 218
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 219
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 221
    iput-object v13, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 222
    iput-object v13, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    .line 223
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFemtocellDomain:I

    .line 252
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    .line 257
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstRadioChange:Z

    .line 258
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsRatDowngrade:Z

    .line 261
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBackupDataNetworkType:I

    .line 265
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCsNetworkType:I

    .line 266
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPsNetworkType:I

    .line 268
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I

    .line 271
    iput-object v13, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 272
    iput-object v13, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 273
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverPollSignalStrength:Z

    .line 275
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverRadioHandled:Z

    .line 276
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverIVSR:Z

    .line 280
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCsInvalidCard:Z

    .line 284
    iput-object v13, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    .line 285
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    .line 286
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    .line 289
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;

    .line 293
    const/16 v7, 0xf

    new-array v7, v7, [[Ljava/lang/String;

    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "au"

    aput-object v11, v10, v9

    const-string/jumbo v11, "Australia/Sydney"

    aput-object v11, v10, v8

    aput-object v10, v7, v9

    .line 294
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "br"

    aput-object v11, v10, v9

    const-string/jumbo v11, "America/Sao_Paulo"

    aput-object v11, v10, v8

    aput-object v10, v7, v8

    .line 295
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "ca"

    aput-object v11, v10, v9

    const-string/jumbo v11, "America/Toronto"

    aput-object v11, v10, v8

    aput-object v10, v7, v12

    .line 296
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "cl"

    aput-object v11, v10, v9

    const-string/jumbo v11, "America/Santiago"

    aput-object v11, v10, v8

    const/4 v11, 0x3

    aput-object v10, v7, v11

    .line 297
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "es"

    aput-object v11, v10, v9

    const-string/jumbo v11, "Europe/Madrid"

    aput-object v11, v10, v8

    const/4 v11, 0x4

    aput-object v10, v7, v11

    .line 298
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "fm"

    aput-object v11, v10, v9

    const-string/jumbo v11, "Pacific/Ponape"

    aput-object v11, v10, v8

    const/4 v11, 0x5

    aput-object v10, v7, v11

    .line 299
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "gl"

    aput-object v11, v10, v9

    const-string/jumbo v11, "America/Godthab"

    aput-object v11, v10, v8

    const/4 v11, 0x6

    aput-object v10, v7, v11

    .line 300
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "id"

    aput-object v11, v10, v9

    const-string/jumbo v11, "Asia/Jakarta"

    aput-object v11, v10, v8

    const/4 v11, 0x7

    aput-object v10, v7, v11

    .line 301
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "kz"

    aput-object v11, v10, v9

    const-string/jumbo v11, "Asia/Almaty"

    aput-object v11, v10, v8

    const/16 v11, 0x8

    aput-object v10, v7, v11

    .line 302
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "mn"

    aput-object v11, v10, v9

    const-string/jumbo v11, "Asia/Ulaanbaatar"

    aput-object v11, v10, v8

    const/16 v11, 0x9

    aput-object v10, v7, v11

    .line 303
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "mx"

    aput-object v11, v10, v9

    const-string/jumbo v11, "America/Mexico_City"

    aput-object v11, v10, v8

    const/16 v11, 0xa

    aput-object v10, v7, v11

    .line 304
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "pf"

    aput-object v11, v10, v9

    const-string/jumbo v11, "Pacific/Tahiti"

    aput-object v11, v10, v8

    const/16 v11, 0xb

    aput-object v10, v7, v11

    .line 305
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "pt"

    aput-object v11, v10, v9

    const-string/jumbo v11, "Europe/Lisbon"

    aput-object v11, v10, v8

    const/16 v11, 0xc

    aput-object v10, v7, v11

    .line 306
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "ru"

    aput-object v11, v10, v9

    const-string/jumbo v11, "Europe/Moscow"

    aput-object v11, v10, v8

    const/16 v11, 0xd

    aput-object v10, v7, v11

    .line 307
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "us"

    aput-object v11, v10, v9

    const-string/jumbo v11, "America/New_York"

    aput-object v11, v10, v8

    const/16 v11, 0xe

    aput-object v10, v7, v11

    .line 293
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    .line 312
    const/4 v7, 0x3

    new-array v7, v7, [[Ljava/lang/String;

    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "460"

    aput-object v11, v10, v9

    const-string/jumbo v11, "Asia/Shanghai"

    aput-object v11, v10, v8

    aput-object v10, v7, v9

    .line 313
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "404"

    aput-object v11, v10, v9

    const-string/jumbo v11, "Asia/Calcutta"

    aput-object v11, v10, v8

    aput-object v10, v7, v8

    .line 314
    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "454"

    aput-object v11, v10, v9

    const-string/jumbo v11, "Asia/Hong_Kong"

    aput-object v11, v10, v8

    aput-object v10, v7, v12

    .line 312
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdByMcc:[[Ljava/lang/String;

    .line 317
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsImeiLock:Z

    .line 320
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegInfo:I

    .line 321
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsExtInfo:I

    .line 326
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsForceSendScreenOnForUpdateNwInfo:Z

    .line 332
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mConfigModemStatus:Z

    .line 347
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bHasDetachedDuringPolling:Z

    .line 350
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 496
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistry:Z

    .line 497
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 509
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 517
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 526
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataConnectionSettingObserver:Landroid/database/ContentObserver;

    .line 549
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMsicFeatureConfigObserver:Landroid/database/ContentObserver;

    .line 561
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 562
    new-instance v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v7}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 563
    new-instance v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v7}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 566
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v10, "power"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 567
    .local v6, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v7, "ServiceStateTracker"

    invoke-virtual {v6, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 569
    const-string/jumbo v7, "ro.mtk_bsp_package"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 572
    :try_start_0
    const-class v7, Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 571
    invoke-static {v7, v10}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/common/telephony/IServiceStateExt;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0xd

    invoke-interface {v7, p0, v10, v13}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 579
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0, v8, v13}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 581
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0, v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 582
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0xb

    invoke-interface {v7, p0, v10, v13}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 583
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x17

    invoke-interface {v7, p0, v10, v13}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 586
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x66

    invoke-interface {v7, p0, v10, v13}, Lcom/android/internal/telephony/CommandsInterface;->registerForPsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 587
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x65

    invoke-interface {v7, p0, v10, v13}, Lcom/android/internal/telephony/CommandsInterface;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 590
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v7}, Lcom/mediatek/common/telephony/IServiceStateExt;->isImeiLocked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 591
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x67

    const/4 v11, 0x0

    invoke-interface {v7, p0, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForIMEILock(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 597
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x6a

    invoke-interface {v7, p0, v10, v13}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 598
    const-string/jumbo v7, "ro.mtk_ims_support"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 599
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x6f

    invoke-interface {v7, p0, v10, v13}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsDisable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 600
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x70

    invoke-interface {v7, p0, v10, v13}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 602
    :cond_2
    const-string/jumbo v7, "ro.mtk_femto_cell_support"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 603
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x6b

    invoke-interface {v7, p0, v10, v13}, Lcom/android/internal/telephony/CommandsInterface;->registerForFemtoCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 604
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->needResumeModem()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 605
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x72

    invoke-interface {v7, p0, v10, v13}, Lcom/android/internal/telephony/CommandsInterface;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 611
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 612
    const-string/jumbo v10, "airplane_mode_on"

    .line 610
    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 613
    .local v0, "airplaneMode":I
    if-gtz v0, :cond_6

    move v7, v8

    :goto_2
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 615
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 616
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 617
    const-string/jumbo v10, "auto_time"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 618
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 616
    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 619
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 620
    const-string/jumbo v10, "auto_time_zone"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 621
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 619
    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 625
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 626
    const-string/jumbo v10, "telephony_misc_feature_config"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 627
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMsicFeatureConfigObserver:Landroid/database/ContentObserver;

    .line 625
    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 630
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 633
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 634
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v10, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 637
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 638
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 639
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v7, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string/jumbo v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string/jumbo v7, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    const-string/jumbo v7, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 652
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 653
    .local v5, "imsfilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "ACTION_IMS_SIMULATE"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 658
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 659
    const-string/jumbo v10, "multi_sim_data_call"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 660
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataConnectionSettingObserver:Landroid/database/ContentObserver;

    .line 658
    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 661
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 662
    const-string/jumbo v10, "mobile_data"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 663
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataConnectionSettingObserver:Landroid/database/ContentObserver;

    .line 661
    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 664
    const-string/jumbo v7, "ro.mtk_bsp_package"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 666
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v7}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 667
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCurrentPhoneDataConnectionOn()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 668
    const/16 v7, 0x69

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 680
    :cond_5
    :goto_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 681
    invoke-direct {p0, v4, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setReceivedNitz(IZ)V

    .line 680
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 573
    .end local v0    # "airplaneMode":I
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "i":I
    .end local v5    # "imsfilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 574
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 592
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 594
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "No isImeiLocked"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "airplaneMode":I
    :cond_6
    move v7, v9

    .line 613
    goto/16 :goto_2

    .line 670
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v5    # "imsfilter":Landroid/content/IntentFilter;
    :cond_7
    const/16 v7, 0x68

    :try_start_3
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 673
    :catch_2
    move-exception v2

    .line 674
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    .line 558
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "i":I
    :cond_8
    return-void
.end method

.method private broadcastHideNetworkState(Ljava/lang/String;I)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 4320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "broadcastHideNetworkUpdate action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4321
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mediatek.intent.action.ACTION_HIDE_NETWORK_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4322
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4323
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4325
    :cond_0
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4326
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4327
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4328
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4319
    return-void
.end method

.method private configModemRemoteSimAccess()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4955
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isUiccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4956
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    .line 4954
    :goto_0
    return-void

    .line 4958
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->configModemStatus(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method private currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 3262
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 3263
    const-string/jumbo v5, "phone"

    .line 3262
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 3264
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v5

    .line 3262
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 3265
    .local v3, "simNumeric":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 3266
    .local v2, "operatorNumeric":Ljava/lang/String;
    const/4 v1, 0x1

    .line 3269
    .local v1, "equalsMcc":Z
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3270
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3269
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3271
    .local v1, "equalsMcc":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "currentMccEqualsSimMcc(): equalsMcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",simNumeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3272
    const-string/jumbo v5, ",operatorNumeric="

    .line 3271
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3275
    .end local v1    # "equalsMcc":Z
    :goto_0
    return v1

    .line 3273
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 9
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 2934
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[NITZ],findTimeZone,offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",dst:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",when:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2935
    move v2, p1

    .line 2936
    .local v2, "rawOffset":I
    if-eqz p2, :cond_0

    .line 2937
    const v6, 0x36ee80

    sub-int/2addr v2, v6

    .line 2939
    :cond_0
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v5

    .line 2940
    .local v5, "zones":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2941
    .local v1, "guess":Ljava/util/TimeZone;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 2942
    .local v0, "d":Ljava/util/Date;
    const/4 v6, 0x0

    array-length v7, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, v5, v6

    .line 2943
    .local v4, "zone":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2944
    .local v3, "tz":Ljava/util/TimeZone;
    invoke-virtual {v3, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    if-ne v8, p1, :cond_2

    .line 2945
    invoke-virtual {v3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v8

    if-ne v8, p2, :cond_2

    .line 2946
    move-object v1, v3

    .line 2947
    .local v1, "guess":Ljava/util/TimeZone;
    const-string/jumbo v6, "[NITZ],find time zone."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2952
    .end local v1    # "guess":Ljava/util/TimeZone;
    .end local v3    # "tz":Ljava/util/TimeZone;
    .end local v4    # "zone":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 2942
    .local v1, "guess":Ljava/util/TimeZone;
    .restart local v3    # "tz":Ljava/util/TimeZone;
    .restart local v4    # "zone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3634
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3635
    const-string/jumbo v4, "auto_time"

    .line 3634
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 3636
    :catch_0
    move-exception v0

    .line 3637
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method private getAutoTimeZone()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3643
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3644
    const-string/jumbo v4, "auto_time_zone"

    .line 3643
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 3645
    :catch_0
    move-exception v0

    .line 3646
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method private getDstForMcc(IJ)I
    .locals 8
    .param p1, "mcc"    # I
    .param p2, "when"    # J

    .prologue
    .line 4547
    const/4 v1, 0x0

    .line 4549
    .local v1, "dst":I
    if-eqz p1, :cond_0

    .line 4550
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v4

    .line 4551
    .local v4, "tzId":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 4552
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 4553
    .local v3, "timeZone":Ljava/util/TimeZone;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 4554
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 4555
    .local v2, "isInDaylightTime":Z
    if-eqz v2, :cond_0

    .line 4556
    const/4 v1, 0x1

    .line 4557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[NITZ] getDstForMcc: dst="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4562
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "isInDaylightTime":Z
    .end local v3    # "timeZone":Ljava/util/TimeZone;
    .end local v4    # "tzId":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private getEINFO(I)V
    .locals 4
    .param p1, "eventId"    # I

    .prologue
    .line 4843
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "AT+EINFO?"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "+EINFO"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4844
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4843
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 4845
    const-string/jumbo v0, "getEINFO for EMMRRS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4842
    return-void
.end method

.method private getMobileCountryCode()I
    .locals 6

    .prologue
    .line 4566
    const/4 v2, 0x0

    .line 4568
    .local v2, "mcc":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 4569
    .local v3, "operatorNumeric":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 4571
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4579
    :cond_0
    :goto_0
    return v2

    .line 4574
    :catch_0
    move-exception v1

    .line 4575
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "countryCodeForMcc error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4572
    .end local v1    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 4573
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "countryCodeForMcc error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 2924
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 2925
    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 2927
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 2929
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2930
    return-object v0

    .line 2927
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2929
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static getPhoneInstanceCount()I
    .locals 1

    .prologue
    .line 732
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 735
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method private getReceivedNitz()Z
    .locals 2

    .prologue
    .line 5100
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 5101
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sReceiveNitz:[Z

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    aget-boolean v0, v0, v1

    return v0

    .line 5102
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 5103
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sReceiveNitz:[Z

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    return v0

    .line 5105
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sReceiveNitz:[Z

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method private getSIMOperatorNumeric()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3128
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3132
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_2

    .line 3133
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3137
    .local v1, "mccmnc":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3138
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 3139
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3144
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 3140
    .restart local v0    # "imsi":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get MCC/MNC from IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3146
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private getTimeZonesByMcc(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 4606
    const/4 v1, 0x0

    .line 4608
    .local v1, "tz":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdByMcc:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 4609
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdByMcc:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4610
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdByMcc:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v1, v2, v4

    .line 4611
    .local v1, "tz":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uses Timezone of GsmSST by mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdByMcc:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4615
    .end local v1    # "tz":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 4608
    .local v1, "tz":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTimeZonesWithCapitalCity(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 5
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4586
    const/4 v1, 0x0

    .line 4589
    .local v1, "tz":Ljava/util/TimeZone;
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    if-nez v2, :cond_2

    .line 4590
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 4591
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4592
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 4593
    .local v1, "tz":Ljava/util/TimeZone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uses TimeZone of Capital City:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4601
    .end local v0    # "i":I
    .end local v1    # "tz":Ljava/util/TimeZone;
    :cond_0
    :goto_1
    return-object v1

    .line 4590
    .restart local v0    # "i":I
    .local v1, "tz":Ljava/util/TimeZone;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4598
    .end local v0    # "i":I
    :cond_2
    const-string/jumbo v2, "don\'t udpate with capital city, cause we have received nitz"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 3819
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    .line 3820
    const/4 v2, 0x1

    .line 3819
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method private handlePsRegNotification(II)V
    .locals 6
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v5, 0x0

    .line 4782
    const/4 v0, 0x0

    .line 4783
    .local v0, "hasGprsAttached":Z
    const/4 v1, 0x0

    .line 4784
    .local v1, "hasGprsDetached":Z
    const/4 v2, 0x0

    .line 4786
    .local v2, "specificNotify":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "old:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,mPsRegState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",new:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4790
    if-eqz p1, :cond_7

    .line 4791
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    if-nez v3, :cond_6

    const/4 v0, 0x1

    .line 4794
    :goto_0
    if-nez p1, :cond_9

    .line 4795
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    if-eqz v3, :cond_8

    const/4 v1, 0x1

    .line 4797
    :goto_1
    if-eqz v0, :cond_0

    .line 4798
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4799
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 4800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLastPSRegisteredPLMN= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4801
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bHasDetachedDuringPolling:Z

    .line 4804
    :cond_0
    if-eqz v1, :cond_1

    .line 4805
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4810
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    if-eqz v3, :cond_b

    .line 4811
    if-nez p2, :cond_a

    const/4 v0, 0x1

    .line 4814
    :goto_2
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    if-nez v3, :cond_d

    .line 4815
    if-eqz p2, :cond_c

    const/4 v1, 0x1

    .line 4818
    :goto_3
    if-nez v0, :cond_2

    .line 4819
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bHasDetachedDuringPolling:Z

    .line 4818
    if-eqz v3, :cond_2

    .line 4819
    if-nez p2, :cond_2

    .line 4822
    const/4 v2, 0x1

    .line 4823
    const-string/jumbo v3, "need to compensate for notifying"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4826
    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_4

    .line 4827
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4828
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 4829
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLastPSRegisteredPLMN= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4832
    :cond_4
    if-eqz v1, :cond_5

    .line 4833
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4836
    :cond_5
    iput p2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    .line 4837
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bHasDetachedDuringPolling:Z

    .line 4780
    return-void

    .line 4791
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 4790
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 4795
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 4794
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 4811
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 4810
    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    .line 4815
    :cond_c
    const/4 v1, 0x0

    goto :goto_3

    .line 4814
    :cond_d
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private isAllowFixTimeZone()Z
    .locals 3

    .prologue
    .line 3622
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3623
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sReceiveNitz:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 3624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has received NITZ!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3625
    const/4 v1, 0x0

    return v1

    .line 3622
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3628
    :cond_1
    const-string/jumbo v1, "Fix time zone allowed"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3629
    const/4 v1, 0x1

    return v1
.end method

.method private isAllowRecoveryOnIvsr(Landroid/os/AsyncResult;)Z
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 4425
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4426
    const-string/jumbo v1, "[isAllowRecoveryOnIvsr] isInCall()=true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4428
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4429
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4430
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4431
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4432
    const/4 v1, 0x0

    return v1

    .line 4434
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const-string/jumbo v1, "isAllowRecoveryOnIvsr() return true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4435
    const/4 v1, 0x1

    return v1
.end method

.method private isCurrentPhoneDataConnectionOn()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4857
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 4858
    .local v0, "defaultDataSubId":I
    const/4 v2, 0x1

    .line 4862
    .local v2, "userDataEnabled":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4863
    const-string/jumbo v4, "mobile_data"

    .line 4861
    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getIntWithSubId(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v5, :cond_0

    const/4 v2, 0x1

    .line 4867
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userDataEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", defaultDataSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4868
    if-eqz v2, :cond_1

    .line 4869
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 4868
    if-ne v0, v3, :cond_1

    .line 4870
    return v5

    .line 4861
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 4864
    :catch_0
    move-exception v1

    .line 4865
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCurrentPhoneDataConnectionOn: SettingNofFoundException snfe="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4872
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private isGprsConsistent(II)Z
    .locals 2
    .param p1, "dataRegState"    # I
    .param p2, "voiceRegState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2916
    if-nez p2, :cond_0

    .line 2917
    if-nez p1, :cond_1

    .line 2916
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2917
    goto :goto_0
.end method

.method private isInSvlteMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4974
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4975
    return v2

    .line 4978
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    .line 4979
    .local v0, "phoneId":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 4980
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 4981
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 4983
    :cond_2
    return v2
.end method

.method private isOp01Support()Z
    .locals 2

    .prologue
    .line 5172
    const-string/jumbo v1, "ro.operator.optr"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5173
    .local v0, "optr":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5174
    const/4 v1, 0x1

    return v1

    .line 5176
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z
    .locals 8
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v4, 0x0

    .line 3289
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 3290
    .local v2, "operatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3291
    const v5, 0x1070036

    .line 3290
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3293
    .local v1, "numericArray":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOperatorConsideredNonRoaming operatorNumeric= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3294
    const-string/jumbo v5, ",legnth= "

    .line 3293
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3294
    array-length v5, v1

    .line 3293
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3296
    array-length v3, v1

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 3297
    :cond_0
    return v4

    .line 3300
    :cond_1
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v1, v3

    .line 3301
    .local v0, "numeric":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isOperatorConsideredNonRoaming numeric= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3302
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3303
    const-string/jumbo v3, "isOperatorConsideredNonRoaming return true"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3304
    const/4 v3, 0x1

    return v3

    .line 3300
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3307
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_3
    return v4
.end method

.method private isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z
    .locals 8
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v4, 0x0

    .line 3311
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 3312
    .local v2, "operatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3313
    const v5, 0x1070037

    .line 3312
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3315
    .local v1, "numericArray":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOperatorConsideredRoaming operatorNumeric= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3316
    const-string/jumbo v5, ",legnth= "

    .line 3315
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3316
    array-length v5, v1

    .line 3315
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3318
    array-length v3, v1

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 3319
    :cond_0
    return v4

    .line 3322
    :cond_1
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v1, v3

    .line 3323
    .local v0, "numeric":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isOperatorConsideredRoaming numeric= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3324
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3325
    const-string/jumbo v3, "isOperatorConsideredRoaming return true"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3326
    const/4 v3, 0x1

    return v3

    .line 3322
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3329
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_3
    return v4
.end method

.method private isSameNamedOperators(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 3240
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 3241
    const-string/jumbo v6, "phone"

    .line 3240
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 3242
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v6

    .line 3240
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v4

    .line 3244
    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 3245
    .local v2, "onsl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 3247
    .local v3, "onss":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3248
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3250
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSameNamedOperators(): onsl="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",onss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",spn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3252
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v0, :cond_2

    :goto_2
    return v1

    .line 3247
    :cond_0
    const/4 v0, 0x0

    .local v0, "equalsOnsl":Z
    goto :goto_0

    .line 3248
    .end local v0    # "equalsOnsl":Z
    :cond_1
    const/4 v1, 0x0

    .local v1, "equalsOnss":Z
    goto :goto_1

    .line 3252
    .end local v1    # "equalsOnss":Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private static isUiccCard()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4940
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4941
    .local v1, "cardType":Ljava/lang/String;
    const-string/jumbo v3, "GsmSST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUiccCard cardType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4942
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4943
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 4944
    const-string/jumbo v3, "USIM"

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4945
    const-string/jumbo v3, "GsmSST"

    const-string/jumbo v4, "isUiccCard: contain USIM"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4946
    const/4 v3, 0x1

    return v3

    .line 4943
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4949
    :cond_1
    const-string/jumbo v3, "GsmSST"

    const-string/jumbo v4, "isUiccCard: not contain USIM"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4950
    return v6
.end method

.method private needResumeModem()Z
    .locals 1

    .prologue
    .line 5165
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOp01Support()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5166
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5168
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private notifyServiceStateChanged()V
    .locals 2

    .prologue
    .line 4987
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyServiceStateChanged mLteSST = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4989
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    if-eqz v0, :cond_0

    .line 4990
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChangedPForRegistrants(Landroid/telephony/ServiceState;)V

    .line 4991
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 4986
    :cond_0
    :goto_0
    return-void

    .line 4994
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Broadcasting ServiceState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4995
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0
.end method

.method private notifySignalStrengthChanged(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v2, 0x1

    .line 5000
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGSMSignalStrengthResult mLteSST = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5002
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    if-eqz v0, :cond_0

    .line 5003
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrength(Landroid/os/AsyncResult;Z)V

    .line 5004
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->onGSMSignalStrengthResult(Landroid/telephony/SignalStrength;)Z

    .line 4999
    :cond_0
    :goto_0
    return-void

    .line 5007
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    goto :goto_0
.end method

.method private onFemtoCellInfoResult(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 4216
    const/4 v10, 0x0

    .line 4218
    .local v10, "isCsgCell":I
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 4219
    :cond_0
    const-string/jumbo v0, "onFemtoCellInfo exception"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4214
    :cond_1
    :goto_0
    return-void

    .line 4221
    :cond_2
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    .line 4223
    .local v8, "info":[Ljava/lang/String;
    array-length v0, v8

    if-lez v0, :cond_1

    .line 4225
    const/4 v0, 0x0

    aget-object v0, v8, v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 4226
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFemtocellDomain:I

    .line 4227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFemtoCellInfo: mFemtocellDomain set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFemtocellDomain:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4230
    :cond_3
    const/4 v0, 0x5

    aget-object v0, v8, v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 4231
    const/4 v0, 0x5

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4234
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFemtoCellInfo: domain= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFemtocellDomain:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",isCsgCell= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4236
    const/4 v0, 0x1

    if-ne v10, v0, :cond_7

    .line 4237
    const/4 v0, 0x6

    aget-object v0, v8, v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 4238
    const/4 v0, 0x6

    aget-object v0, v8, v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    .line 4239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFemtoCellInfo: mCsgId set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4242
    :cond_5
    const/16 v0, 0x8

    aget-object v0, v8, v0

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 4243
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v2, v8, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 4244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFemtoCellInfo: mHhbName set from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x8

    aget-object v2, v8, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4254
    :goto_1
    const/4 v0, 0x1

    aget-object v0, v8, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 4255
    const/16 v0, 0x9

    aget-object v0, v8, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 4256
    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4257
    .local v12, "state":I
    const/16 v0, 0x9

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4258
    .local v6, "cause":I
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 4260
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v0, v12, v6}, Lcom/mediatek/common/telephony/IServiceStateExt;->needIgnoreFemtocellUpdate(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needIgnoreFemtocellUpdate due to state= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",cause= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4264
    return-void

    .line 4246
    .end local v6    # "cause":I
    .end local v12    # "state":I
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 4247
    const-string/jumbo v0, "onFemtoCellInfo: mHhbName is not available ,set to null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4250
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    .line 4251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 4252
    const-string/jumbo v0, "onFemtoCellInfo: csgId and hnbName are cleared"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4266
    .restart local v6    # "cause":I
    .restart local v12    # "state":I
    :catch_0
    move-exception v7

    .line 4267
    .local v7, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 4271
    .end local v6    # "cause":I
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "state":I
    :cond_8
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4272
    .local v9, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    invoke-static {v9, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4274
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 4275
    const/high16 v0, 0x20000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4278
    :cond_9
    const-string/jumbo v0, "showSpn"

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4279
    const-string/jumbo v0, "spn"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4280
    const-string/jumbo v0, "showPlmn"

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4281
    const-string/jumbo v0, "plmn"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4283
    const-string/jumbo v0, "hnbName"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4284
    const-string/jumbo v0, "csgId"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4285
    const-string/jumbo v0, "domain"

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFemtocellDomain:I

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4287
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4289
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    .line 4290
    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 4291
    .local v3, "plmn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 4292
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4294
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->needToShowCsgId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 4309
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 4310
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 4309
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v11

    .line 4311
    .local v11, "setResult":Z
    if-nez v11, :cond_1

    .line 4312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpnUpdatePending:Z

    goto/16 :goto_0

    .line 4298
    .end local v11    # "setResult":Z
    :catch_1
    move-exception v7

    .line 4299
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 4302
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 4305
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 4306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private onInvalidSimInfoReceived(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4334
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 4335
    .local v0, "InvalidSimInfo":[Ljava/lang/String;
    aget-object v3, v0, v7

    .line 4336
    .local v3, "plmn":Ljava/lang/String;
    aget-object v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4337
    .local v2, "cs_invalid":I
    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4338
    .local v4, "ps_invalid":I
    aget-object v6, v0, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4339
    .local v1, "cause":I
    const/4 v5, -0x1

    .line 4342
    .local v5, "testMode":I
    const-string/jumbo v6, "gsm.gcf.testmode"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 4346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onInvalidSimInfoReceived testMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " cause:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " cs_invalid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4347
    const-string/jumbo v7, " ps_invalid:"

    .line 4346
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4347
    const-string/jumbo v7, " plmn:"

    .line 4346
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4348
    const-string/jumbo v7, " mEverIVSR:"

    .line 4346
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4348
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverIVSR:Z

    .line 4346
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4351
    if-eqz v5, :cond_0

    .line 4352
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "InvalidSimInfo received during test mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4353
    return-void

    .line 4358
    :cond_0
    if-ne v2, v9, :cond_1

    .line 4359
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCsInvalidCard:Z

    .line 4367
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceCapable:Z

    if-eqz v6, :cond_2

    .line 4368
    if-ne v2, v9, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 4369
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 4368
    if-eqz v6, :cond_2

    .line 4370
    const-string/jumbo v6, "InvalidSimInfo set TRM due to CS invalid"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4371
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setEverIVSR(Z)V

    .line 4372
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 4373
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 4374
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6, v10, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTrm(ILandroid/os/Message;)V

    .line 4375
    return-void

    .line 4381
    :cond_2
    if-ne v4, v9, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isAllowRecoveryOnIvsr(Landroid/os/AsyncResult;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4382
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 4381
    if-eqz v6, :cond_3

    .line 4386
    const-string/jumbo v6, "InvalidSimInfo set TRM due to PS invalid "

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4387
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setEverIVSR(Z)V

    .line 4388
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 4389
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 4390
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6, v10, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTrm(ILandroid/os/Message;)V

    .line 4391
    return-void

    .line 4333
    :cond_3
    return-void
.end method

.method private onNetworkStateChangeResult(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4015
    const/4 v6, -0x1

    .line 4016
    .local v6, "state":I
    const/4 v5, -0x1

    .line 4017
    .local v5, "lac":I
    const/4 v2, -0x1

    .line 4018
    .local v2, "cid":I
    const/4 v0, -0x1

    .line 4019
    .local v0, "Act":I
    const/4 v1, -0x1

    .line 4023
    .local v1, "cause":I
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v7, :cond_2

    .line 4024
    :cond_0
    const-string/jumbo v7, "onNetworkStateChangeResult exception"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4131
    :cond_1
    :goto_0
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v7

    if-nez v7, :cond_13

    .line 4132
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrCellLac:I

    .line 4133
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrCellCid:I

    .line 4138
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "avatar, mLastCellLac = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCellLac:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mLastCellCid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCellCid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4141
    return-void

    .line 4026
    :cond_2
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 4028
    .local v4, "info":[Ljava/lang/String;
    array-length v7, v4

    if-lez v7, :cond_12

    .line 4030
    aget-object v7, v4, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4032
    aget-object v7, v4, v9

    if-eqz v7, :cond_3

    aget-object v7, v4, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 4033
    aget-object v7, v4, v9

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 4036
    :cond_3
    aget-object v7, v4, v10

    if-eqz v7, :cond_6

    aget-object v7, v4, v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 4038
    aget-object v7, v4, v10

    const-string/jumbo v8, "FFFFFFFF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, v4, v10

    const-string/jumbo v8, "ffffffff"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4039
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4040
    const-string/jumbo v7, "0000ffff"

    aput-object v7, v4, v10

    .line 4042
    :cond_5
    aget-object v7, v4, v10

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 4045
    :cond_6
    aget-object v7, v4, v11

    if-eqz v7, :cond_7

    aget-object v7, v4, v11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 4046
    aget-object v7, v4, v11

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4049
    :cond_7
    const/4 v7, 0x4

    aget-object v7, v4, v7

    if-eqz v7, :cond_8

    const/4 v7, 0x4

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 4050
    const/4 v7, 0x4

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4053
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onNetworkStateChangeResult state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " lac:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4054
    const-string/jumbo v8, " Act:"

    .line 4053
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4054
    const-string/jumbo v8, " cause:"

    .line 4053
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4057
    const-string/jumbo v7, "ro.mtk_bsp_package"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 4059
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 4060
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v8

    .line 4059
    invoke-interface {v7, v8, v6, v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->needIgnoredState(III)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 4066
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onNetworkStateChangeResult isCsInvalidCard:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCsInvalidCard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4067
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCsInvalidCard:Z

    if-nez v7, :cond_a

    .line 4068
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    if-nez v7, :cond_9

    .line 4069
    const-string/jumbo v7, "start"

    .line 4070
    const/4 v8, 0x1

    .line 4069
    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->broadcastHideNetworkState(Ljava/lang/String;I)V

    .line 4072
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_b

    .line 4073
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    .line 4074
    const/16 v8, 0xb

    .line 4073
    if-eq v7, v8, :cond_b

    .line 4075
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    .line 4081
    :cond_a
    :goto_2
    return-void

    .line 4077
    :cond_b
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    .line 4078
    const-string/jumbo v7, "Force dontUpdateNetworkStateFlag = false"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4089
    :catch_0
    move-exception v3

    .line 4090
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 4092
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_3
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverPollSignalStrength:Z

    if-nez v7, :cond_c

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    if-nez v7, :cond_c

    .line 4093
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v7

    if-nez v7, :cond_c

    .line 4094
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOp01Support()Z

    move-result v7

    .line 4092
    if-eqz v7, :cond_c

    .line 4095
    const-string/jumbo v7, "Force Poll SignalStrength ECSQ, Only Once Here"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4096
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x74

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 4097
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverPollSignalStrength:Z

    .line 4103
    :cond_c
    const/4 v7, -0x1

    if-eq v5, v7, :cond_e

    const/4 v7, -0x1

    if-eq v2, v7, :cond_e

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v7

    if-ne v7, v9, :cond_e

    .line 4106
    const v7, 0xfffe

    if-eq v5, v7, :cond_d

    const v7, 0xfffffff

    if-ne v2, v7, :cond_11

    .line 4107
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unknown lac:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " or cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4114
    :cond_e
    :goto_4
    const-string/jumbo v7, "ro.mtk_bsp_package"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4117
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v7, v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->needRejectCauseNotification(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4118
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRejectCauseNotification(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 4120
    :catch_1
    move-exception v3

    .line 4121
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 4083
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_f
    :try_start_2
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    if-eqz v7, :cond_10

    .line 4084
    const-string/jumbo v7, "stop"

    .line 4085
    const/4 v8, 0x1

    .line 4084
    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->broadcastHideNetworkState(Ljava/lang/String;I)V

    .line 4087
    :cond_10
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 4109
    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mNewCellLoc Updated, lac:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " and cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4110
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v7, v5, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    goto :goto_4

    .line 4126
    :cond_12
    const-string/jumbo v7, "onNetworkStateChangeResult length zero"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4135
    .end local v4    # "info":[Ljava/lang/String;
    :cond_13
    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrCellLac:I

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCellLac:I

    .line 4136
    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrCellCid:I

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCellCid:I

    goto/16 :goto_1
.end method

.method private onPsNetworkStateChangeResult(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 4763
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 4764
    :cond_0
    const-string/jumbo v2, "onPsNetworkStateChangeResult exception"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4759
    :cond_1
    :goto_0
    return-void

    .line 4766
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 4767
    .local v0, "info":[I
    aget v2, v0, v4

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v1

    .line 4768
    .local v1, "newUrcState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPsRegState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",new:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4770
    aget v2, v0, v4

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    .line 4772
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    if-nez v2, :cond_1

    .line 4773
    if-eqz v1, :cond_1

    .line 4774
    const-string/jumbo v2, "set flag for ever detach, may notify attach later"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4775
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->bHasDetachedDuringPolling:Z

    goto :goto_0
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v9, 0x3ed

    const/16 v8, 0x3ec

    const/16 v7, 0x3eb

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2981
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 2983
    .local v1, "newRs":Lcom/android/internal/telephony/RestrictedState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRestrictedStateChanged: E rs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2985
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 2986
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 2987
    .local v0, "ints":[I
    aget v2, v0, v5

    .line 2990
    .local v2, "state":I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_4

    .line 2991
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_5

    move v3, v4

    .line 2989
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 2993
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v3, v6, :cond_9

    .line 2995
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_6

    .line 2996
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_7

    move v3, v4

    .line 2994
    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 2998
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_8

    move v3, v4

    .line 2997
    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 3013
    :cond_0
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRestrictedStateChanged: new rs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3015
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3016
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3017
    const/16 v3, 0x3e9

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 3032
    :cond_1
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3033
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3035
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 3080
    :cond_2
    :goto_5
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 3082
    .end local v0    # "ints":[I
    .end local v2    # "state":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestrictedStateChanged: X rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2980
    return-void

    .restart local v0    # "ints":[I
    .restart local v2    # "state":I
    :cond_4
    move v3, v4

    .line 2990
    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 2991
    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 2995
    goto :goto_1

    :cond_7
    move v3, v5

    .line 2996
    goto :goto_1

    :cond_8
    move v3, v5

    .line 2998
    goto :goto_2

    .line 3000
    :cond_9
    const-string/jumbo v3, "IccCard state Not ready "

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3001
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3002
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_a

    .line 3003
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_a

    .line 3004
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 3007
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3008
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_0

    .line 3009
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    goto/16 :goto_3

    .line 3018
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3019
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v3, v3, v5

    if-eqz v3, :cond_c

    .line 3020
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingPsRestrictDisabledNotify:Z

    goto :goto_4

    .line 3022
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3023
    const/16 v3, 0x3ea

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 3036
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_e

    .line 3038
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 3039
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3041
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3043
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3044
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3055
    :cond_10
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_16

    .line 3056
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    .line 3055
    if-eqz v3, :cond_16

    .line 3057
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_14

    .line 3059
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3045
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_12

    .line 3047
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3048
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3050
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3051
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3053
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3060
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3062
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3063
    :cond_15
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3065
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3068
    :cond_16
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3070
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3071
    :cond_17
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3073
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 3074
    :cond_18
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3076
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5
.end method

.method private pollStateDone()V
    .locals 52

    .prologue
    .line 2335
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "mLastCsNetworkType="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCsNetworkType:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, ", mLastPsNetworkType= "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2336
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPsNetworkType:I

    move/from16 v48, v0

    .line 2335
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2336
    const-string/jumbo v48, ", mNewSS VoiceRadioTechnology= "

    .line 2335
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    .line 2335
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2337
    const-string/jumbo v48, ", mSS VoiceRadioTechnology= "

    .line 2335
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    .line 2335
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2338
    const-string/jumbo v48, ", mNewSS DataRadioTechnology= "

    .line 2335
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    .line 2335
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2339
    const-string/jumbo v48, ", mSS DataRadioTechnology= "

    .line 2335
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    .line 2335
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2343
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCsNetworkType:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_1d

    .line 2344
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPsNetworkType:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_1d

    .line 2345
    const-string/jumbo v47, "pollStateDone(): don\'t change network type and wait for new event"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 2426
    :cond_0
    :goto_0
    sget-boolean v47, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v47, :cond_1

    const-string/jumbo v47, "telephony.test.forceRoaming"

    const/16 v48, 0x0

    invoke-static/range {v47 .. v48}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    if-eqz v47, :cond_1

    .line 2427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2430
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 2431
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->resetServiceStateInIwlanMode()V

    .line 2435
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    .line 2435
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2436
    const-string/jumbo v48, "] newSS=["

    .line 2435
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    .line 2435
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2436
    const-string/jumbo v48, "]"

    .line 2435
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2437
    const-string/jumbo v48, " oldMaxDataCalls="

    .line 2435
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2437
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v48, v0

    .line 2435
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2438
    const-string/jumbo v48, " mNewMaxDataCalls="

    .line 2435
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2438
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v48, v0

    .line 2435
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2439
    const-string/jumbo v48, " oldReasonDataDenied="

    .line 2435
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2439
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v48, v0

    .line 2435
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2440
    const-string/jumbo v48, " mNewReasonDataDenied="

    .line 2435
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v48, v0

    .line 2435
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2445
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsForceSendScreenOnForUpdateNwInfo:Z

    move/from16 v47, v0

    if-eqz v47, :cond_2

    .line 2446
    const-string/jumbo v47, "send screen state OFF to restore format of CREG"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2447
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsForceSendScreenOnForUpdateNwInfo:Z

    .line 2451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v47, v0

    invoke-interface/range {v47 .. v47}, Lcom/android/internal/telephony/CommandsInterface;->getDisplayState()I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_2

    .line 2452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-interface/range {v47 .. v48}, Lcom/android/internal/telephony/CommandsInterface;->sendScreenState(Z)V

    .line 2458
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-eqz v47, :cond_26

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-nez v47, :cond_25

    const/16 v25, 0x1

    .line 2462
    .local v25, "hasRegistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-nez v47, :cond_28

    .line 2463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-eqz v47, :cond_27

    const/16 v20, 0x1

    .line 2466
    .local v20, "hasDeregistered":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    if-eqz v47, :cond_2a

    .line 2467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    if-nez v47, :cond_29

    const/16 v21, 0x1

    .line 2470
    .local v21, "hasGprsAttached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    if-nez v47, :cond_2c

    .line 2471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    if-eqz v47, :cond_2b

    const/16 v22, 0x1

    .line 2474
    .local v22, "hasGprsDetached":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_2d

    const/16 v17, 0x1

    .line 2477
    .local v17, "hasDataRegStateChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_2e

    const/16 v29, 0x1

    .line 2481
    .local v29, "hasVoiceRegStateChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_2f

    const/16 v28, 0x1

    .line 2486
    .local v28, "hasRilVoiceRegStateChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_30

    const/16 v27, 0x1

    .line 2489
    .local v27, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_31

    const/16 v26, 0x1

    .line 2491
    .local v26, "hasRilDataRadioTechnologyChanged":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_32

    const/16 v16, 0x0

    .line 2493
    .local v16, "hasChanged":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v47

    if-nez v47, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v31

    .line 2495
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v47

    if-eqz v47, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v47

    if-eqz v47, :cond_34

    :cond_3
    const/16 v30, 0x0

    .line 2497
    .local v30, "hasVoiceRoamingOff":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v47

    if-nez v47, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v19

    .line 2499
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v47

    if-eqz v47, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v47

    if-eqz v47, :cond_36

    :cond_4
    const/16 v18, 0x0

    .line 2501
    .local v18, "hasDataRoamingOff":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_37

    const/16 v24, 0x0

    .line 2503
    .local v24, "hasLocationChanged":Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_38

    const/16 v23, 0x1

    .line 2506
    .local v23, "hasLacChanged":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v47

    const-string/jumbo v48, "phone"

    invoke-virtual/range {v47 .. v48}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/telephony/TelephonyManager;

    .line 2508
    .local v40, "tm":Landroid/telephony/TelephonyManager;
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "pollStateDone,hasRegistered:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, ",hasDeregistered:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2509
    const-string/jumbo v48, ",hasGprsAttached:"

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2510
    const-string/jumbo v48, ",hasRilVoiceRadioTechnologyChanged:"

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2511
    const-string/jumbo v48, ",hasRilDataRadioTechnologyChanged:"

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2512
    const-string/jumbo v48, ",hasVoiceRegStateChanged:"

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2512
    const-string/jumbo v48, ",hasDataRegStateChanged:"

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2513
    const-string/jumbo v48, ",hasChanged:"

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2513
    const-string/jumbo v48, ",hasVoiceRoamingOn:"

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2514
    const-string/jumbo v48, ",hasVoiceRoamingOff:"

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2515
    const-string/jumbo v48, ",hasDataRoamingOn:"

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2515
    const-string/jumbo v48, ",hasDataRoamingOff:"

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2516
    const-string/jumbo v48, ",hasLocationChanged:"

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2517
    const-string/jumbo v48, ",hasLacChanged:"

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2518
    const-string/jumbo v48, ",sReceiveNitz:"

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2518
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getReceivedNitz()Z

    move-result v48

    .line 2508
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2520
    if-nez v29, :cond_5

    if-eqz v17, :cond_6

    .line 2521
    :cond_5
    const/16 v47, 0x4

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    const/16 v49, 0x0

    aput-object v48, v47, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    const/16 v49, 0x1

    aput-object v48, v47, v49

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    const/16 v49, 0x2

    aput-object v48, v47, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    const/16 v49, 0x3

    aput-object v48, v47, v49

    .line 2521
    const v48, 0xc3c2

    move/from16 v0, v48

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2529
    :cond_6
    if-eqz v27, :cond_8

    .line 2530
    const/4 v10, -0x1

    .line 2531
    .local v10, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v33, v0

    .line 2532
    .local v33, "loc":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v33, :cond_7

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    .line 2537
    :cond_7
    const/16 v47, 0x3

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    const/16 v49, 0x0

    aput-object v48, v47, v49

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    const/16 v49, 0x1

    aput-object v48, v47, v49

    .line 2539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    const/16 v49, 0x2

    aput-object v48, v47, v49

    .line 2537
    const v48, 0xc3cb

    move/from16 v0, v48

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2541
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "RAT switched "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    invoke-static/range {v48 .. v48}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v48

    .line 2541
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2543
    const-string/jumbo v48, " -> "

    .line 2541
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    .line 2544
    invoke-static/range {v48 .. v48}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v48

    .line 2541
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2545
    const-string/jumbo v48, " at cell "

    .line 2541
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2550
    .end local v10    # "cid":I
    .end local v33    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    .line 2551
    const-string/jumbo v48, "airplane_mode_on"

    const/16 v49, 0x0

    .line 2550
    invoke-static/range {v47 .. v49}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v47

    if-eqz v47, :cond_39

    const/4 v8, 0x1

    .line 2552
    .local v8, "airplaneModeOn":Z
    :goto_11
    if-eqz v29, :cond_a

    .line 2553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-nez v47, :cond_9

    .line 2554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-eqz v47, :cond_9

    if-eqz v8, :cond_3a

    .line 2559
    :cond_9
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-nez v47, :cond_a

    .line 2560
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOutOfServiceTime:J

    move-wide/from16 v48, v0

    const-wide/16 v50, 0x0

    cmp-long v47, v48, v50

    if-lez v47, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCellLac:I

    move/from16 v47, v0

    if-lez v47, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCellCid:I

    move/from16 v47, v0

    if-lez v47, :cond_a

    .line 2561
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Avatar data collect, last in service, lac = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCellLac:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, ", cid = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCellCid:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2562
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Avatar data collect, lost signal time =  "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOutOfServiceTime:J

    move-wide/from16 v50, v0

    sub-long v48, v48, v50

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2563
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "2-"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCellLac:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, "-"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCellCid:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->CollectLostServiceInfo(Ljava/lang/String;)V

    .line 2564
    const-wide/16 v48, 0x0

    move-wide/from16 v0, v48

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOutOfServiceTime:J

    .line 2569
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-nez v47, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v47

    if-eqz v47, :cond_b

    .line 2570
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->collectRoamingState()V

    .line 2575
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    .line 2576
    .local v41, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2577
    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2580
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v47

    if-eqz v47, :cond_c

    .line 2581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    move-object/from16 v47, v0

    if-eqz v47, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v47

    .line 2580
    if-eqz v47, :cond_c

    .line 2582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-virtual/range {v47 .. v49}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->updateGsmCdmaServiceState(Landroid/telephony/ServiceState;I)V

    .line 2585
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v38, v0

    .line 2586
    .local v38, "tcl":Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 2587
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 2589
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v47, v0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 2590
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v47, v0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 2592
    if-eqz v27, :cond_d

    .line 2593
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePhoneObject()V

    .line 2596
    :cond_d
    if-eqz v26, :cond_e

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    move-object/from16 v0, v40

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 2600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    .line 2599
    const/16 v48, 0x12

    move/from16 v0, v48

    move/from16 v1, v47

    if-ne v0, v1, :cond_e

    .line 2601
    const-string/jumbo v47, "pollStateDone: IWLAN enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2605
    :cond_e
    if-eqz v25, :cond_f

    .line 2606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 2608
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "mLastRegisteredPLMN= "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2611
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "pollStateDone: registering current mNitzUpdatedTime="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2612
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v48, v0

    .line 2611
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2612
    const-string/jumbo v48, " changing to false"

    .line 2611
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2614
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2617
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I

    move/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_11

    .line 2622
    if-nez v16, :cond_10

    .line 2624
    const-string/jumbo v47, "explict_update_spn trigger to refresh SPN"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2625
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 2627
    :cond_10
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I

    .line 2630
    :cond_11
    if-eqz v16, :cond_14

    .line 2633
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 2640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v47

    move-object/from16 v0, v40

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v37

    .line 2641
    .local v37, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v36

    .line 2642
    .local v36, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v47

    move-object/from16 v0, v40

    move/from16 v1, v47

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 2644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v47

    .line 2643
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2646
    if-eqz v36, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isNumeric(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_3b

    .line 2648
    :cond_12
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_3c

    .line 2649
    const-string/jumbo v47, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v47

    .line 2650
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v47

    const-string/jumbo v48, ""

    move-object/from16 v0, v40

    move/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 2653
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2654
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2801
    :cond_13
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v48

    move-object/from16 v0, v40

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 2803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 2805
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyServiceStateChanged()V

    .line 2823
    .end local v36    # "operatorNumeric":Ljava/lang/String;
    .end local v37    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePsRegNotification(II)V

    .line 2825
    if-nez v17, :cond_15

    if-eqz v26, :cond_16

    .line 2826
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 2829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    .line 2828
    const/16 v48, 0x12

    move/from16 v0, v48

    move/from16 v1, v47

    if-ne v0, v1, :cond_4d

    .line 2830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    const-string/jumbo v48, "iwlanAvailable"

    invoke-virtual/range {v47 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 2851
    :cond_16
    :goto_14
    if-eqz v31, :cond_17

    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2855
    :cond_17
    if-eqz v30, :cond_18

    .line 2856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2859
    :cond_18
    if-eqz v19, :cond_19

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2863
    :cond_19
    if-eqz v18, :cond_51

    .line 2864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2887
    :cond_1a
    :goto_15
    if-eqz v24, :cond_1b

    .line 2888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 2891
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v47

    if-nez v47, :cond_55

    .line 2892
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v47, v0

    if-nez v47, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v47, v0

    if-eqz v47, :cond_54

    .line 2331
    :cond_1c
    :goto_16
    return-void

    .line 2351
    .end local v8    # "airplaneModeOn":Z
    .end local v16    # "hasChanged":Z
    .end local v17    # "hasDataRegStateChanged":Z
    .end local v18    # "hasDataRoamingOff":Z
    .end local v20    # "hasDeregistered":Z
    .end local v21    # "hasGprsAttached":Z
    .end local v22    # "hasGprsDetached":Z
    .end local v23    # "hasLacChanged":Z
    .end local v24    # "hasLocationChanged":Z
    .end local v25    # "hasRegistered":Z
    .end local v26    # "hasRilDataRadioTechnologyChanged":Z
    .end local v27    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v28    # "hasRilVoiceRegStateChanged":Z
    .end local v29    # "hasVoiceRegStateChanged":Z
    .end local v30    # "hasVoiceRoamingOff":Z
    .end local v38    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .end local v40    # "tm":Landroid/telephony/TelephonyManager;
    .end local v41    # "tss":Landroid/telephony/ServiceState;
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsRatDowngrade:Z

    move/from16 v47, v0

    if-eqz v47, :cond_1e

    .line 2352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBackupDataNetworkType:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_1e

    .line 2353
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsRatDowngrade:Z

    .line 2354
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBackupDataNetworkType:I

    .line 2355
    const-string/jumbo v47, "pollStateDone(): mIsRatDowngrade = false"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2360
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-nez v47, :cond_1f

    .line 2361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    if-nez v47, :cond_1f

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    const/16 v48, 0xe

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_1f

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    if-lez v47, :cond_1f

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    const/16 v48, 0xe

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->isVoiceRadioTechnologyHigher(I)Z

    move-result v47

    if-eqz v47, :cond_22

    .line 2373
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->isVoiceRadioTechnologyHigher(I)Z

    move-result v47

    if-eqz v47, :cond_21

    .line 2374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->isVoiceRadioTechnologyHigher(I)Z

    move-result v47

    .line 2373
    if-eqz v47, :cond_21

    .line 2375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    const/16 v48, 0x3

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->isVoiceRadioTechnologyHigher(I)Z

    move-result v47

    if-nez v47, :cond_20

    .line 2376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_21

    .line 2378
    :cond_20
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsRatDowngrade:Z

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBackupDataNetworkType:I

    .line 2383
    const-string/jumbo v47, "pollStateDone(): mIsRatDowngrade = true"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2387
    :cond_21
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCsNetworkType:I

    .line 2388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPsNetworkType:I

    .line 2390
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsRatDowngrade:Z

    move/from16 v47, v0

    if-eqz v47, :cond_24

    .line 2393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    if-lez v47, :cond_0

    .line 2396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    .line 2397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    .line 2396
    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSameRadioTechnologyMode(II)Z

    move-result v47

    if-nez v47, :cond_23

    .line 2401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    goto/16 :goto_0

    .line 2365
    :cond_22
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsRatDowngrade:Z

    .line 2368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBackupDataNetworkType:I

    .line 2370
    const-string/jumbo v47, "pollStateDone(): CS is registered on 3/2G and PS is registered on 4G, set mIsRatDowngrade=true"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2404
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    .line 2405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    .line 2404
    move/from16 v0, v47

    move/from16 v1, v48

    if-le v0, v1, :cond_0

    .line 2406
    const-string/jumbo v47, "CS and PS are registered on same mode and CS higher then PS"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    goto/16 :goto_0

    .line 2415
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->isVoiceRadioTechnologyHigher(I)Z

    move-result v47

    if-nez v47, :cond_0

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 2418
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "set RilVoiceRadioTechnology as:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2459
    :cond_25
    const/16 v25, 0x0

    .restart local v25    # "hasRegistered":Z
    goto/16 :goto_1

    .line 2458
    .end local v25    # "hasRegistered":Z
    :cond_26
    const/16 v25, 0x0

    .restart local v25    # "hasRegistered":Z
    goto/16 :goto_1

    .line 2463
    :cond_27
    const/16 v20, 0x0

    .restart local v20    # "hasDeregistered":Z
    goto/16 :goto_2

    .line 2462
    .end local v20    # "hasDeregistered":Z
    :cond_28
    const/16 v20, 0x0

    .restart local v20    # "hasDeregistered":Z
    goto/16 :goto_2

    .line 2467
    :cond_29
    const/16 v21, 0x0

    .restart local v21    # "hasGprsAttached":Z
    goto/16 :goto_3

    .line 2466
    .end local v21    # "hasGprsAttached":Z
    :cond_2a
    const/16 v21, 0x0

    .restart local v21    # "hasGprsAttached":Z
    goto/16 :goto_3

    .line 2471
    :cond_2b
    const/16 v22, 0x0

    .restart local v22    # "hasGprsDetached":Z
    goto/16 :goto_4

    .line 2470
    .end local v22    # "hasGprsDetached":Z
    :cond_2c
    const/16 v22, 0x0

    .restart local v22    # "hasGprsDetached":Z
    goto/16 :goto_4

    .line 2474
    :cond_2d
    const/16 v17, 0x0

    .restart local v17    # "hasDataRegStateChanged":Z
    goto/16 :goto_5

    .line 2477
    :cond_2e
    const/16 v29, 0x0

    .restart local v29    # "hasVoiceRegStateChanged":Z
    goto/16 :goto_6

    .line 2481
    :cond_2f
    const/16 v28, 0x0

    .restart local v28    # "hasRilVoiceRegStateChanged":Z
    goto/16 :goto_7

    .line 2486
    :cond_30
    const/16 v27, 0x0

    .restart local v27    # "hasRilVoiceRadioTechnologyChanged":Z
    goto/16 :goto_8

    .line 2489
    :cond_31
    const/16 v26, 0x0

    .restart local v26    # "hasRilDataRadioTechnologyChanged":Z
    goto/16 :goto_9

    .line 2491
    :cond_32
    const/16 v16, 0x1

    .restart local v16    # "hasChanged":Z
    goto/16 :goto_a

    .line 2493
    :cond_33
    const/16 v31, 0x0

    .local v31, "hasVoiceRoamingOn":Z
    goto/16 :goto_b

    .line 2495
    .end local v31    # "hasVoiceRoamingOn":Z
    :cond_34
    const/16 v30, 0x1

    .restart local v30    # "hasVoiceRoamingOff":Z
    goto/16 :goto_c

    .line 2497
    :cond_35
    const/16 v19, 0x0

    .local v19, "hasDataRoamingOn":Z
    goto/16 :goto_d

    .line 2499
    .end local v19    # "hasDataRoamingOn":Z
    :cond_36
    const/16 v18, 0x1

    .restart local v18    # "hasDataRoamingOff":Z
    goto/16 :goto_e

    .line 2501
    :cond_37
    const/16 v24, 0x1

    .restart local v24    # "hasLocationChanged":Z
    goto/16 :goto_f

    .line 2503
    :cond_38
    const/16 v23, 0x0

    .restart local v23    # "hasLacChanged":Z
    goto/16 :goto_10

    .line 2550
    .restart local v40    # "tm":Landroid/telephony/TelephonyManager;
    :cond_39
    const/4 v8, 0x0

    .restart local v8    # "airplaneModeOn":Z
    goto/16 :goto_11

    .line 2555
    :cond_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    move-wide/from16 v0, v48

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOutOfServiceTime:J

    .line 2556
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Avatar data collect, Out of service, lac = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCellLac:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, ", cid = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastCellCid:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 2647
    .restart local v36    # "operatorNumeric":Ljava/lang/String;
    .restart local v37    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v38    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v41    # "tss":Landroid/telephony/ServiceState;
    :cond_3b
    const-string/jumbo v47, "operatorNumeric is Invalid value, don\'t update timezone"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2656
    :cond_3c
    const-string/jumbo v32, ""

    .line 2657
    .local v32, "iso":Ljava/lang/String;
    const-string/jumbo v34, ""

    .line 2659
    .local v34, "mcc":Ljava/lang/String;
    const/16 v47, 0x0

    const/16 v48, 0x3

    :try_start_0
    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 2660
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    invoke-static/range {v47 .. v47}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v32

    .line 2667
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v47

    move-object/from16 v0, v40

    move/from16 v1, v47

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 2668
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2670
    const/16 v45, 0x0

    .line 2672
    .local v45, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v47, v0

    if-nez v47, :cond_3d

    const-string/jumbo v47, "000"

    move-object/from16 v0, v34

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_3f

    .line 2710
    .end local v45    # "zone":Ljava/util/TimeZone;
    :cond_3d
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    .line 2711
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v48, v0

    .line 2710
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v47

    if-eqz v47, :cond_13

    .line 2715
    const-string/jumbo v47, "persist.sys.timezone"

    invoke-static/range {v47 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 2717
    .local v46, "zoneName":Ljava/lang/String;
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "pollStateDone: fix time zone zoneName=\'"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2718
    const-string/jumbo v48, "\' mZoneOffset="

    .line 2717
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2718
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v48, v0

    .line 2717
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2718
    const-string/jumbo v48, " mZoneDst="

    .line 2717
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2718
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v48, v0

    .line 2717
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2719
    const-string/jumbo v48, " iso-cc=\'"

    .line 2717
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2720
    const-string/jumbo v48, "\' iso-cc-idx="

    .line 2717
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2720
    sget-object v48, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v48

    .line 2717
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2723
    const-string/jumbo v47, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_46

    .line 2726
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v50, v0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v45

    .line 2727
    .local v45, "zone":Ljava/util/TimeZone;
    const-string/jumbo v47, "pollStateDone: using NITZ TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2787
    :goto_1a
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 2789
    if-eqz v45, :cond_4c

    .line 2790
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "pollStateDone: zone != null zone.getID="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v45 .. v45}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2791
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v47

    if-eqz v47, :cond_3e

    .line 2792
    invoke-virtual/range {v45 .. v45}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2794
    :cond_3e
    invoke-virtual/range {v45 .. v45}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2663
    .end local v45    # "zone":Ljava/util/TimeZone;
    .end local v46    # "zoneName":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 2664
    .local v15, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 2661
    .end local v15    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v14

    .line 2662
    .local v14, "ex":Ljava/lang/NumberFormatException;
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 2672
    .end local v14    # "ex":Ljava/lang/NumberFormatException;
    .local v45, "zone":Ljava/util/TimeZone;
    :cond_3f
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v47

    if-nez v47, :cond_3d

    .line 2673
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v47

    .line 2672
    if-eqz v47, :cond_3d

    .line 2677
    const-string/jumbo v47, "telephony.test.ignore.nitz"

    const/16 v48, 0x0

    .line 2676
    invoke-static/range {v47 .. v48}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    if-eqz v47, :cond_42

    .line 2678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v48

    const-wide/16 v50, 0x1

    and-long v48, v48, v50

    const-wide/16 v50, 0x0

    cmp-long v47, v48, v50

    if-nez v47, :cond_41

    const/16 v39, 0x1

    .line 2680
    .local v39, "testOneUniqueOffsetPath":Z
    :goto_1b
    invoke-static/range {v32 .. v32}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v44

    .line 2681
    .local v44, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_40

    if-eqz v39, :cond_43

    .line 2682
    :cond_40
    const/16 v47, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    .end local v45    # "zone":Ljava/util/TimeZone;
    check-cast v45, Ljava/util/TimeZone;

    .line 2684
    .local v45, "zone":Ljava/util/TimeZone;
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "pollStateDone: no nitz but one TZ for iso-cc="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2685
    const-string/jumbo v48, " with zone.getID="

    .line 2684
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2685
    invoke-virtual/range {v45 .. v45}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v48

    .line 2684
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2686
    const-string/jumbo v48, " testOneUniqueOffsetPath="

    .line 2684
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2688
    invoke-virtual/range {v45 .. v45}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 2678
    .end local v39    # "testOneUniqueOffsetPath":Z
    .end local v44    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .local v45, "zone":Ljava/util/TimeZone;
    :cond_41
    const/16 v39, 0x0

    .restart local v39    # "testOneUniqueOffsetPath":Z
    goto :goto_1b

    .line 2676
    .end local v39    # "testOneUniqueOffsetPath":Z
    :cond_42
    const/16 v39, 0x0

    .restart local v39    # "testOneUniqueOffsetPath":Z
    goto :goto_1b

    .line 2691
    .restart local v44    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_43
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-le v0, v1, :cond_45

    .line 2692
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "uniqueZones.size="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " iso= "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2693
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getTimeZonesWithCapitalCity(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v45

    .line 2694
    .local v45, "zone":Ljava/util/TimeZone;
    if-eqz v45, :cond_44

    .line 2695
    invoke-virtual/range {v45 .. v45}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 2697
    :cond_44
    const-string/jumbo v47, "Can\'t find time zone for capital city"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 2702
    .local v45, "zone":Ljava/util/TimeZone;
    :cond_45
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "pollStateDone: there are "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2703
    const-string/jumbo v48, " unique offsets for iso-cc=\'"

    .line 2702
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2704
    const-string/jumbo v48, " testOneUniqueOffsetPath="

    .line 2702
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2705
    const-string/jumbo v48, "\', do nothing"

    .line 2702
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 2728
    .end local v39    # "testOneUniqueOffsetPath":Z
    .end local v44    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .end local v45    # "zone":Ljava/util/TimeZone;
    .restart local v46    # "zoneName":Ljava/lang/String;
    :cond_46
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v47, v0

    if-nez v47, :cond_4b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v47, v0

    if-nez v47, :cond_4b

    .line 2729
    if-eqz v46, :cond_4b

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v47

    if-lez v47, :cond_4b

    .line 2730
    sget-object v47, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v47

    if-gez v47, :cond_4b

    .line 2742
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v45

    .line 2746
    .local v45, "zone":Ljava/util/TimeZone;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isAllowFixTimeZone()Z

    move-result v47

    if-eqz v47, :cond_48

    .line 2748
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getTimeZonesByMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2749
    .local v35, "mccTz":Ljava/lang/String;
    if-nez v35, :cond_47

    .line 2750
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    invoke-static/range {v47 .. v47}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v35

    .line 2751
    :cond_47
    if-eqz v35, :cond_48

    .line 2752
    invoke-static/range {v35 .. v35}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v45

    .line 2753
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "pollStateDone: try to fixTimeZone mcc:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2754
    const-string/jumbo v48, " mccTz:"

    .line 2753
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2754
    const-string/jumbo v48, " zone.getID="

    .line 2753
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2754
    invoke-virtual/range {v45 .. v45}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v48

    .line 2753
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2762
    .end local v35    # "mccTz":Ljava/lang/String;
    :cond_48
    :goto_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v47, v0

    if-eqz v47, :cond_49

    .line 2765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2766
    .local v12, "ctm":J
    move-object/from16 v0, v45

    invoke-virtual {v0, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v42, v0

    .line 2768
    .local v42, "tzOffset":J
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "pollStateDone: tzOffset="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " ltod="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2769
    invoke-static {v12, v13}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v48

    .line 2768
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2771
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v47

    if-eqz v47, :cond_4a

    .line 2772
    sub-long v6, v12, v42

    .line 2773
    .local v6, "adj":J
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "pollStateDone: adj ltod="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2774
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v48

    .line 2773
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2775
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 2781
    .end local v6    # "adj":J
    .end local v12    # "ctm":J
    .end local v42    # "tzOffset":J
    :cond_49
    :goto_1d
    const-string/jumbo v47, "pollStateDone: using default TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 2756
    :catch_2
    move-exception v11

    .line 2757
    .local v11, "e":Ljava/lang/Exception;
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "pollStateDone: parse error: mcc="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 2778
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "ctm":J
    .restart local v42    # "tzOffset":J
    :cond_4a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v48, v0

    sub-long v48, v48, v42

    move-wide/from16 v0, v48

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto :goto_1d

    .line 2783
    .end local v12    # "ctm":J
    .end local v42    # "tzOffset":J
    .end local v45    # "zone":Ljava/util/TimeZone;
    :cond_4b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v50, v0

    move/from16 v0, v47

    move/from16 v1, v48

    move-wide/from16 v2, v50

    move-object/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v45

    .line 2784
    .restart local v45    # "zone":Ljava/util/TimeZone;
    const-string/jumbo v47, "pollStateDone: using getTimeZone(off, dst, time, iso)"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 2796
    :cond_4c
    const-string/jumbo v47, "pollStateDone: zone == null"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2834
    .end local v32    # "iso":Ljava/lang/String;
    .end local v34    # "mcc":Ljava/lang/String;
    .end local v36    # "operatorNumeric":Ljava/lang/String;
    .end local v37    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v45    # "zone":Ljava/util/TimeZone;
    .end local v46    # "zoneName":Ljava/lang/String;
    :cond_4d
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v47

    if-eqz v47, :cond_50

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v47

    if-nez v47, :cond_4e

    .line 2836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v47 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 2838
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v47

    invoke-static/range {v47 .. v47}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v47

    .line 2839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v48, v0

    .line 2838
    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_4f

    .line 2840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v47 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 2842
    :cond_4f
    const-string/jumbo v47, "Do nothing because it is not current PS phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 2846
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v47 .. v48}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 2865
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_53

    .line 2866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_52

    .line 2867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v47

    const/16 v48, 0x5

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_53

    .line 2870
    :cond_52
    :goto_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    move/from16 v47, v0

    const/16 v48, 0x5

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_1a

    .line 2876
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "recover setup data for roaming off. OldDataRegState:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v48

    .line 2876
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2877
    const-string/jumbo v48, " NewDataRegState:"

    .line 2876
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v48

    .line 2876
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2878
    const-string/jumbo v48, " NewRoamingState:"

    .line 2876
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v48

    .line 2876
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2878
    const-string/jumbo v48, " NewDataRoamingState:"

    .line 2876
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2878
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v48, v0

    .line 2876
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2879
    const-string/jumbo v48, " PsRegState:"

    .line 2876
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 2879
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    move/from16 v48, v0

    .line 2876
    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2881
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    .line 2882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v47

    if-nez v47, :cond_1a

    .line 2883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_15

    .line 2868
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v47

    const/16 v48, 0x5

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_1a

    .line 2869
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v47, v0

    if-nez v47, :cond_1a

    goto/16 :goto_1e

    .line 2893
    :cond_54
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 2896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    .line 2897
    const-string/jumbo v48, "gprs_register_check_period_ms"

    .line 2898
    const v49, 0xea60

    .line 2895
    invoke-static/range {v47 .. v49}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 2899
    .local v9, "check_period":I
    const/16 v47, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v47

    .line 2900
    int-to-long v0, v9

    move-wide/from16 v48, v0

    .line 2899
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_16

    .line 2903
    .end local v9    # "check_period":I
    :cond_55
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_16
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 4

    .prologue
    .line 2956
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    if-eqz v1, :cond_0

    .line 2959
    return-void

    .line 2964
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2965
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2970
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2955
    return-void
.end method

.method private regCodeIsRoaming(I)Z
    .locals 13
    .param p1, "code"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 3155
    const/4 v4, 0x0

    .line 3156
    .local v4, "isRoaming":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 3157
    .local v7, "strHomePlmn":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 3158
    .local v8, "strServingPlmn":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3159
    .local v5, "isServingPlmnInGroup":Z
    const/4 v3, 0x0

    .line 3160
    .local v3, "isHomePlmnInGroup":Z
    const/4 v2, 0x0

    .line 3162
    .local v2, "ignoreDomesticRoaming":Z
    const-string/jumbo v9, "ro.mtk_bsp_package"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 3164
    if-eqz v8, :cond_0

    .line 3165
    if-eqz v7, :cond_0

    .line 3166
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v9, v8, v7}, Lcom/mediatek/common/telephony/IServiceStateExt;->isRoamingForSpecialSIM(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 3164
    if-eqz v9, :cond_0

    .line 3168
    const/4 v9, 0x1

    return v9

    .line 3170
    :catch_0
    move-exception v0

    .line 3171
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3175
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v9, 0x5

    if-ne v9, p1, :cond_1

    .line 3176
    const/4 v4, 0x1

    .line 3180
    :cond_1
    const-string/jumbo v9, "ro.mtk_bsp_package"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3182
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v9}, Lcom/mediatek/common/telephony/IServiceStateExt;->ignoreDomesticRoaming()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 3188
    .end local v2    # "ignoreDomesticRoaming":Z
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    .line 3189
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 3190
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ServingPlmn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " HomePlmn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3191
    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3192
    const-string/jumbo v9, "Same MCC,don\'t set as roaming"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3193
    const/4 v4, 0x0

    .line 3199
    :cond_3
    if-eqz v4, :cond_7

    if-eqz v8, :cond_7

    if-eqz v7, :cond_7

    .line 3200
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "strServingPlmn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " strHomePlmn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    array-length v9, v9

    if-ge v1, v9, :cond_7

    .line 3204
    const/4 v5, 0x0

    .line 3205
    const/4 v3, 0x0

    .line 3208
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    sget-object v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v9, v9, v1

    array-length v9, v9

    if-ge v6, v9, :cond_6

    .line 3209
    sget-object v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v9, v9, v1

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3210
    const/4 v5, 0x1

    .line 3212
    :cond_4
    sget-object v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v9, v9, v1

    aget-object v9, v9, v6

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3213
    const/4 v3, 0x1

    .line 3208
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3183
    .end local v1    # "i":I
    .end local v6    # "j":I
    .restart local v2    # "ignoreDomesticRoaming":Z
    :catch_1
    move-exception v0

    .line 3184
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 3218
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "ignoreDomesticRoaming":Z
    .restart local v1    # "i":I
    .restart local v6    # "j":I
    :cond_6
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    .line 3219
    const/4 v4, 0x0

    .line 3220
    const-string/jumbo v9, "Ignore roaming"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3226
    .end local v1    # "i":I
    .end local v6    # "j":I
    :cond_7
    return v4

    .line 3202
    .restart local v1    # "i":I
    .restart local v6    # "j":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private regCodeToRegState(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 3113
    packed-switch p1, :pswitch_data_0

    .line 3123
    :pswitch_0
    return p1

    .line 3115
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 3117
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 3119
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 3121
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 3113
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private regCodeToServiceState(I)I
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 3087
    packed-switch p1, :pswitch_data_0

    .line 3106
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3107
    return v2

    .line 3096
    :pswitch_1
    return v2

    .line 3099
    :pswitch_2
    return v0

    .line 3103
    :pswitch_3
    return v0

    .line 3087
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 3698
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3699
    const-string/jumbo v1, "auto_time"

    .line 3698
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 3700
    const-string/jumbo v0, "[NITZ]:revertToNitz,AUTO_TIME is 0"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3701
    return-void

    .line 3704
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Reverting to NITZ Time: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3705
    const-string/jumbo v1, " mSavedAtTime="

    .line 3704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3705
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 3704
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3705
    const-string/jumbo v1, " tz=\'"

    .line 3704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3705
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 3704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3705
    const-string/jumbo v1, "\'"

    .line 3704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3707
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 3708
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 3709
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    .line 3708
    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 3697
    :cond_1
    return-void
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3714
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3715
    const-string/jumbo v1, "auto_time_zone"

    .line 3714
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 3716
    return-void

    .line 3720
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getReceivedNitz()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Reverting to NITZ TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3722
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3723
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 3725
    :cond_1
    return-void

    .line 3729
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isAllowFixTimeZone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3730
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->fixTimeZone()V

    .line 3731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Reverting to fixed TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3732
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3733
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 3735
    :cond_3
    return-void

    .line 3739
    :cond_4
    const-string/jumbo v0, "Do nothing since other phone has received NITZ, but this phone didn\'t"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3713
    return-void
.end method

.method private saveNitzTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 3656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveNitzTime: time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3657
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 3658
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 3655
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 2
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 3651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveNitzTimeZone zoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3652
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 3650
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 3689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAndBroadcastNetworkSetTime: time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3690
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 3691
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3692
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3693
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3694
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3688
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 3668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3670
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3671
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 3672
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3673
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3674
    const-string/jumbo v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3675
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAndBroadcastNetworkSetTimeZone: call alarm.setTimeZone and broadcast zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3667
    return-void
.end method

.method private setEINFO(ILandroid/os/Message;)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 4849
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 4850
    .local v0, "Cmd":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AT+EINFO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 4851
    const-string/jumbo v1, "+EINFO"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4852
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 4853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEINFO for EMMRRS, ATCmd[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4848
    return-void
.end method

.method private setNotification(I)V
    .locals 0
    .param p1, "notifyType"    # I

    .prologue
    .line 3747
    return-void
.end method

.method private setNullState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2224
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsRatDowngrade:Z

    .line 2226
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBackupDataNetworkType:I

    .line 2227
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 2228
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 2229
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 2230
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 2232
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 2233
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    .line 2235
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    .line 2236
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0, v2}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 2240
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCsInvalidCard:Z

    .line 2242
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegState:I

    .line 2243
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    .line 2223
    return-void
.end method

.method private setReceivedNitz(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "receivedNitz"    # Z

    .prologue
    .line 5087
    const/4 v0, 0x0

    .line 5088
    .local v0, "index":I
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 5089
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 5095
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReceivedNitz : phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5096
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sReceiveNitz:[Z

    aput-boolean p2, v1, v0

    .line 5086
    return-void

    .line 5090
    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 5091
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneInstanceCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 5093
    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method private setRejectCauseNotification(I)V
    .locals 10
    .param p1, "cause"    # I

    .prologue
    .line 4445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRejectCauseNotification: create notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4447
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4448
    .local v0, "context":Landroid/content/Context;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 4449
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Landroid/app/Notification;->when:J

    .line 4450
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 4451
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 4452
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4453
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 4454
    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    .line 4453
    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4456
    const-string/jumbo v1, ""

    .line 4457
    .local v1, "details":Ljava/lang/CharSequence;
    const v6, 0x8050067

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4458
    .local v5, "title":Ljava/lang/CharSequence;
    const/16 v3, 0x37a

    .line 4460
    .local v3, "notificationId":I
    sparse-switch p1, :sswitch_data_0

    .line 4480
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRejectCauseNotification: put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4481
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 4482
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 4483
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4482
    invoke-virtual {v6, v0, v5, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4486
    const-string/jumbo v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 4485
    check-cast v4, Landroid/app/NotificationManager;

    .line 4488
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4444
    return-void

    .line 4462
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    :sswitch_0
    const v6, 0x8050068

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 4465
    :sswitch_1
    const v6, 0x8050069

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 4468
    :sswitch_2
    const v6, 0x8050070

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 4471
    :sswitch_3
    const v6, 0x8050071

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 4474
    :sswitch_4
    const v6, 0x8050075

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 4460
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0xd -> :sswitch_4
    .end sparse-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 2

    .prologue
    .line 2220
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2219
    return-void
.end method

.method private setSpecialCardTypeNotification(Ljava/lang/String;II)V
    .locals 10
    .param p1, "iccCardType"    # Ljava/lang/String;
    .param p2, "titleType"    # I
    .param p3, "detailType"    # I

    .prologue
    .line 4498
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSpecialCardTypeNotification: create notification for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4501
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4502
    .local v0, "context":Landroid/content/Context;
    const/16 v3, 0x22c7

    .line 4504
    .local v3, "notificationId":I
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 4505
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Landroid/app/Notification;->when:J

    .line 4506
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 4507
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 4509
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4510
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 4511
    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    .line 4510
    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4513
    const-string/jumbo v5, ""

    .line 4514
    .local v5, "title":Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_0

    .line 4523
    :goto_0
    const-string/jumbo v1, ""

    .line 4524
    .local v1, "details":Ljava/lang/CharSequence;
    packed-switch p3, :pswitch_data_1

    .line 4532
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSpecialCardTypeNotification: put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4533
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 4534
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 4535
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4534
    invoke-virtual {v6, v0, v5, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4538
    const-string/jumbo v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 4537
    check-cast v4, Landroid/app/NotificationManager;

    .line 4540
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4497
    return-void

    .line 4517
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_0
    const v6, 0x8050097

    .line 4516
    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0

    .line 4526
    .restart local v1    # "details":Ljava/lang/CharSequence;
    :pswitch_1
    const v6, 0x8050098

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 4514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 4524
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 34
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 3448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 3449
    .local v22, "start":J
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "NITZ: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 3450
    const-string/jumbo v29, " start="

    .line 3449
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 3450
    const-string/jumbo v29, " delay="

    .line 3449
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 3450
    sub-long v30, v22, p2

    .line 3449
    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3456
    :try_start_0
    const-string/jumbo v28, "GMT"

    invoke-static/range {v28 .. v28}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 3458
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 3459
    const/16 v28, 0x10

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3461
    const-string/jumbo v28, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 3463
    .local v19, "nitzSubs":[Ljava/lang/String;
    const/16 v28, 0x0

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v26, v0

    .line 3464
    .local v26, "year":I
    const/16 v28, 0x1

    move/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3467
    const/16 v28, 0x1

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    add-int/lit8 v18, v28, -0x1

    .line 3468
    .local v18, "month":I
    const/16 v28, 0x2

    move/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3470
    const/16 v28, 0x2

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3471
    .local v7, "date":I
    const/16 v28, 0x5

    move/from16 v0, v28

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 3473
    const/16 v28, 0x3

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 3474
    .local v12, "hour":I
    const/16 v28, 0xa

    move/from16 v0, v28

    invoke-virtual {v6, v0, v12}, Ljava/util/Calendar;->set(II)V

    .line 3476
    const/16 v28, 0x4

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3477
    .local v15, "minute":I
    const/16 v28, 0xc

    move/from16 v0, v28

    invoke-virtual {v6, v0, v15}, Ljava/util/Calendar;->set(II)V

    .line 3479
    const/16 v28, 0x5

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 3480
    .local v20, "second":I
    const/16 v28, 0xd

    move/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3482
    const/16 v28, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    const/16 v21, 0x1

    .line 3484
    .local v21, "sign":Z
    :goto_0
    const/16 v28, 0x6

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 3487
    .local v24, "tzOffset":I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    const/16 v28, 0x7

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3501
    .local v8, "dst":I
    :goto_1
    if-eqz v21, :cond_8

    const/16 v28, 0x1

    :goto_2
    mul-int v28, v28, v24

    mul-int/lit8 v28, v28, 0xf

    mul-int/lit8 v28, v28, 0x3c

    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    .line 3503
    const/16 v27, 0x0

    .line 3509
    .local v27, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x9

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_0

    .line 3510
    const/16 v28, 0x8

    aget-object v28, v19, v28

    const/16 v29, 0x21

    const/16 v30, 0x2f

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v25

    .line 3511
    .local v25, "tzname":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v27

    .line 3512
    .local v27, "zone":Ljava/util/TimeZone;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[NITZ] setTimeFromNITZString,tzname:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " zone:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3515
    .end local v25    # "tzname":Ljava/lang/String;
    .end local v27    # "zone":Ljava/util/TimeZone;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v28

    .line 3516
    const-string/jumbo v29, "phone"

    .line 3515
    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/telephony/TelephonyManager;

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v29

    .line 3515
    invoke-virtual/range {v28 .. v29}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v14

    .line 3519
    .local v14, "iso":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[NITZ] setTimeFromNITZString,mGotCountryCode:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3521
    if-nez v27, :cond_1

    .line 3523
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 3524
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_a

    .line 3525
    if-eqz v8, :cond_9

    const/16 v28, 0x1

    .line 3526
    :goto_3
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    .line 3525
    move/from16 v0, v24

    move/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3, v14}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v27

    .line 3538
    :cond_1
    :goto_4
    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 3543
    :cond_2
    :goto_5
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 3544
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 3545
    if-eqz v8, :cond_e

    const/16 v28, 0x1

    :goto_6
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 3546
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 3549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setReceivedNitz(IZ)V

    .line 3552
    :cond_3
    if-eqz v27, :cond_5

    .line 3553
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 3554
    invoke-virtual/range {v27 .. v27}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 3556
    :cond_4
    invoke-virtual/range {v27 .. v27}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 3559
    :cond_5
    const-string/jumbo v28, "gsm.ignore-nitz"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3560
    .local v13, "ignore":Ljava/lang/String;
    if-eqz v13, :cond_f

    const-string/jumbo v28, "yes"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 3561
    const-string/jumbo v28, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3562
    return-void

    .line 3482
    .end local v8    # "dst":I
    .end local v13    # "ignore":Ljava/lang/String;
    .end local v14    # "iso":Ljava/lang/String;
    .end local v21    # "sign":Z
    .end local v24    # "tzOffset":I
    :cond_6
    const/16 v21, 0x0

    .restart local v21    # "sign":Z
    goto/16 :goto_0

    .line 3488
    .restart local v24    # "tzOffset":I
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getMobileCountryCode()I

    move-result v28

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDstForMcc(IJ)I

    move-result v8

    .restart local v8    # "dst":I
    goto/16 :goto_1

    .line 3501
    :cond_8
    const/16 v28, -0x1

    goto/16 :goto_2

    .line 3525
    .restart local v14    # "iso":Ljava/lang/String;
    :cond_9
    const/16 v28, 0x0

    goto/16 :goto_3

    .line 3533
    :cond_a
    if-eqz v8, :cond_b

    const/16 v28, 0x1

    :goto_7
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v28

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v27

    .restart local v27    # "zone":Ljava/util/TimeZone;
    goto/16 :goto_4

    .end local v27    # "zone":Ljava/util/TimeZone;
    :cond_b
    const/16 v28, 0x0

    goto :goto_7

    .line 3538
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v29, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_d

    const/16 v28, 0x1

    :goto_8
    move/from16 v0, v29

    move/from16 v1, v28

    if-eq v0, v1, :cond_3

    goto/16 :goto_5

    :cond_d
    const/16 v28, 0x0

    goto :goto_8

    .line 3545
    :cond_e
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 3566
    .restart local v13    # "ignore":Ljava/lang/String;
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3568
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v28

    if-eqz v28, :cond_12

    .line 3570
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    sub-long v16, v28, p2

    .line 3572
    .local v16, "millisSinceNitzReceived":J
    const-wide/16 v28, 0x0

    cmp-long v28, v16, v28

    if-gez v28, :cond_10

    .line 3575
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3614
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3579
    return-void

    .line 3582
    :cond_10
    const-wide/32 v28, 0x7fffffff

    cmp-long v28, v16, v28

    if-lez v28, :cond_11

    .line 3585
    :try_start_3
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 3586
    const-wide/32 v30, 0x5265c00

    div-long v30, v16, v30

    .line 3585
    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 3587
    const-string/jumbo v29, " days"

    .line 3585
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3614
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3589
    return-void

    .line 3593
    :cond_11
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0xe

    :try_start_5
    move/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 3596
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "NITZ: Setting time of day to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 3597
    const-string/jumbo v29, " NITZ receive delay(ms): "

    .line 3596
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 3598
    const-string/jumbo v29, " gained(ms): "

    .line 3596
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 3599
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v30, v30, v32

    .line 3596
    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 3600
    const-string/jumbo v29, " from "

    .line 3596
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3603
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 3604
    const-string/jumbo v28, "GsmSST"

    const-string/jumbo v29, "NITZ: after Setting time of day"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    .end local v16    # "millisSinceNitzReceived":J
    :cond_12
    const-string/jumbo v28, "gsm.nitz.time"

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V

    .line 3609
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 3610
    .local v10, "end":J
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "NITZ: end="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " dur="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v30, v10, v22

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3612
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3614
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3444
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v10    # "end":J
    .end local v12    # "hour":I
    .end local v13    # "ignore":Ljava/lang/String;
    .end local v14    # "iso":Ljava/lang/String;
    .end local v15    # "minute":I
    .end local v18    # "month":I
    .end local v19    # "nitzSubs":[Ljava/lang/String;
    .end local v20    # "second":I
    .end local v21    # "sign":Z
    .end local v24    # "tzOffset":I
    .end local v26    # "year":I
    :goto_9
    return-void

    .line 3613
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "date":I
    .restart local v8    # "dst":I
    .restart local v12    # "hour":I
    .restart local v13    # "ignore":Ljava/lang/String;
    .restart local v14    # "iso":Ljava/lang/String;
    .restart local v15    # "minute":I
    .restart local v18    # "month":I
    .restart local v19    # "nitzSubs":[Ljava/lang/String;
    .restart local v20    # "second":I
    .restart local v21    # "sign":Z
    .restart local v24    # "tzOffset":I
    .restart local v26    # "year":I
    :catchall_0
    move-exception v28

    .line 3614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3613
    throw v28
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3616
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v12    # "hour":I
    .end local v13    # "ignore":Ljava/lang/String;
    .end local v14    # "iso":Ljava/lang/String;
    .end local v15    # "minute":I
    .end local v18    # "month":I
    .end local v19    # "nitzSubs":[Ljava/lang/String;
    .end local v20    # "second":I
    .end local v21    # "sign":Z
    .end local v24    # "tzOffset":I
    .end local v26    # "year":I
    :catch_0
    move-exception v9

    .line 3617
    .local v9, "ex":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " ex="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private updateLocatedPlmn(Ljava/lang/String;)V
    .locals 6
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 4174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLocatedPlmn(),previous plmn= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,update to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4176
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    .line 4179
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4180
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 4181
    const/high16 v4, 0x20000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4183
    :cond_1
    const-string/jumbo v4, "plmn"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4185
    if-eqz p1, :cond_6

    .line 4188
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4189
    .local v3, "mcc":I
    const-string/jumbo v4, "iso"

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4197
    .end local v3    # "mcc":I
    :goto_0
    const-string/jumbo v4, "persist.radio.autoratswitch"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4198
    const-string/jumbo v4, "updateLocatedPlmn: framework auto RAT switch disabled"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4207
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-static {v2, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4208
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4211
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_2
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    .line 4173
    return-void

    .line 4177
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-eqz v4, :cond_4

    if-eqz p1, :cond_0

    .line 4178
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 4193
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 4194
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLocatedPlmn: countryCodeForMcc error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4195
    const-string/jumbo v4, "iso"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4190
    .end local v1    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 4191
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLocatedPlmn: countryCodeForMcc error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 4192
    const-string/jumbo v4, "iso"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 4200
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_5
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    .line 4201
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setDeviceRatMode(I)V

    goto :goto_1

    .line 4204
    :cond_6
    const-string/jumbo v4, "iso"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private updateNetworkInfo(II)V
    .locals 4
    .param p1, "newRegState"    # I
    .param p2, "newNetworkType"    # I

    .prologue
    const/4 v3, 0x1

    .line 4894
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getDisplayState()I

    move-result v0

    .line 4896
    .local v0, "displayState":I
    const/4 v1, 0x0

    .line 4897
    .local v1, "isRegisted":Z
    if-eq p1, v3, :cond_0

    .line 4898
    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    .line 4899
    :cond_0
    const/4 v1, 0x1

    .line 4917
    :goto_0
    if-ne v0, v3, :cond_1

    .line 4918
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsForceSendScreenOnForUpdateNwInfo:Z

    .line 4917
    if-nez v2, :cond_1

    .line 4919
    if-nez v1, :cond_4

    if-ne v0, v3, :cond_4

    .line 4920
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, p2}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 4893
    :cond_2
    :goto_1
    return-void

    .line 4901
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 4921
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    if-ne v2, v3, :cond_5

    if-eqz v1, :cond_5

    .line 4923
    if-ne v0, v3, :cond_5

    .line 4924
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsForceSendScreenOnForUpdateNwInfo:Z

    if-nez v2, :cond_2

    .line 4925
    const-string/jumbo v2, "send screen state ON to change format of CREG"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4926
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsForceSendScreenOnForUpdateNwInfo:Z

    .line 4927
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendScreenState(Z)V

    .line 4928
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_1

    .line 4930
    :cond_5
    if-ne v0, v3, :cond_2

    if-eqz v1, :cond_2

    .line 4931
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 4932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[updateNetworkInfo]set Voice network type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateOpAlphaLongForHK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "oriOperatorLong"    # Ljava/lang/String;
    .param p2, "numeric"    # Ljava/lang/String;

    .prologue
    .line 5118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "oriOperatorLong= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " numeric= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5120
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5121
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 5122
    .local v3, "phoneNum":I
    new-array v0, v3, [I

    .line 5124
    .local v0, "cardType":[I
    const-string/jumbo v5, ""

    .line 5125
    .local v5, "strOperatorOverride":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5127
    .local v1, "isCdma4GSim":Z
    if-eqz p2, :cond_4

    const-string/jumbo v7, "45403"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "45404"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5128
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 5129
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v2

    .line 5130
    .local v2, "phoneId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "EVENT_POLL_STATE_OPERATOR, phoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5131
    aget v6, v0, v2

    .line 5133
    .local v6, "targetCardType":I
    and-int/lit8 v7, v6, 0x4

    if-gtz v7, :cond_1

    .line 5134
    and-int/lit8 v7, v6, 0x8

    if-lez v7, :cond_2

    .line 5135
    :cond_1
    and-int/lit8 v7, v6, 0x2

    if-lez v7, :cond_2

    .line 5136
    const/4 v1, 0x1

    .line 5139
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v4

    .line 5140
    .local v4, "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    if-eqz v4, :cond_3

    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrierEx(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5141
    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5144
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "targetCardType= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5145
    const-string/jumbo v8, " strOperatorOverride= "

    .line 5144
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5146
    const-string/jumbo v8, " isCdma4GSim="

    .line 5144
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5148
    if-eqz v1, :cond_4

    .line 5149
    move-object p1, v5

    .line 5153
    .end local v0    # "cardType":[I
    .end local v1    # "isCdma4GSim":Z
    .end local v2    # "phoneId":I
    .end local v3    # "phoneNum":I
    .end local v4    # "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .end local v5    # "strOperatorOverride":Ljava/lang/String;
    .end local v6    # "targetCardType":I
    :cond_4
    return-object p1
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkCorrectThread()V

    .line 688
    const-string/jumbo v1, "ServiceStateTracker dispose"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 692
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 693
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 697
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 698
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 699
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMsicFeatureConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 701
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataConnectionSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->isImeiLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 705
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIMEILock(Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :cond_2
    :goto_0
    const-string/jumbo v1, "ro.mtk_femto_cell_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 712
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForFemtoCellInfo(Landroid/os/Handler;)V

    .line 714
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 716
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 717
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 686
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "No isImeiLocked"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3864
    const-string/jumbo v0, "GsmServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3865
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3867
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

    .line 3868
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

    .line 3869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNewCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPreferredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNewMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNewReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mGsmRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNeedFixZoneAfterNitz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3880
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNitzUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mStartedGprsRegCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mReportedGprsNoReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCurSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCurDataSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCurShowSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCurPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCurShowPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3898
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3863
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 722
    const-string/jumbo v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method protected fixTimeZone()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4620
    const/4 v6, 0x0

    .line 4621
    .local v6, "zone":Ljava/util/TimeZone;
    const-string/jumbo v1, ""

    .line 4622
    .local v1, "iso":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 4623
    .local v3, "operatorNumeric":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4626
    .local v2, "mcc":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4631
    :cond_0
    const-string/jumbo v7, "fixTimeZone but not registered and operatorNumeric is null or invalid value"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4632
    return-void

    .line 4626
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isNumeric(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4629
    const/4 v7, 0x3

    invoke-virtual {v3, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4636
    .local v2, "mcc":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4641
    :goto_0
    const-string/jumbo v7, "000"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4679
    .end local v6    # "zone":Ljava/util/TimeZone;
    :cond_2
    :goto_1
    if-eqz v6, :cond_a

    .line 4680
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fixTimeZone: zone != null zone.getID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4681
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4682
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 4684
    :cond_3
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 4619
    :goto_2
    return-void

    .line 4637
    .restart local v6    # "zone":Ljava/util/TimeZone;
    :catch_0
    move-exception v0

    .line 4638
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fixTimeZone countryCodeForMcc error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4641
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4645
    const-string/jumbo v7, "telephony.test.ignore.nitz"

    .line 4644
    invoke-static {v7, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4646
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    const/4 v4, 0x1

    .line 4648
    .local v4, "testOneUniqueOffsetPath":Z
    :goto_3
    invoke-static {v1}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4649
    .local v5, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v7, v13, :cond_5

    if-eqz v4, :cond_8

    .line 4650
    :cond_5
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "zone":Ljava/util/TimeZone;
    check-cast v6, Ljava/util/TimeZone;

    .line 4652
    .local v6, "zone":Ljava/util/TimeZone;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fixTimeZone: no nitz but one TZ for iso-cc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4653
    const-string/jumbo v8, " with zone.getID="

    .line 4652
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4653
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    .line 4652
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4654
    const-string/jumbo v8, " testOneUniqueOffsetPath="

    .line 4652
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4656
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4646
    .end local v4    # "testOneUniqueOffsetPath":Z
    .end local v5    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .local v6, "zone":Ljava/util/TimeZone;
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "testOneUniqueOffsetPath":Z
    goto :goto_3

    .line 4644
    .end local v4    # "testOneUniqueOffsetPath":Z
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "testOneUniqueOffsetPath":Z
    goto :goto_3

    .line 4659
    .restart local v5    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v13, :cond_9

    .line 4660
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uniqueZones.size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4661
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getTimeZonesWithCapitalCity(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 4664
    .local v6, "zone":Ljava/util/TimeZone;
    if-eqz v6, :cond_2

    .line 4665
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4671
    .local v6, "zone":Ljava/util/TimeZone;
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fixTimeZone: there are "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4672
    const-string/jumbo v8, " unique offsets for iso-cc=\'"

    .line 4671
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4673
    const-string/jumbo v8, " testOneUniqueOffsetPath="

    .line 4671
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4674
    const-string/jumbo v8, "\', do nothing"

    .line 4671
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4686
    .end local v4    # "testOneUniqueOffsetPath":Z
    .end local v5    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .end local v6    # "zone":Ljava/util/TimeZone;
    :cond_a
    const-string/jumbo v7, "fixTimeZone: zone == null"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 14

    .prologue
    const v13, 0x7fffffff

    const/4 v12, 0x0

    .line 3376
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    if-ltz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    if-ltz v10, :cond_0

    .line 3377
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCellLocation(): X good mCellLoc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3378
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    return-object v10

    .line 3380
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    .line 3381
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v9, :cond_6

    .line 3394
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 3395
    .local v6, "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "ci$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CellInfo;

    .line 3396
    .local v7, "ci":Landroid/telephony/CellInfo;
    instance-of v10, v7, Landroid/telephony/CellInfoGsm;

    if-eqz v10, :cond_2

    move-object v3, v7

    .line 3397
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .line 3398
    .local v3, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .line 3399
    .local v0, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v10

    .line 3400
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v11

    .line 3399
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 3401
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 3402
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCellLocation(): X ret GSM info="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3403
    return-object v6

    .line 3404
    .end local v0    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v3    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_2
    instance-of v10, v7, Landroid/telephony/CellInfoWcdma;

    if-eqz v10, :cond_3

    move-object v5, v7

    .line 3405
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    .line 3406
    .local v5, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 3407
    .local v2, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v10

    .line 3408
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v11

    .line 3407
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 3409
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 3410
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCellLocation(): X ret WCDMA info="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3411
    return-object v6

    .line 3412
    .end local v2    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    .end local v5    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    :cond_3
    instance-of v10, v7, Landroid/telephony/CellInfoLte;

    if-eqz v10, :cond_1

    .line 3413
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    if-ltz v10, :cond_4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    if-gez v10, :cond_1

    :cond_4
    move-object v4, v7

    .line 3415
    check-cast v4, Landroid/telephony/CellInfoLte;

    .line 3416
    .local v4, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    .line 3417
    .local v1, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    if-eq v10, v13, :cond_1

    .line 3418
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v10

    if-eq v10, v13, :cond_1

    .line 3419
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    .line 3420
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v11

    .line 3419
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 3421
    invoke-virtual {v6, v12}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 3423
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCellLocation(): possible LTE cellLocOther="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3429
    .end local v1    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v4    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .end local v7    # "ci":Landroid/telephony/CellInfo;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCellLocation(): X ret best answer cellLocOther="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3431
    return-object v6

    .line 3434
    .end local v6    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    .end local v8    # "ci$iterator":Ljava/util/Iterator;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCellLocation(): X empty mCellLoc and CellInfo mCellLoc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3436
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    return-object v10
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 3338
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method public getLocatedPlmn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4170
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    return-object v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 747
    const-string/jumbo v23, "GsmSST"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Received message "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 748
    const-string/jumbo v25, "["

    .line 747
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 748
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    .line 747
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 748
    const-string/jumbo v25, "] while being destroyed. Ignoring."

    .line 747
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void

    .line 751
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_0

    .line 1123
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 1126
    :cond_1
    :goto_0
    const-string/jumbo v23, "handleMessage msg done"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 740
    return-void

    .line 753
    :sswitch_0
    const-string/jumbo v23, "handle EVENT_RADIO_AVAILABLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 755
    const-string/jumbo v23, "ro.mtk_bsp_package"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "1"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 756
    const-string/jumbo v23, "not BSP package, notify!"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/internal/telephony/RadioManager;->notifyRadioAvailable(I)V

    goto :goto_0

    .line 765
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 766
    const-string/jumbo v23, "handle EVENT_SIM_READY"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 768
    const v24, 0x1120059

    .line 767
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    .line 769
    .local v18, "skipRestoringSelection":Z
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "skipRestoringSelection="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 770
    if-nez v18, :cond_2

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 774
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 776
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 779
    .end local v18    # "skipRestoringSelection":Z
    :sswitch_2
    const-string/jumbo v23, "handle EVENT_RADIO_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 780
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 781
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "MTK propiertary Power on flow, setRadioPower:  mDesiredPowerState="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 782
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    move/from16 v24, v0

    .line 781
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 782
    const-string/jumbo v24, "  phoneId="

    .line 781
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v24

    .line 781
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 783
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v23

    .line 784
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v25

    .line 783
    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 794
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setDeviceRatMode(I)V

    .line 797
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 790
    :cond_4
    const-string/jumbo v23, "BSP package but use MTK Power on flow"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 791
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v23

    .line 792
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v25

    .line 791
    invoke-virtual/range {v23 .. v25}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto :goto_1

    .line 800
    :sswitch_3
    const-string/jumbo v23, "handle EVENT_NETWORK_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 801
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 802
    .local v4, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onNetworkStateChangeResult(Landroid/os/AsyncResult;)V

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 806
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    const-string/jumbo v23, "handle EVENT_PS_NETWORK_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 807
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 808
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onPsNetworkStateChangeResult(Landroid/os/AsyncResult;)V

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 813
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    const-string/jumbo v23, "handle EVENT_GET_SIGNAL_STRENGTH"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v23

    if-nez v23, :cond_5

    .line 818
    return-void

    .line 820
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 821
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_6

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrengthChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    .line 823
    new-instance v25, Landroid/telephony/SignalStrength;

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/telephony/SignalStrength;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    .line 822
    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 826
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifySignalStrengthChanged(Landroid/os/AsyncResult;)V

    .line 828
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 829
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 833
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    const-string/jumbo v23, "handle EVENT_GET_LOC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 835
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_9

    .line 836
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [Ljava/lang/String;

    .line 837
    .local v19, "states":[Ljava/lang/String;
    const/4 v10, -0x1

    .line 838
    .local v10, "lac":I
    const/4 v5, -0x1

    .line 839
    .local v5, "cid":I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_8

    .line 841
    const/16 v23, 0x1

    :try_start_0
    aget-object v23, v19, v23

    if-eqz v23, :cond_7

    const/16 v23, 0x1

    aget-object v23, v19, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_7

    .line 842
    const/16 v23, 0x1

    aget-object v23, v19, v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 844
    :cond_7
    const/16 v23, 0x2

    aget-object v23, v19, v23

    if-eqz v23, :cond_8

    const/16 v23, 0x2

    aget-object v23, v19, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_8

    .line 845
    const/16 v23, 0x2

    aget-object v23, v19, v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 853
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrCellLac:I

    .line 854
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrCellCid:I

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v5}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 862
    .end local v5    # "cid":I
    .end local v10    # "lac":I
    .end local v19    # "states":[Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 847
    .restart local v5    # "cid":I
    .restart local v10    # "lac":I
    .restart local v19    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 848
    .local v8, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v23, "GsmSST"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "error parsing location: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 868
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "cid":I
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    .end local v10    # "lac":I
    .end local v19    # "states":[Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 869
    const-string/jumbo v23, "handle EVENT_POLL_STATE_REGISTRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 877
    :goto_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 878
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 870
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 871
    const-string/jumbo v23, "handle EVENT_POLL_STATE_GPRS"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 872
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 873
    const-string/jumbo v23, "handle EVENT_POLL_STATE_OPERATOR"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 875
    :cond_c
    const-string/jumbo v23, "handle EVENT_POLL_STATE_NETWORK_SELECTION_MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 881
    :sswitch_8
    const-string/jumbo v23, "handle EVENT_POLL_SIGNAL_STRENGTH"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 882
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 885
    return-void

    .line 888
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 891
    :sswitch_9
    const-string/jumbo v23, "handle EVENT_NITZ_TIME"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 892
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 893
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [Ljava/lang/Object;

    const/16 v24, 0x0

    aget-object v13, v23, v24

    check-cast v13, Ljava/lang/String;

    .line 894
    .local v13, "nitzString":Ljava/lang/String;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [Ljava/lang/Object;

    const/16 v24, 0x1

    aget-object v23, v23, v24

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 895
    .local v14, "nitzReceiveTime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 900
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "nitzString":Ljava/lang/String;
    .end local v14    # "nitzReceiveTime":J
    :sswitch_a
    const-string/jumbo v23, "handle EVENT_SIGNAL_STRENGTH_UPDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 901
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 904
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    .line 905
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_e

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrengthChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    .line 907
    new-instance v25, Landroid/telephony/SignalStrength;

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/telephony/SignalStrength;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    .line 906
    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 910
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifySignalStrengthChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 914
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    const-string/jumbo v23, "handle EVENT_SIM_RECORDS_LOADED"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePhoneObject()V

    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->refreshSpnDisplay()V

    .line 924
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyServiceStateChanged()V

    goto/16 :goto_0

    .line 928
    :sswitch_c
    const-string/jumbo v23, "handle EVENT_LOCATION_UPDATES_ENABLED"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 929
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 931
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    const/16 v24, 0xf

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 936
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    const-string/jumbo v23, "handle EVENT_SET_PREFERRED_NETWORK_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 939
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 940
    .local v12, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v0, v1, v12}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 943
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "message":Landroid/os/Message;
    :sswitch_e
    const-string/jumbo v23, "handle EVENT_RESET_PREFERRED_NETWORK_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 944
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 945
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 946
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Message;

    invoke-static/range {v23 .. v23}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v23

    .line 947
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    .line 946
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 948
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Message;

    invoke-virtual/range {v23 .. v23}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 952
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    const-string/jumbo v23, "handle EVENT_GET_PREFERRED_NETWORK_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 953
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 954
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_f

    .line 955
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [I

    const/16 v24, 0x0

    aget v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 959
    :goto_4
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 960
    .restart local v12    # "message":Landroid/os/Message;
    const/16 v21, 0x7

    .line 961
    .local v21, "toggledNetworkType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-interface {v0, v1, v12}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 957
    .end local v12    # "message":Landroid/os/Message;
    .end local v21    # "toggledNetworkType":I
    :cond_f
    const/16 v23, 0x7

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_4

    .line 964
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    const-string/jumbo v23, "handle EVENT_CHECK_REPORT_GPRS"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    if-eqz v23, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v23

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v24

    .line 965
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 975
    :cond_10
    :goto_5
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .line 970
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v11

    check-cast v11, Landroid/telephony/gsm/GsmCellLocation;

    .line 971
    .local v11, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    aput-object v23, v24, v25

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v23

    :goto_6
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v25, 0x1

    aput-object v23, v24, v25

    .line 971
    const v23, 0xc3bb

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 973
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto :goto_5

    .line 972
    :cond_12
    const/16 v23, -0x1

    goto :goto_6

    .line 980
    .end local v11    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :sswitch_11
    const-string/jumbo v23, "handle EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 981
    const-string/jumbo v23, "EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 983
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 984
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 987
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    const-string/jumbo v23, "handle EVENT_ALL_DATA_DISCONNECTED"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 988
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v7

    .line 989
    .local v7, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 990
    monitor-enter p0

    .line 991
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    move/from16 v23, v0

    if-eqz v23, :cond_13

    .line 992
    const-string/jumbo v23, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 994
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    monitor-exit p0

    goto/16 :goto_0

    .line 996
    :cond_13
    :try_start_2
    const-string/jumbo v23, "EVENT_ALL_DATA_DISCONNECTED is stale"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 990
    :catchall_0
    move-exception v23

    monitor-exit p0

    throw v23

    .line 1001
    .end local v7    # "dds":I
    :sswitch_13
    const-string/jumbo v23, "handle EVENT_CHANGE_IMS_STATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    goto/16 :goto_0

    .line 1005
    :sswitch_14
    const-string/jumbo v23, "handle EVENT_INVALID_SIM_INFO"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1007
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onInvalidSimInfoReceived(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1010
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_15
    const-string/jumbo v23, "handle EVENT_IMEI_LOCK"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1011
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsImeiLock:Z

    goto/16 :goto_0

    .line 1014
    :sswitch_16
    const-string/jumbo v23, "handle EVENT_ICC_REFRESH"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1015
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1016
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 1017
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 1018
    .local v17, "res":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    if-nez v17, :cond_14

    .line 1019
    const-string/jumbo v23, "IccRefreshResponse is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1022
    :cond_14
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 1044
    :pswitch_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "GSST EVENT_ICC_REFRESH IccRefreshResponse ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1026
    :pswitch_1
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 1027
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 1028
    const-string/jumbo v23, "Reset mLastRegisteredPLMN and mLastPSRegisteredPLMN for sim refresh"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1033
    :pswitch_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_8
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_1

    .line 1034
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    const/16 v24, 0x6f07

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 1035
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 1036
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 1037
    const-string/jumbo v23, "Reset mLastRegisteredPLMN and mLastPSRegisteredPLMN for IMSI update"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1033
    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1050
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "i":I
    .end local v17    # "res":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :sswitch_17
    const-string/jumbo v23, "handle EVENT_ENABLE_EMMRRS_STATUS"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1051
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1052
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_16

    .line 1053
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    .line 1054
    .local v6, "data":[Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "EVENT_ENABLE_EMMRRS_STATUS, data[0] is : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v6, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1055
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "EVENT_ENABLE_EMMRRS_STATUS, einfo value is : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v6, v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1056
    const/16 v23, 0x0

    aget-object v23, v6, v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1057
    .local v16, "oldValue":I
    move/from16 v0, v16

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    .line 1058
    .local v22, "value":I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "EVENT_ENABLE_EMMRRS_STATUS, einfo value change is : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1059
    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_16

    .line 1060
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setEINFO(ILandroid/os/Message;)V

    .line 1063
    .end local v6    # "data":[Ljava/lang/String;
    .end local v16    # "oldValue":I
    .end local v22    # "value":I
    :cond_16
    const-string/jumbo v23, "EVENT_ENABLE_EMMRRS_STATUS end"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1066
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_18
    const-string/jumbo v23, "handle EVENT_DISABLE_EMMRRS_STATUS"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1067
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1068
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_17

    .line 1069
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    .line 1070
    .restart local v6    # "data":[Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "EVENT_DISABLE_EMMRRS_STATUS, data[0] is : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v6, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1071
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "EVENT_DISABLE_EMMRRS_STATUS, einfo value is : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v6, v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1074
    const/16 v23, 0x0

    :try_start_3
    aget-object v23, v6, v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1075
    .restart local v16    # "oldValue":I
    const v23, 0xff7f

    and-int v22, v16, v23

    .line 1076
    .restart local v22    # "value":I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "EVENT_DISABLE_EMMRRS_STATUS, einfo value change is : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1077
    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    .line 1078
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setEINFO(ILandroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1084
    .end local v6    # "data":[Ljava/lang/String;
    .end local v16    # "oldValue":I
    .end local v22    # "value":I
    :cond_17
    :goto_9
    const-string/jumbo v23, "EVENT_DISABLE_EMMRRS_STATUS end"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1080
    .restart local v6    # "data":[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 1081
    .restart local v8    # "ex":Ljava/lang/NumberFormatException;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unexpected einfo value : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_9

    .line 1087
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "data":[Ljava/lang/String;
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :sswitch_19
    const-string/jumbo v23, "handle EVENT_FEMTO_CELL_INFO"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1088
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1089
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onFemtoCellInfoResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1092
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    const-string/jumbo v23, "handle EVENT_IMS_REGISTRATION_INFO"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1093
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1095
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v23, "persist.ims.simulate"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 1096
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistry:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1a

    const/16 v24, 0x1

    :goto_a
    const/16 v25, 0x0

    aput v24, v23, v25

    .line 1097
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Override EVENT_IMS_REGISTRATION_INFO: new mImsRegInfo="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1098
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [I

    const/16 v25, 0x0

    aget v23, v23, v25

    .line 1097
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1101
    :cond_18
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [I

    const/16 v24, 0x1

    aget v23, v23, v24

    if-lez v23, :cond_19

    .line 1102
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [I

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsExtInfo:I

    .line 1104
    :cond_19
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "ImsRegistrationInfoResult ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegInfo:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsExtInfo:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1096
    :cond_1a
    const/16 v24, 0x0

    goto/16 :goto_a

    .line 1108
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_1b
    const-string/jumbo v23, "EVENT_IMS_CAPABILITY_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 1113
    :sswitch_1c
    const-string/jumbo v23, "handle EVENT_REG_SUSPENDED"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1115
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [I

    const/16 v24, 0x0

    aget v20, v23, v24

    .line 1116
    .local v20, "suspendId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    const/16 v24, 0x73

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v23

    move/from16 v1, v20

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1119
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "suspendId":I
    :sswitch_1d
    const-string/jumbo v23, "handle EVENT_RESUME_CAMPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->setRegistrationSuspendEnabled(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 751
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_7
        0x5 -> :sswitch_7
        0x6 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_0
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x10 -> :sswitch_b
        0x11 -> :sswitch_1
        0x12 -> :sswitch_c
        0x13 -> :sswitch_f
        0x14 -> :sswitch_d
        0x15 -> :sswitch_e
        0x16 -> :sswitch_10
        0x17 -> :sswitch_11
        0x2d -> :sswitch_13
        0x30 -> :sswitch_1b
        0x65 -> :sswitch_14
        0x66 -> :sswitch_4
        0x67 -> :sswitch_15
        0x68 -> :sswitch_18
        0x69 -> :sswitch_17
        0x6a -> :sswitch_16
        0x6b -> :sswitch_19
        0x70 -> :sswitch_1a
        0x72 -> :sswitch_1c
        0x73 -> :sswitch_1d
        0x74 -> :sswitch_5
        0x3e9 -> :sswitch_12
    .end sparse-switch

    .line 1022
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 34
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1761
    const/16 v17, -0x1

    .line 1762
    .local v17, "psLac":I
    const/16 v16, -0x1

    .line 1767
    .local v16, "psCid":I
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_0

    .line 1768
    const-string/jumbo v29, "handlePollStateResult return due to (ar.userObj != mPollingContext)"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1769
    return-void

    .line 1772
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    .line 1773
    const/4 v9, 0x0

    .line 1775
    .local v9, "err":Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 1776
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v9

    .line 1779
    .end local v9    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    sget-object v29, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v29

    if-ne v9, v0, :cond_2

    .line 1781
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    .line 1782
    const-string/jumbo v29, "handlePollStateResult cancelPollState due to RADIO_NOT_AVAILABLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1783
    return-void

    .line 1786
    :cond_2
    sget-object v29, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v29

    if-eq v9, v0, :cond_3

    .line 1787
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1788
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v30, v0

    .line 1787
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2061
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v31, v29, v30

    add-int/lit8 v31, v31, -0x1

    aput v31, v29, v30

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    if-nez v29, :cond_6

    .line 2067
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingPsRestrictDisabledNotify:Z

    move/from16 v29, v0

    if-eqz v29, :cond_4

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2069
    const/16 v29, 0x3ea

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 2070
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingPsRestrictDisabledNotify:Z

    .line 2077
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getState()I

    move-result v29

    if-eqz v29, :cond_5

    .line 2078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    if-nez v29, :cond_5

    .line 2080
    const-string/jumbo v29, "update cellLoc by +CGREG"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 2083
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateRoamingState()V

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 2085
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    .line 1754
    :cond_6
    return-void

    .line 1791
    :cond_7
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1793
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [Ljava/lang/String;

    .line 1794
    .local v23, "states":[Ljava/lang/String;
    const/4 v14, -0x1

    .line 1795
    .local v14, "lac":I
    const/4 v7, -0x1

    .line 1796
    .local v7, "cid":I
    const/16 v28, 0x0

    .line 1797
    .local v28, "type":I
    const/16 v20, 0x4

    .line 1798
    .local v20, "regState":I
    const/16 v19, -0x1

    .line 1799
    .local v19, "reasonRegStateDenied":I
    const/16 v18, -0x1

    .line 1800
    .local v18, "psc":I
    const/16 v21, -0x1

    .line 1801
    .local v21, "rejCause":I
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v29, :cond_f

    .line 1803
    const/16 v29, 0x0

    :try_start_1
    aget-object v29, v23, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1804
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_d

    .line 1805
    const/16 v29, 0x1

    aget-object v29, v23, v29

    if-eqz v29, :cond_9

    const/16 v29, 0x1

    aget-object v29, v23, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_9

    .line 1807
    const/16 v29, 0x1

    aget-object v29, v23, v29

    const/16 v30, 0x10

    invoke-static/range {v29 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v27

    .line 1808
    .local v27, "tempLac":I
    if-gez v27, :cond_8

    .line 1809
    const-string/jumbo v29, "set Lac to previous value"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v27

    .line 1812
    :cond_8
    move/from16 v14, v27

    .line 1815
    .end local v27    # "tempLac":I
    :cond_9
    const/16 v29, 0x2

    aget-object v29, v23, v29

    if-eqz v29, :cond_b

    const/16 v29, 0x2

    aget-object v29, v23, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_b

    .line 1817
    const/16 v29, 0x2

    aget-object v29, v23, v29

    const/16 v30, 0x10

    invoke-static/range {v29 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v26

    .line 1818
    .local v26, "tempCid":I
    if-gez v26, :cond_a

    .line 1819
    const-string/jumbo v29, "set Cid to previous value"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v26

    .line 1822
    :cond_a
    move/from16 v7, v26

    .line 1825
    .end local v26    # "tempCid":I
    :cond_b
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_c

    .line 1826
    const/16 v29, 0x3

    aget-object v29, v23, v29

    if-eqz v29, :cond_c

    const/16 v29, 0x3

    aget-object v29, v23, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_c

    .line 1829
    const/16 v29, 0x3

    aget-object v29, v23, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNetworkInfo(II)V

    .line 1832
    :cond_c
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0xe

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_d

    .line 1833
    const/16 v29, 0xd

    aget-object v29, v23, v29

    if-eqz v29, :cond_d

    const/16 v29, 0xd

    aget-object v29, v23, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_d

    .line 1834
    const/16 v29, 0xd

    aget-object v29, v23, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRejectCause(I)V

    .line 1836
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "set voice reject cause to "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1839
    :cond_d
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0xe

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_e

    .line 1840
    const/16 v29, 0xe

    aget-object v29, v23, v29

    if-eqz v29, :cond_e

    const/16 v29, 0xe

    aget-object v29, v23, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_e

    .line 1841
    const/16 v29, 0xe

    aget-object v29, v23, v29

    const/16 v30, 0x10

    invoke-static/range {v29 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v18

    .line 1844
    :cond_e
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "EVENT_POLL_STATE_REGISTRATION mSS getRilVoiceRadioTechnology:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v30

    .line 1844
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1846
    const-string/jumbo v30, ", regState:"

    .line 1844
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1847
    const-string/jumbo v30, ", NewSS RilVoiceRadioTechnology:"

    .line 1844
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v30

    .line 1844
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1849
    const-string/jumbo v30, ", lac:"

    .line 1844
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1850
    const-string/jumbo v30, ", cid:"

    .line 1844
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1856
    :cond_f
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRegState(I)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 1861
    const v30, 0x1120053

    .line 1860
    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 1862
    .local v13, "isVoiceCapable":Z
    const/16 v29, 0xd

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 1863
    const/16 v29, 0xa

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    .line 1862
    :cond_10
    if-eqz v13, :cond_14

    .line 1867
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 1871
    :goto_2
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "regState = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "isVoiceCapable = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1872
    const-string/jumbo v30, "mEmergencyOnly = "

    .line 1871
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1872
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v30, v0

    .line 1871
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1876
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_12

    .line 1877
    const-string/jumbo v29, "states.length > 3"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1880
    const v29, 0xfffe

    move/from16 v0, v29

    if-eq v14, v0, :cond_11

    const v29, 0xfffffff

    move/from16 v0, v29

    if-ne v7, v0, :cond_15

    .line 1881
    :cond_11
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "unknown lac:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " or cid:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1894
    :cond_12
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2057
    .end local v7    # "cid":I
    .end local v13    # "isVoiceCapable":Z
    .end local v14    # "lac":I
    .end local v18    # "psc":I
    .end local v19    # "reasonRegStateDenied":I
    .end local v20    # "regState":I
    .end local v21    # "rejCause":I
    .end local v23    # "states":[Ljava/lang/String;
    .end local v28    # "type":I
    :catch_0
    move-exception v11

    .line 2058
    .local v11, "ex":Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1851
    .end local v11    # "ex":Ljava/lang/RuntimeException;
    .restart local v7    # "cid":I
    .restart local v14    # "lac":I
    .restart local v18    # "psc":I
    .restart local v19    # "reasonRegStateDenied":I
    .restart local v20    # "regState":I
    .restart local v21    # "rejCause":I
    .restart local v23    # "states":[Ljava/lang/String;
    .restart local v28    # "type":I
    :catch_1
    move-exception v10

    .line 1852
    .local v10, "ex":Ljava/lang/NumberFormatException;
    :try_start_3
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "error parsing RegistrationState: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1864
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    .restart local v13    # "isVoiceCapable":Z
    :cond_13
    const/16 v29, 0xc

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 1865
    const/16 v29, 0xe

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 1869
    :cond_14
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_2

    .line 1884
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v29

    .line 1885
    const/16 v30, 0x1

    .line 1884
    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_12

    .line 1887
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrCellLac:I

    .line 1888
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrCellCid:I

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14, v7}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    goto/16 :goto_3

    .line 1899
    .end local v7    # "cid":I
    .end local v13    # "isVoiceCapable":Z
    .end local v14    # "lac":I
    .end local v18    # "psc":I
    .end local v19    # "reasonRegStateDenied":I
    .end local v20    # "regState":I
    .end local v21    # "rejCause":I
    .end local v23    # "states":[Ljava/lang/String;
    .end local v28    # "type":I
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [Ljava/lang/String;

    .line 1901
    .restart local v23    # "states":[Ljava/lang/String;
    const/16 v28, 0x0

    .line 1902
    .restart local v28    # "type":I
    const/16 v20, 0x4

    .line 1903
    .restart local v20    # "regState":I
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1904
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 1905
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    if-lez v29, :cond_1c

    .line 1907
    const/16 v29, 0x0

    :try_start_4
    aget-object v29, v23, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1912
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_19

    .line 1913
    const/16 v29, 0x1

    aget-object v29, v23, v29

    if-eqz v29, :cond_17

    const/16 v29, 0x1

    aget-object v29, v23, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_17

    .line 1914
    const/16 v29, 0x1

    aget-object v29, v23, v29

    const/16 v30, 0x10

    invoke-static/range {v29 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v27

    .line 1915
    .restart local v27    # "tempLac":I
    if-gez v27, :cond_16

    .line 1916
    const-string/jumbo v29, "set Lac to previous value"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v27

    .line 1919
    :cond_16
    move/from16 v17, v27

    .line 1921
    .end local v27    # "tempLac":I
    :cond_17
    const/16 v29, 0x2

    aget-object v29, v23, v29

    if-eqz v29, :cond_19

    const/16 v29, 0x2

    aget-object v29, v23, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_19

    .line 1922
    const/16 v29, 0x2

    aget-object v29, v23, v29

    const/16 v30, 0x10

    invoke-static/range {v29 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v26

    .line 1923
    .restart local v26    # "tempCid":I
    if-gez v26, :cond_18

    .line 1924
    const-string/jumbo v29, "set Cid to previous value"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v26

    .line 1927
    :cond_18
    move/from16 v16, v26

    .line 1934
    .end local v26    # "tempCid":I
    :cond_19
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_1a

    const/16 v29, 0x3

    aget-object v29, v23, v29

    if-eqz v29, :cond_1a

    .line 1935
    const/16 v29, 0x3

    aget-object v29, v23, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 1937
    :cond_1a
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_1b

    const/16 v29, 0x4

    aget-object v29, v23, v29

    if-eqz v29, :cond_1b

    .line 1938
    const/16 v29, 0x3

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_1b

    .line 1939
    const/16 v29, 0x4

    aget-object v29, v23, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1940
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "<mNewReasonDataDenied> "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->setDataRejectCause(I)V

    .line 1942
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "set data reject cause to "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1944
    :cond_1b
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_1c

    const/16 v29, 0x5

    aget-object v29, v23, v29

    if-eqz v29, :cond_1c

    .line 1945
    const/16 v29, 0x5

    aget-object v29, v23, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 1946
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "<mNewMaxDataCalls> "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1952
    :cond_1c
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v8

    .line 1953
    .local v8, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilDataRegState(I)V

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 1955
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setProprietaryDataRadioTechnology(I)V

    .line 1962
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "handlPollStateResultMessage: GsmSST setDataRegState="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1963
    const-string/jumbo v30, " regState="

    .line 1962
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1964
    const-string/jumbo v30, " dataRadioTechnology="

    .line 1962
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1948
    .end local v8    # "dataRegState":I
    :catch_2
    move-exception v10

    .line 1949
    .restart local v10    # "ex":Ljava/lang/NumberFormatException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "error parsing GprsRegistrationState: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1970
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    .end local v20    # "regState":I
    .end local v23    # "states":[Ljava/lang/String;
    .end local v28    # "type":I
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, [Ljava/lang/String;

    .line 1972
    .local v15, "opNames":[Ljava/lang/String;
    if-eqz v15, :cond_23

    array-length v0, v15

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_23

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v29

    if-eqz v29, :cond_1d

    .line 1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v6

    .line 1977
    :goto_5
    if-eqz v6, :cond_1e

    .line 1978
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget-object v30, v15, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v6, v1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    :goto_6
    const/16 v29, 0x2

    aget-object v29, v15, v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1976
    :cond_1d
    const/4 v6, 0x0

    .local v6, "brandOverride":Ljava/lang/String;
    goto :goto_5

    .line 1981
    .end local v6    # "brandOverride":Ljava/lang/String;
    :cond_1e
    const/16 v24, 0x0

    .line 1982
    .local v24, "strOperatorLong":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1983
    .local v25, "strOperatorShort":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v22

    .line 1985
    .local v22, "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v29, v0

    .line 1986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 1987
    const/16 v32, 0x2

    aget-object v32, v15, v32

    const/16 v33, 0x1

    .line 1985
    invoke-interface/range {v29 .. v33}, Lcom/android/internal/telephony/CommandsInterface;->lookupOperatorNameFromNetwork(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    .line 1988
    .local v24, "strOperatorLong":Ljava/lang/String;
    if-eqz v24, :cond_1f

    .line 1989
    const-string/jumbo v29, "EVENT_POLL_STATE_OPERATOR: OperatorLong use lookFromNetwork"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2008
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v29, v0

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 2010
    const/16 v32, 0x2

    aget-object v32, v15, v32

    const/16 v33, 0x0

    .line 2008
    invoke-interface/range {v29 .. v33}, Lcom/android/internal/telephony/CommandsInterface;->lookupOperatorNameFromNetwork(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v25

    .line 2011
    .local v25, "strOperatorShort":Ljava/lang/String;
    if-eqz v25, :cond_21

    .line 2012
    const-string/jumbo v29, "EVENT_POLL_STATE_OPERATOR: OperatorShort use lookupOperatorNameFromNetwork"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2023
    :goto_8
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "EVENT_POLL_STATE_OPERATOR: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget-object v30, v15, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1993
    .local v25, "strOperatorShort":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v29

    .line 1992
    invoke-static/range {v29 .. v29}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v29

    .line 1993
    const/16 v30, 0x2

    aget-object v30, v15, v30

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v31

    .line 1993
    const/16 v32, 0x1

    .line 1991
    move-object/from16 v0, v22

    move/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v32

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 1995
    if-eqz v24, :cond_20

    .line 1996
    const-string/jumbo v29, "EVENT_POLL_STATE_OPERATOR: OperatorLong use lookupOperatorName"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2001
    const/16 v29, 0x2

    aget-object v29, v15, v29

    .line 2000
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOpAlphaLongForHK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_7

    .line 2004
    :cond_20
    const-string/jumbo v29, "EVENT_POLL_STATE_OPERATOR: OperatorLong use value from ril"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2005
    const/16 v29, 0x0

    aget-object v24, v15, v29

    goto/16 :goto_7

    .line 2015
    .local v25, "strOperatorShort":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v29

    invoke-static/range {v29 .. v29}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v29

    const/16 v30, 0x2

    aget-object v30, v15, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v31

    const/16 v32, 0x0

    .line 2014
    move-object/from16 v0, v22

    move/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v32

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    .line 2016
    if-eqz v25, :cond_22

    .line 2017
    const-string/jumbo v29, "EVENT_POLL_STATE_OPERATOR: OperatorShort use lookupOperatorName"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2019
    :cond_22
    const-string/jumbo v29, "EVENT_POLL_STATE_OPERATOR: OperatorShort use value from ril"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2020
    const/16 v29, 0x1

    aget-object v25, v15, v29

    goto/16 :goto_8

    .line 2027
    .end local v22    # "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .end local v24    # "strOperatorLong":Ljava/lang/String;
    .end local v25    # "strOperatorShort":Ljava/lang/String;
    :cond_23
    if-eqz v15, :cond_3

    array-length v0, v15

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 2028
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "opNames:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x0

    aget-object v30, v15, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " len="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x0

    aget-object v30, v15, v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {v29 .. v32}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    const/16 v29, 0x0

    aget-object v29, v15, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_24

    const/16 v29, 0x0

    aget-object v29, v15, v29

    const-string/jumbo v30, "000000"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_25

    .line 2035
    :cond_24
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2033
    :cond_25
    const/16 v29, 0x0

    aget-object v29, v15, v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2042
    .end local v15    # "opNames":[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [I

    .line 2043
    .local v12, "ints":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    const/16 v29, 0x0

    aget v29, v12, v29

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_26

    const/16 v29, 0x1

    :goto_9
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 2044
    const/16 v29, 0x0

    aget v29, v12, v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->isManualNetSelAllowed()Z

    move-result v29

    if-nez v29, :cond_3

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2051
    const-string/jumbo v29, " Forcing Automatic Network Selection, manual selection is not allowed"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 2043
    :cond_26
    const/16 v29, 0x0

    goto :goto_9

    .line 1791
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1313
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1316
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1319
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/RadioManager;->sendRequestBeforeSetRadioPower(ZI)V

    .line 1321
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1311
    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 3350
    const/4 v0, 0x0

    .line 3351
    .local v0, "isAllowed":Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->isVoiceRadioTechnologyHigher(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3352
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 3353
    :cond_0
    const/4 v0, 0x1

    .line 3358
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3359
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v1

    .line 3360
    .local v1, "m":I
    if-ne v1, v3, :cond_2

    .line 3361
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isSrlteSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 3366
    .end local v1    # "m":I
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isConcurrentVoiceAndDataAllowed(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3368
    return v0

    .line 3361
    .restart local v1    # "m":I
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHPlmn(Ljava/lang/String;)Z
    .locals 10
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5033
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 5034
    .local v4, "mccmnc":Ljava/lang/String;
    if-nez p1, :cond_0

    return v7

    .line 5036
    :cond_0
    if-eqz v4, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5037
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isHPlmn getSIMOperatorNumeric error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5038
    return v7

    .line 5041
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5042
    return v8

    .line 5044
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v9, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    .line 5045
    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 5044
    if-eqz v5, :cond_4

    .line 5046
    return v8

    .line 5051
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v5

    if-ne v5, v8, :cond_9

    .line 5052
    const/4 v2, 0x0

    .line 5053
    .local v2, "isServingPlmnInGroup":Z
    const/4 v1, 0x0

    .line 5055
    .local v1, "isHomePlmnInGroup":Z
    if-eqz p1, :cond_9

    if-nez v4, :cond_9

    .line 5056
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_9

    .line 5058
    const/4 v2, 0x0

    .line 5059
    const/4 v1, 0x0

    .line 5062
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v5, v5, v0

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 5063
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5064
    const/4 v2, 0x1

    .line 5066
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5067
    const/4 v1, 0x1

    .line 5062
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5072
    :cond_7
    if-eqz v2, :cond_8

    .line 5073
    if-eqz v1, :cond_8

    .line 5074
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "plmn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "is in customized ehplmn table"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5075
    return v8

    .line 5056
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5082
    .end local v0    # "i":I
    .end local v1    # "isHomePlmnInGroup":Z
    .end local v2    # "isServingPlmnInGroup":Z
    .end local v3    # "j":I
    :cond_9
    return v7
.end method

.method public isNumeric(Ljava/lang/String;)Z
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 4700
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4708
    .local v2, "testNum":I
    const/4 v3, 0x1

    return v3

    .line 4704
    .end local v2    # "testNum":I
    :catch_0
    move-exception v0

    .line 4705
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNumeric:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4706
    return v5

    .line 4701
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 4702
    .local v1, "eNFE":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNumeric:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4703
    return v5
.end method

.method public isPsRegStateRoamByUnsol()Z
    .locals 3

    .prologue
    .line 1239
    const/4 v0, 0x0

    .line 1241
    .local v0, "psRegState":Z
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRegStateRaw:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1242
    const/4 v0, 0x1

    .line 1244
    :cond_0
    return v0
.end method

.method public isSameRadioTechnologyMode(II)Z
    .locals 5
    .param p1, "nRadioTechnology1"    # I
    .param p2, "nRadioTechnology2"    # I

    .prologue
    const/16 v4, 0xf

    const/16 v0, 0xe

    const/16 v3, 0xd

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 5013
    if-ne p1, v0, :cond_1

    .line 5014
    if-ne p2, v0, :cond_1

    .line 5017
    :cond_0
    return v1

    .line 5015
    :cond_1
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    .line 5016
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    .line 5018
    :cond_2
    if-lt p1, v2, :cond_4

    .line 5019
    if-gt p1, v3, :cond_4

    .line 5021
    :cond_3
    if-lt p2, v2, :cond_6

    .line 5022
    if-gt p2, v3, :cond_6

    .line 5024
    :goto_0
    return v1

    .line 5020
    :cond_4
    if-eq p1, v4, :cond_3

    .line 5026
    :cond_5
    const/4 v0, 0x0

    return v0

    .line 5023
    :cond_6
    if-ne p2, v4, :cond_5

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3854
    const-string/jumbo v0, "GsmSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GsmSST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3859
    const-string/jumbo v0, "GsmSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GsmSST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3858
    return-void
.end method

.method public onImsCapabilityChanged()V
    .locals 1

    .prologue
    .line 4010
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4009
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3825
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_0

    .line 3826
    return-void

    .line 3829
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 3831
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_3

    .line 3832
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_2

    .line 3833
    const-string/jumbo v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3834
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 3835
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_1

    .line 3836
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 3838
    :cond_1
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3839
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 3841
    :cond_2
    if-eqz v0, :cond_3

    .line 3842
    const-string/jumbo v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3843
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 3844
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3845
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v2, 0x11

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3846
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_3

    .line 3847
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v2, 0x10

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3824
    :cond_3
    return-void
.end method

.method public pollState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2258
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPreferredNetworkModeSettings(I)I

    move-result v0

    .line 2261
    .local v0, "currentNetworkMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pollState RadioState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", currentNetworkMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2264
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    .line 2265
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aput v4, v1, v4

    .line 2268
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    if-eqz v1, :cond_0

    .line 2269
    const-string/jumbo v1, "pollState is ignored!!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2270
    return-void

    .line 2273
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-getcom_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2308
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 2309
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2311
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    const/4 v3, 0x6

    .line 2310
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2309
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 2313
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 2314
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2316
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    const/4 v3, 0x5

    .line 2315
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2314
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 2318
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 2319
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2321
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    const/4 v3, 0x4

    .line 2320
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2319
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 2323
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 2324
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2326
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    const/16 v3, 0xe

    .line 2325
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2324
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 2255
    :goto_1
    return-void

    .line 2277
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2279
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 2280
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2281
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2282
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2284
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNullState()V

    .line 2286
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_1

    .line 2290
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2291
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 2292
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2293
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2294
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 2296
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNullState()V

    .line 2299
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 2298
    const/16 v2, 0x12

    if-eq v2, v1, :cond_1

    .line 2300
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 2273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 6
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    const/4 v5, -0x1

    .line 3909
    monitor-enter p0

    .line 3910
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v3, :cond_2

    .line 3911
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 3912
    .local v0, "dds":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v2

    .line 3913
    .local v2, "phoneSubId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3914
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v2

    .line 3918
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "powerOffRadioSafely phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3919
    const-string/jumbo v4, ", dds="

    .line 3918
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3919
    const-string/jumbo v4, ", mPhone.getSubId()="

    .line 3918
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3919
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v4

    .line 3918
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3920
    const-string/jumbo v4, ", phoneSubId="

    .line 3918
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3921
    if-eq v0, v5, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3922
    if-eq v0, v2, :cond_3

    .line 3925
    :cond_1
    const-string/jumbo v3, "radioTurnedOff"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 3926
    const-string/jumbo v3, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3927
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "dds":I
    .end local v2    # "phoneSubId":I
    :cond_2
    :goto_0
    monitor-exit p0

    .line 3908
    return-void

    .line 3930
    .restart local v0    # "dds":I
    .restart local v2    # "phoneSubId":I
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3931
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 3932
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 3933
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 3936
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3937
    const-string/jumbo v3, "radioTurnedOff"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 3950
    :goto_1
    if-eq v0, v5, :cond_5

    .line 3951
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 3952
    const v4, 0x7fffffff

    .line 3951
    if-ne v3, v4, :cond_a

    .line 3953
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isOnlyIMSorEIMSPdnConnected()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3954
    :cond_6
    const-string/jumbo v3, "Data disconnected (no data sub), turn off radio right away."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3956
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 3957
    return-void

    .line 3939
    :cond_7
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    .line 3940
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v4

    .line 3939
    if-eq v3, v4, :cond_8

    .line 3941
    const-string/jumbo v3, "mPhone is not current Ps Phone, radio off right now"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3942
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 3943
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 3944
    return-void

    .line 3946
    :cond_8
    :try_start_3
    const-string/jumbo v3, "radioTurnedOff"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3909
    .end local v0    # "dds":I
    .end local v2    # "phoneSubId":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3959
    .restart local v0    # "dds":I
    .restart local v2    # "phoneSubId":I
    :cond_9
    :try_start_4
    const-string/jumbo v3, "Data is active on.  Wait for all data disconnect"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3960
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 3961
    const/16 v4, 0x3e9

    const/4 v5, 0x0

    .line 3960
    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3962
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 3966
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isOnlyIMSorEIMSPdnConnected()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3968
    const-string/jumbo v3, "Only IMS or EIMS connected, turn off radio right away."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3971
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 3972
    return-void

    .line 3975
    :cond_b
    :try_start_5
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3976
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x26

    iput v3, v1, Landroid/os/Message;->what:I

    .line 3977
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 3978
    const-wide/16 v4, 0x7530

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3979
    const-string/jumbo v3, "Wait upto 30s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3980
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto/16 :goto_0

    .line 3982
    :cond_c
    const-string/jumbo v3, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3983
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 3984
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public refreshSpnDisplay()V
    .locals 7

    .prologue
    .line 1325
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1326
    .local v2, "numeric":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1327
    .local v0, "newAlphaLong":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1329
    .local v1, "newAlphaShort":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1348
    .end local v0    # "newAlphaLong":Ljava/lang/String;
    .end local v1    # "newAlphaShort":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 1324
    return-void

    .line 1330
    .restart local v0    # "newAlphaLong":Ljava/lang/String;
    .restart local v1    # "newAlphaShort":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v3

    .line 1331
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 1332
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    .line 1330
    invoke-virtual {v3, v4, v2, v6, v5}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1333
    .local v0, "newAlphaLong":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v3

    .line 1334
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 1335
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    .line 1333
    invoke-virtual {v3, v4, v2, v6, v5}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1340
    .local v1, "newAlphaShort":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1341
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOpAlphaLongForHK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1344
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshSpnDisplay set alpha to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1345
    const-string/jumbo v4, ","

    .line 1344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1346
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDeviceRatMode(I)V
    .locals 11
    .param p1, "phoneId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1131
    const-string/jumbo v7, "[setDeviceRatMode]+"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1132
    const/4 v2, 0x0

    .line 1133
    .local v2, "hasCdmaApp":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1134
    .local v0, "capabilityPhoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1135
    if-ne p1, v0, :cond_2

    .line 1136
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCardType(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->containsCdmaApp(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1137
    const-string/jumbo v7, "[setDeviceRatMode]- hasCdmaApp=true"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1138
    const/4 v2, 0x1

    .line 1140
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 1141
    .local v3, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getSvlteRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v7

    .line 1142
    sget-object v8, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 1141
    if-ne v7, v8, :cond_1

    .line 1143
    const-string/jumbo v7, "[setDeviceRatMode]- SVLTE LTE data only mode, do not set ERAT"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1144
    return-void

    .line 1146
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getEngineerMode()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 1147
    const-string/jumbo v7, "FTA LTE only, do not set ERAT"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1148
    return-void

    .line 1152
    .end local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    :cond_2
    const/4 v6, 0x1

    .line 1153
    .local v6, "targetNetworkMode":I
    const/4 v5, -0x1

    .line 1155
    .local v5, "restrictedNwMode":I
    const-string/jumbo v7, "ro.mtk_bsp_package"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1157
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v7}, Lcom/mediatek/common/telephony/IServiceStateExt;->isSupportRatBalancing()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1158
    const-string/jumbo v7, "Network Type is controlled by RAT Blancing, no need to set network type"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1159
    const-string/jumbo v7, "[setDeviceRatMode]-"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    return-void

    .line 1162
    :catch_0
    move-exception v1

    .line 1163
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1166
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    const-string/jumbo v7, "ro.telephony.cl.config"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 1167
    const/16 v6, 0x9

    .line 1206
    :cond_4
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[setDeviceRatMode]targetNetworkMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1207
    const-string/jumbo v8, " capcapabilityPhoneId = "

    .line 1206
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1209
    if-ltz v6, :cond_c

    .line 1211
    if-eqz v2, :cond_b

    .line 1212
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 1214
    .restart local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    .line 1215
    sget-object v8, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1214
    if-ne v7, v8, :cond_a

    .line 1216
    const-string/jumbo v7, "[setDeviceRatMode]- isRoamingMode=true"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getSvlteRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    .line 1220
    .local v4, "ratMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[setDeviceRatMode]- setRatMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v7

    invoke-virtual {v7, v4, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Landroid/os/Message;)Z

    .line 1223
    return-void

    .line 1168
    .end local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v4    # "ratMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    :cond_5
    if-ne p1, v0, :cond_9

    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPreferredNetworkModeSettings(I)I

    move-result v6

    .line 1170
    const-string/jumbo v7, "ro.mtk_bsp_package"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1172
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 1173
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1172
    invoke-interface {v7, v8, v9}, Lcom/mediatek/common/telephony/IServiceStateExt;->getNetworkModeFor3MProj(Ljava/lang/Object;Z)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1178
    :cond_6
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[setDeviceRatMode]networkModeFor3MProj, restrictedNwMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1179
    if-ltz v5, :cond_7

    .line 1180
    if-eq v5, v6, :cond_7

    .line 1181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[setDeviceRatMode]networkModeFor3MProj, Revise targetNetworkMode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1183
    move v6, v5

    .line 1186
    :cond_7
    const-string/jumbo v7, "ro.mtk_bsp_package"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1188
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 1189
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    .line 1188
    invoke-interface {v7, p1, v8}, Lcom/mediatek/common/telephony/IServiceStateExt;->needAutoSwitchRatMode(ILjava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    .line 1194
    :cond_8
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[setDeviceRatMode]needAutoSwitchRatMode, restrictedNwMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1195
    if-ltz v5, :cond_4

    .line 1196
    if-eq v5, v6, :cond_4

    .line 1197
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[setDeviceRatMode]needAutoSwitchRatMode, Revise targetNetworkMode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1199
    move v6, v5

    goto/16 :goto_0

    .line 1174
    :catch_1
    move-exception v1

    .line 1175
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_1

    .line 1190
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 1191
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 1203
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_9
    const-string/jumbo v7, "[setDeviceRatMode]Not major phone"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1225
    .restart local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    :cond_a
    const-string/jumbo v7, "[setDeviceRatMode]- Not USIM/SIM, do not set ERAT"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1226
    return-void

    .line 1230
    .end local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    :cond_b
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v6, v10}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1231
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[setDeviceRatMode]- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1130
    :goto_3
    return-void

    .line 1233
    :cond_c
    const-string/jumbo v7, "[setDeviceRatMode]- targetNetworkMode invalid!!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setEverIVSR(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 4146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEverIVSR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4147
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverIVSR:Z

    .line 4150
    if-eqz p1, :cond_1

    .line 4151
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mediatek.intent.action.IVSR_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4152
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4153
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4155
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4156
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4159
    :cond_0
    const-string/jumbo v1, "broadcast ACTION_IVSR_NOTIFY intent"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4161
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4144
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 3
    .param p1, "registered"    # Z

    .prologue
    .line 3993
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 4006
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 3992
    return-void

    .line 3994
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v2, :cond_0

    .line 3995
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 3997
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3998
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3999
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4000
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 4002
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4003
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDeviceShuttingDown = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1257
    const-string/jumbo v5, " mDesiredPowerState = "

    .line 1256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1257
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 1256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1258
    const-string/jumbo v5, " getRadioState = "

    .line 1256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1258
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    .line 1256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1259
    const-string/jumbo v5, " mPowerOffDelayNeed = "

    .line 1256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1259
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPowerOffDelayNeed:Z

    .line 1256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1260
    const-string/jumbo v5, " mAlarmSwitch = "

    .line 1256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1260
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 1256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1263
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v4, :cond_0

    .line 1264
    const-string/jumbo v4, "mAlarmSwitch == true"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1265
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1266
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1267
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1268
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 1272
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v4, :cond_2

    .line 1273
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v5, :cond_2

    .line 1275
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-static {v8, v4}, Lcom/mediatek/internal/telephony/RadioManager;->sendRequestBeforeSetRadioPower(ZI)V

    .line 1277
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1307
    :cond_1
    :goto_0
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverRadioHandled:Z

    .line 1248
    return-void

    .line 1278
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1279
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOp01Support()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverRadioHandled:Z

    if-eqz v4, :cond_5

    .line 1304
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1305
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    goto :goto_0

    .line 1279
    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v4, :cond_4

    .line 1280
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v5, :cond_4

    .line 1282
    :cond_6
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPowerOffDelayNeed:Z

    if-eqz v4, :cond_9

    .line 1283
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v4, :cond_8

    .line 1297
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1298
    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_0

    .line 1284
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_8
    const-string/jumbo v4, "mImsRegistrationOnOff == true"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1285
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1287
    .restart local v1    # "context":Landroid/content/Context;
    const-string/jumbo v4, "alarm"

    .line 1286
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1289
    .restart local v0    # "am":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.ACTION_RADIO_OFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1290
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 1292
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 1293
    const-string/jumbo v4, "Alarm setting"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 1294
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1301
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1302
    .restart local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto/16 :goto_0
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2182
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    .line 2183
    .local v2, "isVoiceInService":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 2184
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2186
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2188
    const/4 v3, 0x2

    .line 2187
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 2198
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v1, 0x1

    .line 2199
    .local v1, "isDataInService":Z
    :goto_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 2200
    .local v0, "dataRegType":I
    if-eqz v1, :cond_1

    .line 2201
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2202
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 2180
    :cond_1
    :goto_3
    return-void

    .line 2182
    .end local v0    # "dataRegType":I
    .end local v1    # "isDataInService":Z
    .end local v2    # "isVoiceInService":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isVoiceInService":Z
    goto :goto_0

    .line 2191
    :cond_3
    const/4 v3, 0x3

    .line 2190
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_1

    .line 2194
    :cond_4
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_1

    .line 2198
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isDataInService":Z
    goto :goto_2

    .line 2203
    .restart local v0    # "dataRegType":I
    :cond_6
    invoke-static {v0}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2204
    if-eqz v2, :cond_7

    .line 2206
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_3

    .line 2210
    :cond_7
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_3

    .line 2214
    :cond_8
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_3
.end method

.method public setSvlteServiceStateTracker(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)V
    .locals 2
    .param p1, "lteSST"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    .prologue
    .line 4965
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    .line 4966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSvlteServiceStateTracker mSvlteSST = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4964
    return-void
.end method

.method protected updateCellInfoRate()V
    .locals 4

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x0

    .line 4717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCellInfoRate(),mCellInfoRate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4718
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    if-eqz v0, :cond_2

    .line 4719
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 4720
    const-string/jumbo v0, "cancel previous timer if any"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4721
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4722
    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    .line 4725
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    .line 4727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "schedule timer with period = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4728
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 4716
    :cond_1
    :goto_0
    return-void

    .line 4729
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoRate:I

    if-ne v0, v3, :cond_1

    .line 4730
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 4731
    const-string/jumbo v0, "cancel cell info timer if any"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4732
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4733
    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellInfoTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method protected updateOperatorAlpha(Ljava/lang/String;)I
    .locals 3
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 4878
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    .line 4879
    .local v0, "myPhoneId":I
    if-nez v0, :cond_1

    .line 4880
    const-string/jumbo v1, "gsm.operator.alpha"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4888
    :cond_0
    :goto_0
    return v2

    .line 4881
    :cond_1
    if-ne v0, v2, :cond_2

    .line 4882
    const-string/jumbo v1, "gsm.operator.alpha.2"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4883
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4884
    const-string/jumbo v1, "gsm.operator.alpha.3"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4885
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4886
    const-string/jumbo v1, "gsm.operator.alpha.4"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateRoamingState()V
    .locals 9

    .prologue
    .line 2107
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-nez v6, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 2108
    :goto_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2112
    :cond_0
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set raoming="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",mGsmRoaming= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2113
    const-string/jumbo v7, ",mDataRoaming= "

    .line 2112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2113
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 2112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2116
    const/4 v4, 0x0

    .line 2117
    .local v4, "isRoamingForSpecialSim":Z
    const-string/jumbo v6, "ro.mtk_bsp_package"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2119
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2120
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2121
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 2122
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 2121
    invoke-interface {v6, v7, v8}, Lcom/mediatek/common/telephony/IServiceStateExt;->isRoamingForSpecialSIM(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 2119
    if-eqz v6, :cond_1

    .line 2123
    const/4 v4, 0x1

    .line 2130
    :cond_1
    :goto_2
    if-nez v4, :cond_3

    .line 2131
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2137
    :cond_2
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->isMccMncMarkedAsNonRoaming(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2138
    const/4 v5, 0x0

    .line 2145
    :cond_3
    :goto_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v5}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 2148
    const-string/jumbo v6, "carrier_config"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ICarrierConfigLoader;

    .line 2149
    .local v1, "configLoader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    if-eqz v1, :cond_d

    .line 2151
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v6

    invoke-interface {v1, v6}, Lcom/android/internal/telephony/ICarrierConfigLoader;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2153
    .local v0, "b":Landroid/os/PersistableBundle;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2154
    const-string/jumbo v6, "updateRoamingState: carrier config override always on home network"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2155
    const/4 v5, 0x0

    .line 2172
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_4
    :goto_5
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v5}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2173
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v5}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2093
    return-void

    .line 2107
    .end local v1    # "configLoader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    .end local v4    # "isRoamingForSpecialSim":Z
    :cond_5
    const/4 v5, 0x1

    .local v5, "roaming":Z
    goto/16 :goto_0

    .line 2109
    .end local v5    # "roaming":Z
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v6

    .line 2108
    if-eqz v6, :cond_0

    .line 2110
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "roaming":Z
    goto/16 :goto_1

    .line 2125
    .end local v5    # "roaming":Z
    .restart local v4    # "isRoamingForSpecialSim":Z
    :catch_0
    move-exception v3

    .line 2126
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 2132
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v6

    .line 2131
    if-eqz v6, :cond_2

    .line 2133
    :cond_9
    const-string/jumbo v6, "set raoming fasle due to special roaming agreements and MVNO\'s."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2134
    const/4 v5, 0x0

    .restart local v5    # "roaming":Z
    goto :goto_3

    .line 2139
    .end local v5    # "roaming":Z
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->isMccMncMarkedAsRoaming(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2140
    const/4 v5, 0x1

    .restart local v5    # "roaming":Z
    goto :goto_4

    .line 2156
    .end local v5    # "roaming":Z
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v1    # "configLoader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    :cond_b
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRoamingState: carrier config override set non roaming:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2158
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 2157
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2159
    const/4 v5, 0x0

    .restart local v5    # "roaming":Z
    goto :goto_5

    .line 2160
    .end local v5    # "roaming":Z
    :cond_c
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRoamingState: carrier config override set roaming:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2162
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 2161
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2163
    const/4 v5, 0x1

    .restart local v5    # "roaming":Z
    goto/16 :goto_5

    .line 2165
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v5    # "roaming":Z
    :catch_1
    move-exception v2

    .line 2166
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "updateRoamingState: unable to access carrier config service"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2169
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_d
    const-string/jumbo v6, "updateRoamingState: no carrier config service available"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method protected updateSpnDisplay()V
    .locals 1

    .prologue
    .line 1353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay(Z)V

    .line 1352
    return-void
.end method

.method protected updateSpnDisplay(Z)V
    .locals 38
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 1357
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v3, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->updateGsmCdmaServiceState(Landroid/telephony/ServiceState;I)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getUpdateSvlteSpnPhoneId(I)I

    move-result v34

    .line 1360
    .local v34, "updateSpnPhoneId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    move/from16 v0, v34

    if-eq v0, v3, :cond_0

    .line 1361
    const-string/jumbo v3, "ignore updateSpnDisplay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1362
    return-void

    .line 1364
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getPreUpdateSvlteSpnPhoneId()I

    move-result v3

    move/from16 v0, v34

    if-ne v0, v3, :cond_1

    .line 1365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getUpdateSvlteSpnSstType()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1366
    :cond_1
    const/16 p1, 0x1

    .line 1368
    .end local p1    # "forceUpdate":Z
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "updateSpnDisplay, Use GSMSST ("

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1369
    const-string/jumbo v35, ") to update spn display, forceUpdate = "

    .line 1368
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1371
    .end local v34    # "updateSpnPhoneId":I
    :cond_3
    const/16 v29, 0x0

    .line 1372
    .local v29, "simRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1373
    .local v24, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v24, :cond_4

    move-object/from16 v29, v24

    .line 1374
    check-cast v29, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 1377
    .end local v29    # "simRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_4
    if-eqz v29, :cond_1d

    .line 1378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 1377
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v26

    .line 1379
    .local v26, "rule":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v30

    .line 1380
    .local v30, "strNumPlmn":Ljava/lang/String;
    if-eqz v29, :cond_1e

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v8

    .line 1381
    .local v8, "spn":Ljava/lang/String;
    :goto_1
    const/16 v27, 0x0

    .line 1382
    .local v27, "sEons":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1383
    .local v5, "showPlmn":Z
    const/4 v6, 0x0

    .line 1384
    .local v6, "plmn":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1385
    .local v25, "realPlmn":Ljava/lang/String;
    if-eqz v29, :cond_1f

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v20

    .line 1388
    .local v20, "mSimOperatorNumeric":Ljava/lang/String;
    :goto_2
    if-eqz v29, :cond_20

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v35

    const/16 v36, 0x1

    .line 1388
    move-object/from16 v0, v29

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getEonsIfExist(Ljava/lang/String;IZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v27

    .line 1394
    .end local v27    # "sEons":Ljava/lang/String;
    :goto_3
    if-eqz v27, :cond_21

    .line 1395
    move-object/from16 v6, v27

    .line 1402
    .end local v6    # "plmn":Ljava/lang/String;
    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    const-string/jumbo v3, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1403
    :cond_6
    const-string/jumbo v3, "No matched EONS and No CPHS ONS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    .line 1405
    .local v6, "plmn":Ljava/lang/String;
    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1406
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v6

    .line 1412
    .end local v6    # "plmn":Ljava/lang/String;
    :cond_8
    move-object/from16 v25, v6

    .line 1419
    .local v25, "realPlmn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-eqz v3, :cond_9

    .line 1420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-eqz v3, :cond_9

    .line 1421
    const/4 v5, 0x1

    .line 1422
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 1423
    const v35, 0x1040263

    .line 1422
    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1426
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "updateSpnDisplay mVoiceCapable="

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceCapable:Z

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v35, " mEmergencyOnly="

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1427
    const-string/jumbo v35, " mCi.getRadioState().isOn()="

    .line 1426
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v35

    .line 1426
    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1427
    const-string/jumbo v35, " getVoiceRegState()="

    .line 1426
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v35

    .line 1426
    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1428
    const-string/jumbo v35, " getDataRegState()"

    .line 1426
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v35

    .line 1426
    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1433
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceCapable:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-eqz v3, :cond_a

    .line 1435
    const-string/jumbo v3, "updateSpnDisplay show mEmergencyOnly"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1436
    const/4 v5, 0x1

    .line 1441
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v35, 0x1040263

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1445
    .restart local v6    # "plmn":Ljava/lang/String;
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v35, "1"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1448
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRejectCause()I

    move-result v35

    move/from16 v0, v35

    invoke-interface {v3, v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->needBlankDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1449
    const-string/jumbo v3, "Do NOT show emergency call only display"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1450
    const-string/jumbo v6, ""
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1463
    .end local v6    # "plmn":Ljava/lang/String;
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isDeviceIdAbnormal()I

    move-result v17

    .line 1464
    .local v17, "imeiAbnormal":I
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_23

    .line 1466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    sget-object v35, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v35

    if-eq v3, v0, :cond_b

    .line 1467
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v35, 0x805001b

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1502
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsImeiLock:Z

    if-eqz v3, :cond_c

    .line 1503
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v35, 0x8050066

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1509
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-eqz v3, :cond_d

    .line 1510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_e

    .line 1511
    :cond_d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 1512
    and-int/lit8 v3, v26, 0x2

    .line 1513
    const/16 v35, 0x2

    .line 1512
    move/from16 v0, v35

    if-ne v3, v0, :cond_28

    const/4 v5, 0x1

    .line 1535
    :cond_e
    :goto_7
    move-object v9, v8

    .line 1536
    .local v9, "dataSpn":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1537
    and-int/lit8 v3, v26, 0x1

    .line 1538
    const/16 v35, 0x1

    .line 1537
    move/from16 v0, v35

    if-ne v3, v0, :cond_2a

    const/4 v7, 0x1

    .line 1540
    .local v7, "showSpn":Z
    :goto_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1541
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v3

    .line 1540
    if-eqz v3, :cond_2c

    .line 1544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1545
    const v35, 0x10400c7

    .line 1544
    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1546
    .local v14, "formatVoice":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1547
    const v35, 0x10400c8

    .line 1546
    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1548
    .local v13, "formatData":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 1549
    .local v21, "originalSpn":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v35, 0x0

    aput-object v21, v3, v35

    invoke-static {v14, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1550
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v35, 0x0

    aput-object v21, v3, v35

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1551
    const/4 v7, 0x1

    .line 1552
    const/4 v5, 0x0

    .line 1563
    .end local v8    # "spn":Ljava/lang/String;
    .end local v13    # "formatData":Ljava/lang/String;
    .end local v14    # "formatVoice":Ljava/lang/String;
    .end local v21    # "originalSpn":Ljava/lang/String;
    :cond_f
    :goto_9
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v35, "1"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1570
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "origin showSpn:"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v35, " showPlmn:"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v35, " rule:"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1571
    const/4 v7, 0x0

    .line 1572
    const/4 v5, 0x1

    .line 1573
    const/16 v26, 0x2

    .line 1583
    :cond_10
    :goto_a
    const/4 v15, 0x0

    .line 1584
    .local v15, "hasSIMInserted":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v22

    .line 1585
    .local v22, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v22, :cond_11

    .line 1586
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v16

    .line 1587
    .local v16, "iccCard":Lcom/android/internal/telephony/IccCard;
    if-eqz v16, :cond_11

    .line 1588
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v15

    .line 1591
    .end local v15    # "hasSIMInserted":Z
    .end local v16    # "iccCard":Lcom/android/internal/telephony/IccCard;
    :cond_11
    if-nez v15, :cond_12

    const-string/jumbo v3, "OP01"

    const-string/jumbo v35, "ro.operator.optr"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1599
    :cond_12
    :goto_b
    const-string/jumbo v3, "ro.mtk_wfc_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v35, "1"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    const/16 v35, 0x3

    move/from16 v0, v35

    if-ne v3, v0, :cond_13

    .line 1601
    if-eqz v29, :cond_13

    .line 1603
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v35

    .line 1603
    move/from16 v0, v35

    invoke-static {v3, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->getImsRegInfo()Z

    move-result v18

    .line 1605
    .local v18, "imsRegStatus":Z
    const-string/jumbo v3, "GsmSST"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "Ims Registration Status = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    if-eqz v18, :cond_13

    .line 1607
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSIMCPHSOns()Ljava/lang/String;

    move-result-object v33

    .line 1608
    .local v33, "tempPlmn":Ljava/lang/String;
    if-eqz v33, :cond_13

    .line 1609
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSIMCPHSOns()Ljava/lang/String;
    :try_end_3
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v6

    .line 1618
    .end local v18    # "imsRegStatus":Z
    .end local v33    # "tempPlmn":Ljava/lang/String;
    :cond_13
    :goto_c
    const/16 v31, -0x1

    .line 1619
    .local v31, "subId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v32

    .line 1620
    .local v32, "subIds":[I
    if-eqz v32, :cond_14

    move-object/from16 v0, v32

    array-length v3, v0

    if-lez v3, :cond_14

    .line 1621
    const/4 v3, 0x0

    aget v31, v32, v3

    .line 1625
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSubId:I

    move/from16 v0, v31

    if-ne v3, v0, :cond_15

    .line 1626
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    if-eq v5, v3, :cond_30

    .line 1633
    :cond_15
    :goto_d
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v35, "1"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1635
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v3}, Lcom/mediatek/common/telephony/IServiceStateExt;->allowSpnDisplayed()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1636
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v3

    .line 1635
    if-eqz v3, :cond_17

    .line 1637
    :cond_16
    const-string/jumbo v3, "For CT test case don\'t show SPN."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1638
    const/4 v3, 0x3

    move/from16 v0, v26

    if-ne v0, v3, :cond_17

    .line 1640
    const/4 v7, 0x0

    .line 1641
    const/4 v8, 0x0

    .line 1649
    :cond_17
    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "updateSpnDisplay: changed sending intent rule="

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1651
    const-string/jumbo v35, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\' dataSpn=\'%s\' subId=\'%d\'"

    .line 1649
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v35, 0x6

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    .line 1652
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    const/16 v37, 0x0

    aput-object v36, v35, v37

    const/16 v36, 0x1

    aput-object v6, v35, v36

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    const/16 v37, 0x2

    aput-object v36, v35, v37

    const/16 v36, 0x3

    aput-object v8, v35, v36

    const/16 v36, 0x4

    aput-object v9, v35, v36

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const/16 v37, 0x5

    aput-object v36, v35, v37

    .line 1649
    move-object/from16 v0, v35

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1655
    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1658
    .local v19, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/16 v35, 0x1

    move/from16 v0, v35

    if-ne v3, v0, :cond_18

    .line 1659
    const/high16 v3, 0x20000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1662
    :cond_18
    const-string/jumbo v3, "showSpn"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1663
    const-string/jumbo v3, "spn"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1664
    const-string/jumbo v3, "spnData"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1665
    const-string/jumbo v3, "showPlmn"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1666
    const-string/jumbo v3, "plmn"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1669
    const-string/jumbo v3, "hnbName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    const-string/jumbo v3, "csgId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1671
    const-string/jumbo v3, "domain"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFemtocellDomain:I

    move/from16 v35, v0

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1672
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "use SvlteSST phone id:"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getPhoneId()I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1679
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v35, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v23

    .line 1682
    .local v23, "phoneId":I
    invoke-static/range {v23 .. v23}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v4

    .line 1685
    .local v4, "slotId":I
    const-string/jumbo v3, "ro.mtk_femto_cell_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v35, "1"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    if-nez v3, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    if-eqz v3, :cond_33

    .line 1687
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v35, "1"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 1689
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v3}, Lcom/mediatek/common/telephony/IServiceStateExt;->needToShowCsgId()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v35, " - "

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1691
    .restart local v6    # "plmn":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v6

    .line 1706
    .end local v6    # "plmn":Ljava/lang/String;
    :cond_19
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v28

    .line 1709
    .local v28, "setResult":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    if-eqz v3, :cond_1a

    .line 1710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSvlteSST:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->setUpdateSvlteSpnSstType(I)V

    .line 1713
    :cond_1a
    if-nez v28, :cond_1b

    .line 1714
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpnUpdatePending:Z

    .line 1716
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "showSpn:"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v35, " spn:"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v35, " showPlmn:"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1717
    const-string/jumbo v35, " plmn:"

    .line 1716
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1717
    const-string/jumbo v35, " rule:"

    .line 1716
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1718
    const-string/jumbo v35, " setResult:"

    .line 1716
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1718
    const-string/jumbo v35, " phoneId:"

    .line 1716
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1718
    const-string/jumbo v35, " slotId:"

    .line 1716
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1724
    .end local v4    # "slotId":I
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v23    # "phoneId":I
    .end local v28    # "setResult":Z
    :cond_1c
    if-eqz v7, :cond_34

    if-nez v5, :cond_34

    if-eqz v8, :cond_34

    .line 1726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "updateAllOpertorInfo with spn:"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v8}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1730
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOperatorAlpha(Ljava/lang/String;)I

    .line 1742
    :goto_11
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSubId:I

    .line 1743
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    .line 1744
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    .line 1745
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 1746
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 1747
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 1356
    return-void

    .line 1378
    .end local v5    # "showPlmn":Z
    .end local v7    # "showSpn":Z
    .end local v9    # "dataSpn":Ljava/lang/String;
    .end local v17    # "imeiAbnormal":I
    .end local v20    # "mSimOperatorNumeric":Ljava/lang/String;
    .end local v22    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v25    # "realPlmn":Ljava/lang/String;
    .end local v26    # "rule":I
    .end local v30    # "strNumPlmn":Ljava/lang/String;
    .end local v31    # "subId":I
    .end local v32    # "subIds":[I
    :cond_1d
    const/16 v26, 0x2

    .restart local v26    # "rule":I
    goto/16 :goto_0

    .line 1380
    .restart local v30    # "strNumPlmn":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v8, ""

    .restart local v8    # "spn":Ljava/lang/String;
    goto/16 :goto_1

    .line 1385
    .restart local v5    # "showPlmn":Z
    .local v6, "plmn":Ljava/lang/String;
    .local v25, "realPlmn":Ljava/lang/String;
    .restart local v27    # "sEons":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v20, ""

    .restart local v20    # "mSimOperatorNumeric":Ljava/lang/String;
    goto/16 :goto_2

    .line 1389
    :cond_20
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 1390
    :catch_0
    move-exception v12

    .line 1391
    .local v12, "ex":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Exception while getEonsIfExist. "

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1397
    .end local v12    # "ex":Ljava/lang/RuntimeException;
    .end local v27    # "sEons":Ljava/lang/String;
    :cond_21
    if-eqz v30, :cond_5

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1398
    const-string/jumbo v3, "Home PLMN, get CPHS ons"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1399
    if-eqz v29, :cond_22

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSIMCPHSOns()Ljava/lang/String;

    move-result-object v6

    .local v6, "plmn":Ljava/lang/String;
    goto/16 :goto_4

    .local v6, "plmn":Ljava/lang/String;
    :cond_22
    const-string/jumbo v6, ""

    .local v6, "plmn":Ljava/lang/String;
    goto/16 :goto_4

    .line 1452
    .local v25, "realPlmn":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1453
    .local v10, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_5

    .line 1469
    .end local v6    # "plmn":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v17    # "imeiAbnormal":I
    :cond_23
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_24

    .line 1470
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v35, 0x805001c

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "plmn":Ljava/lang/String;
    goto/16 :goto_6

    .line 1471
    .end local v6    # "plmn":Ljava/lang/String;
    :cond_24
    if-nez v17, :cond_b

    .line 1472
    const-string/jumbo v3, "ro.mtk_bsp_package"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v35, "1"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 1474
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v36

    .line 1474
    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v3, v6, v0, v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->onUpdateSpnDisplay(Ljava/lang/String;Landroid/telephony/ServiceState;I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v6

    .line 1481
    :cond_25
    :goto_12
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1482
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode()I

    move-result v3

    .line 1483
    const/16 v35, 0x3

    .line 1482
    move/from16 v0, v35

    if-eq v3, v0, :cond_b

    .line 1486
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-eqz v3, :cond_b

    .line 1487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_b

    .line 1490
    if-eqz v6, :cond_27

    .line 1491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v35, "("

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v35

    .line 1492
    const v36, 0x8050093

    .line 1491
    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1493
    const-string/jumbo v35, ")"

    .line 1491
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "plmn":Ljava/lang/String;
    goto/16 :goto_6

    .line 1476
    .end local v6    # "plmn":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 1477
    .restart local v10    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_12

    .line 1495
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :cond_27
    const-string/jumbo v3, "PLMN name is null when CS not registered and PS registered"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1512
    :cond_28
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 1511
    :cond_29
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 1537
    .restart local v9    # "dataSpn":Ljava/lang/String;
    :cond_2a
    const/4 v7, 0x0

    .restart local v7    # "showSpn":Z
    goto/16 :goto_8

    .line 1536
    .end local v7    # "showSpn":Z
    :cond_2b
    const/4 v7, 0x0

    .restart local v7    # "showSpn":Z
    goto/16 :goto_8

    .line 1554
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    const/16 v35, 0x3

    move/from16 v0, v35

    if-eq v3, v0, :cond_2e

    .line 1555
    if-eqz v5, :cond_2d

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1554
    if-nez v3, :cond_2e

    .line 1556
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-eqz v3, :cond_f

    .line 1557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-eqz v3, :cond_f

    .line 1559
    :cond_2e
    const/4 v8, 0x0

    .line 1560
    .local v8, "spn":Ljava/lang/String;
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 1576
    .end local v8    # "spn":Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 1577
    .restart local v10    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_a

    .line 1592
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v22    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2f
    const-string/jumbo v3, "!OP01:card absent,dont show spn and plmn!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1593
    const/4 v7, 0x0

    .line 1594
    const/4 v5, 0x0

    goto/16 :goto_b

    .line 1612
    :catch_4
    move-exception v11

    .line 1613
    .local v11, "ex":Lcom/android/ims/ImsException;
    const-string/jumbo v3, "GsmSST"

    const-string/jumbo v35, "Fail to get Ims Status"

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1627
    .end local v11    # "ex":Lcom/android/ims/ImsException;
    .restart local v31    # "subId":I
    .restart local v32    # "subIds":[I
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    if-ne v7, v3, :cond_15

    .line 1628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1625
    if-eqz p1, :cond_1c

    goto/16 :goto_d

    .line 1644
    :catch_5
    move-exception v10

    .line 1645
    .restart local v10    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_e

    .line 1677
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v19    # "intent":Landroid/content/Intent;
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    goto/16 :goto_f

    .line 1693
    .restart local v4    # "slotId":I
    .restart local v23    # "phoneId":I
    :catch_6
    move-exception v10

    .line 1694
    .restart local v10    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_10

    .line 1697
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v35, " - "

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1698
    .restart local v6    # "plmn":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCsgId:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_10

    .line 1700
    .end local v6    # "plmn":Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    if-eqz v3, :cond_19

    .line 1701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v35, " - "

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1702
    .restart local v6    # "plmn":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHhbName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_10

    .line 1733
    .end local v4    # "slotId":I
    .end local v6    # "plmn":Ljava/lang/String;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v23    # "phoneId":I
    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "updateAllOpertorInfo with realPlmn:"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1737
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOperatorAlpha(Ljava/lang/String;)I

    goto/16 :goto_11
.end method
