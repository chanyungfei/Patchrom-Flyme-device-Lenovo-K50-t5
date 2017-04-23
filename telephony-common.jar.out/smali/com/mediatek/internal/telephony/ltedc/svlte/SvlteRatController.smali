.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
.super Landroid/os/Handler;
.source "SvlteRatController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$1;
    }
.end annotation


# static fields
.field public static final ENGINEER_MODE_AUTO:I = 0x0

.field public static final ENGINEER_MODE_CDMA:I = 0x1

.field public static final ENGINEER_MODE_CSFB:I = 0x2

.field public static final ENGINEER_MODE_LTE:I = 0x3

.field private static final EVENT_HANDLE_3G_RADIO_OFF:I = 0x3eb

.field private static final EVENT_RADIO_AVAILABLE:I = 0x3e8

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x3e9

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE_CDMA:I = 0x3ea

.field public static final EXTRA_ROAMING_MODE:Ljava/lang/String; = "roamingMode"

.field public static final EXTRA_SVLTE_RAT_MODE:Ljava/lang/String; = "svlteRatMode"

.field public static final EXTRA_SVLTE_RAT_SWITCH_PRIORITY:Ljava/lang/String; = "svlteRatSwitchPriority"

.field public static final INTENT_ACTION_FINISH_SWITCH_ROAMING_MODE:Ljava/lang/String; = "com.mediatek.intent.action.FINISH_SWITCH_ROAMING_MODE"

.field public static final INTENT_ACTION_FINISH_SWITCH_SVLTE_RAT_MODE:Ljava/lang/String; = "com.mediatek.intent.action.FINISH_SWITCH_SVLTE_RAT_MODE"

.field public static final INTENT_ACTION_START_SWITCH_ROAMING_MODE:Ljava/lang/String; = "com.mediatek.intent.action.START_SWITCH_ROAMING_MODE"

.field public static final INTENT_ACTION_START_SWITCH_SVLTE_RAT_MODE:Ljava/lang/String; = "com.mediatek.intent.action.START_SWITCH_SVLTE_RAT_MODE"

.field private static final LOG_TAG_PHONE:Ljava/lang/String; = "PHONE"

.field private static final PENDINGINFO_SET_RAT:I = 0x0

.field private static final PENDINGINFO_SET_RAT_AND_ROAMING:I = 0x2

.field private static final PENDINGINFO_SET_ROAMING:I = 0x1

.field private static final PROPERTY_RAT_SWITCHING:Ljava/lang/String; = "ril.rat.switching"

.field public static final RAT_MODE_CSFB:I = 0x8

.field public static final RAT_MODE_CSFB_2G:I = 0x1

.field public static final RAT_MODE_CSFB_3G:I = 0x2

.field public static final RAT_MODE_CSFB_4G:I = 0x4

.field public static final RAT_MODE_SVLTE:I = 0x80

.field public static final RAT_MODE_SVLTE_2G:I = 0x10

.field public static final RAT_MODE_SVLTE_3G:I = 0x20

.field public static final RAT_MODE_SVLTE_4G:I = 0x40

.field private static final RAT_SWITCH_FOR_MODE_CHANGE:I = 0x2

.field private static final RAT_SWITCH_FOR_NORMAL:I = 0x1

.field public static final SVLTE_PROJ_DC_3M:I = 0x3

.field public static final SVLTE_PROJ_DC_4M:I = 0x4

.field public static final SVLTE_PROJ_DC_5M:I = 0x5

.field public static final SVLTE_PROJ_DC_6M:I = 0x6

.field public static final SVLTE_PROJ_SC_3M:I = 0x67

.field public static final SVLTE_PROJ_SC_4M:I = 0x68

.field public static final SVLTE_PROJ_SC_5M:I = 0x69

.field public static final SVLTE_PROJ_SC_6M:I = 0x6a

.field private static sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sIsFlightModePowerOffMdSupport:Z


# instance fields
.field private mAirplaneMode:Z

.field private mBlockByRadioPowerOff:Z

.field private mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mContext:Landroid/content/Context;

.field private mEngMode:I

.field private mEngineerMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

.field private mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field private mLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field private mNetworkTypeFromRadioTechnology:I

.field private mNewRadioTechMode:I

.field private mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field private mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

.field private final mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;

.field private mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

.field private mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

.field private mRadioTechMode:I

.field private mRatChangeInRoaming:Z

.field private mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field private mSlotId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

.field private mSvlteRatModeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic -get10(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic -get4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    return v0
.end method

.method static synthetic -get5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method static synthetic -get6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    return-object v0
.end method

.method static synthetic -get7(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method static synthetic -get8(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    return v0
.end method

.method static synthetic -get9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    return p1
.end method

.method static synthetic -set1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object p1
.end method

.method static synthetic -set3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->blockByRadioPowerOff()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;ZZZI)V
    .locals 0
    .param p1, "forceFinish"    # Z
    .param p2, "svlteRatChanged"    # Z
    .param p3, "roamingChanged"    # Z
    .param p4, "priority"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 0
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->resetRadioPowerOff(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 0
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Landroid/content/Intent;Landroid/os/Message;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->updateAirplaneMode(Landroid/content/Intent;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsUsimApp(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdmaOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isFixedSvlteMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isLteOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isUseNetworkTypeDirectly()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Z)Z
    .locals 1
    .param p1, "forceSwitch"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->needSwitchInAirplaneMode(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getCardType()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    sput-boolean v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    .line 278
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V
    .locals 4
    .param p1, "lteDcPhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 286
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 171
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    .line 173
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 174
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 175
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 176
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 177
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 179
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;->ENGINEER_MODE_NONE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngineerMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    .line 180
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getEngineerMode()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    .line 224
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)V

    .line 223
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;

    .line 279
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 280
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 328
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    .line 329
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    .line 330
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 288
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    .line 289
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 290
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 291
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    .line 292
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    .line 294
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3e8

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 295
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3e9

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 296
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3ea

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 298
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ril.flightmode.poweroffMD"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    .line 302
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getSvlteProjectType()I

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_1

    .line 303
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 304
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 305
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 306
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getCdmaRatModeKey(I)Ljava/lang/String;

    move-result-object v2

    .line 307
    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    .line 305
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sIsFlightModePowerOffMdSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v1, "OP09"

    const-string/jumbo v2, "ro.operator.optr"

    const-string/jumbo v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 314
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 315
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;

    .line 314
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 320
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 321
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isAirplaneModeFromSetting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    .line 286
    return-void
.end method

.method private blockByRadioPowerOff()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 893
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 894
    const-string/jumbo v2, "airplane_mode_on"

    .line 893
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 895
    .local v0, "airplaneMode":I
    if-ne v0, v4, :cond_0

    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "blockByRadioPowerOff(), airplaneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 897
    return v4

    .line 899
    :cond_0
    return v3
.end method

.method private containsCdmaApp()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 809
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtCard(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    const-string/jumbo v1, "persist.radio.simswitch"

    .line 810
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 812
    .local v0, "capabilitySlotId":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isDualCtCard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-eq v1, v0, :cond_0

    .line 813
    return v2

    .line 815
    :cond_0
    return v3

    .line 817
    .end local v0    # "capabilitySlotId":I
    :cond_1
    return v2
.end method

.method private containsUsimApp(I)Z
    .locals 2
    .param p1, "cardType"    # I

    .prologue
    const/4 v1, 0x0

    .line 842
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    .line 843
    const/4 v0, 0x1

    return v0

    .line 845
    :cond_0
    return v1
.end method

.method private final executePendingSwitchRecord()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "executePendingSwitchRecord, mPendingCardTypeSwitchRecord ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 976
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 975
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 976
    const-string/jumbo v1, " mPendingModeSwitchRecord = "

    .line 975
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 977
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 975
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 979
    const/4 v7, 0x0

    .line 980
    .local v7, "pendingRecord":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_2

    .line 981
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 982
    .local v7, "pendingRecord":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;
    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 990
    .end local v7    # "pendingRecord":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "executePendingSwitchRecord, mSvlteRatMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 991
    const-string/jumbo v1, ", mRoamingMode = "

    .line 990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 991
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 992
    if-eqz v7, :cond_5

    .line 993
    iget v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    if-nez v0, :cond_3

    .line 994
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1001
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "executePendingSwitchRecord, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1003
    iget-object v1, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 1004
    iget-object v2, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1005
    iget-boolean v3, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mForceSwitch:Z

    .line 1006
    iget v4, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPriority:I

    .line 1007
    iget v5, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    .line 1008
    iget-object v6, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingResponse:Landroid/os/Message;

    move-object v0, p0

    .line 1003
    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    .line 1009
    iget-boolean v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mRatChangeInRoaming:Z

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    .line 974
    :cond_1
    return-void

    .line 983
    .local v7, "pendingRecord":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_0

    .line 984
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 985
    .local v7, "pendingRecord":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;
    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    goto :goto_0

    .line 995
    .end local v7    # "pendingRecord":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;
    :cond_3
    iget v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 996
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    goto :goto_1

    .line 998
    :cond_4
    const-string/jumbo v0, "executePendingSwitchRecord, no need to update any rat or roaming info"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 1011
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    .line 1012
    .local v9, "phoneCount":I
    const/4 v11, 0x0

    .local v11, "slotId":I
    :goto_2
    if-ge v11, v9, :cond_1

    .line 1013
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-eq v11, v0, :cond_6

    .line 1014
    invoke-static {v11}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 1015
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v8, :cond_6

    instance-of v0, v8, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    if-eqz v0, :cond_6

    .line 1016
    check-cast v8, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v10

    .line 1018
    .local v10, "ratController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    invoke-direct {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->hasPendingSwitchRecord()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "executePendingSwitchRecord, notify slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1020
    invoke-direct {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->executePendingSwitchRecord()V

    .line 1012
    .end local v10    # "ratController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2
.end method

.method private finishSwitchMode(ZZZI)V
    .locals 6
    .param p1, "forceFinish"    # Z
    .param p2, "svlteRatChanged"    # Z
    .param p3, "roamingChanged"    # Z
    .param p4, "priority"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finishSwitchMode, forceFinish = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 948
    const-string/jumbo v3, ", svlteRatChanged = "

    .line 947
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 949
    const-string/jumbo v3, ", roamingChanged = "

    .line 947
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 950
    const-string/jumbo v3, ", priority = "

    .line 947
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 952
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 953
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 954
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.mediatek.intent.action.FINISH_SWITCH_SVLTE_RAT_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "svlteRatMode"

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 956
    const-string/jumbo v2, "svlteRatSwitchPriority"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 957
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 958
    invoke-static {v0, v5, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 960
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz p3, :cond_2

    .line 961
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.mediatek.intent.action.FINISH_SWITCH_ROAMING_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 962
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 963
    const-string/jumbo v2, "roamingMode"

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 965
    invoke-static {v0, v5, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 966
    const-string/jumbo v2, "ril.rat.switching"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 971
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->executePendingSwitchRecord()V

    .line 946
    return-void
.end method

.method private getCardType()I
    .locals 3

    .prologue
    .line 803
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 804
    .local v0, "cardType":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getCardType]: SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 805
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    aget v1, v0, v1

    return v1
.end method

.method public static getEngineerMode()I
    .locals 3

    .prologue
    .line 873
    const-string/jumbo v1, "persist.radio.ct.ir.engmode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 875
    .local v0, "mode":I
    return v0
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    .line 522
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    return-object v0
.end method

.method public static getSvlteProjectType()I
    .locals 5

    .prologue
    .line 1522
    const/4 v2, 0x6

    .line 1523
    .local v2, "type":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->getC2KOMNetworkSelectionType()I

    move-result v0

    .line 1524
    .local v0, "nwSelType":I
    const-string/jumbo v3, "ro.mtk.c2k.om.mode"

    const-string/jumbo v4, "cllwtg"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1526
    .local v1, "omMode":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 1527
    const-string/jumbo v3, "cllwtg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1528
    const/16 v2, 0x6a

    .line 1548
    :cond_0
    :goto_0
    return v2

    .line 1529
    :cond_1
    const-string/jumbo v3, "cllwg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1530
    const/16 v2, 0x69

    goto :goto_0

    .line 1531
    :cond_2
    const-string/jumbo v3, "cllg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1532
    const/16 v2, 0x68

    goto :goto_0

    .line 1533
    :cond_3
    const-string/jumbo v3, "cwg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1534
    const/16 v2, 0x67

    goto :goto_0

    .line 1537
    :cond_4
    const-string/jumbo v3, "cllwtg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1538
    const/4 v2, 0x6

    goto :goto_0

    .line 1539
    :cond_5
    const-string/jumbo v3, "cllwg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1540
    const/4 v2, 0x5

    goto :goto_0

    .line 1541
    :cond_6
    const-string/jumbo v3, "cllg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1542
    const/4 v2, 0x4

    goto :goto_0

    .line 1543
    :cond_7
    const-string/jumbo v3, "cwg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1544
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private final hasPendingSwitchRecord()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1029
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isAirplaneModeFromSetting()Z
    .locals 4

    .prologue
    .line 367
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 368
    const-string/jumbo v2, "airplane_mode_on"

    const/4 v3, 0x0

    .line 367
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 368
    const/4 v2, 0x1

    .line 367
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 369
    .local v0, "airplaneMode":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAirplaneModeFromSetting: airplaneMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 370
    return v0

    .line 367
    .end local v0    # "airplaneMode":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "airplaneMode":Z
    goto :goto_0
.end method

.method private isCdma4GSim()Z
    .locals 2

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getCardType()I

    move-result v0

    .line 850
    .local v0, "cardType":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsUsimApp(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    const/4 v1, 0x1

    return v1

    .line 853
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isCdmaOn()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 424
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 425
    return v7

    .line 427
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/RadioManager;->checkForCTACase()Z

    move-result v2

    .line 428
    .local v2, "isCtaCase":Z
    if-eqz v2, :cond_1

    .line 429
    return v4

    .line 431
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 432
    .local v0, "cardType":[I
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    aget v5, v0, v5

    if-nez v5, :cond_2

    .line 433
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v5

    .line 434
    const/4 v6, 0x3

    .line 433
    if-ne v5, v6, :cond_2

    .line 435
    return v4

    .line 437
    :cond_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isCdmaOn()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->isCdmaOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 438
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtCard(I)Z

    move-result v1

    .line 439
    :goto_0
    const/4 v3, 0x0

    .line 440
    .local v3, "isGmssOn":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->getC2KOMNetworkSelectionType()I

    move-result v5

    if-nez v5, :cond_3

    .line 441
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v6, :cond_5

    const/4 v3, 0x1

    .line 444
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cdmaOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isGmsson="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 445
    if-nez v1, :cond_6

    .end local v3    # "isGmssOn":Z
    :goto_2
    return v3

    .line 437
    :cond_4
    const/4 v1, 0x0

    .local v1, "cdmaOn":Z
    goto :goto_0

    .line 441
    .end local v1    # "cdmaOn":Z
    .restart local v3    # "isGmssOn":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    move v3, v4

    .line 445
    goto :goto_2
.end method

.method private isCtCard(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 833
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 834
    .local v0, "cardType":[I
    aget v2, v0, p1

    and-int/lit8 v2, v2, 0x4

    if-gtz v2, :cond_0

    .line 835
    aget v2, v0, p1

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_1

    .line 834
    :cond_0
    const/4 v1, 0x1

    .line 837
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCtCard, slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " retCtCard="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 838
    return v1

    .line 836
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v1

    .local v1, "retCtCard":Z
    goto :goto_0
.end method

.method private isDualCtCard()Z
    .locals 4

    .prologue
    .line 821
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 822
    .local v0, "cardType":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 823
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDualCtCard slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " return false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 825
    const/4 v2, 0x0

    return v2

    .line 822
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 828
    :cond_1
    const-string/jumbo v2, "isDualCtCard true "

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 829
    const/4 v2, 0x1

    return v2
.end method

.method private isFixedSvlteMode()Z
    .locals 4

    .prologue
    .line 1510
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-nez v1, :cond_1

    .line 1511
    const-string/jumbo v1, "OP09"

    const-string/jumbo v2, "ro.operator.optr"

    const-string/jumbo v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1510
    if-eqz v1, :cond_1

    .line 1512
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCTLteTddTestSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1513
    .local v0, "fixedSvlteMode":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " fixedSvlteMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1514
    return v0

    .line 1512
    .end local v0    # "fixedSvlteMode":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "fixedSvlteMode":Z
    goto :goto_0

    .line 1510
    .end local v0    # "fixedSvlteMode":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "fixedSvlteMode":Z
    goto :goto_0
.end method

.method private isLteOn()Z
    .locals 4

    .prologue
    .line 403
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/RadioManager;->checkForCTACase()Z

    move-result v0

    .line 404
    .local v0, "isCtaCase":Z
    if-eqz v0, :cond_0

    .line 405
    const/4 v2, 0x1

    return v2

    .line 407
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v2, v3, :cond_1

    .line 409
    const/4 v2, 0x0

    return v2

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isLteOn()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->isLteOn()Z

    move-result v2

    if-nez v2, :cond_4

    .line 413
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isGsmOn()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->isGsmOn()Z

    move-result v1

    .line 415
    :goto_0
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 416
    const/4 v1, 0x1

    .line 418
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lteOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 419
    return v1

    .line 412
    :cond_4
    const/4 v1, 0x1

    .local v1, "lteOn":Z
    goto :goto_0

    .line 413
    .end local v1    # "lteOn":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "lteOn":Z
    goto :goto_0
.end method

.method private isUseNetworkTypeDirectly()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 857
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 859
    .local v0, "cardType":[I
    const/4 v1, 0x0

    .line 860
    .local v1, "slot0NoSimAndSlot1NoCTInserted":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 861
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-nez v2, :cond_0

    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 862
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 867
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUseModeNetworkTypeDirectly slot0NoSimAndSlot1NoCTInserted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 869
    return v1

    .line 863
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1552
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SRC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    return-void
.end method

.method private final needSwitchInAirplaneMode(Z)Z
    .locals 3
    .param p1, "forceSwitch"    # Z

    .prologue
    .line 903
    if-eqz p1, :cond_1

    .line 904
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isFlightModePowerOffModemSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 905
    .local v0, "result":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needSwitchInAirplaneMode(), result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 906
    return v0

    .line 904
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "result":Z
    goto :goto_0

    .line 903
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private resetRadioPowerOff(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 4
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    const/4 v3, 0x0

    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, "forced":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v1, v2, :cond_0

    .line 881
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne p1, v1, :cond_1

    .line 882
    :cond_0
    const/4 v0, 0x1

    .line 884
    :cond_1
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isLteOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 887
    :cond_2
    :goto_0
    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdmaOn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 878
    :cond_3
    :goto_1
    return-void

    .line 884
    :cond_4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 885
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto :goto_0

    .line 887
    :cond_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 888
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto :goto_1
.end method

.method private setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 4
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 376
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isUseNetworkTypeDirectly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNetworkTypeFromRadioTechnology:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 378
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioTechMode, mNetworkTypeFromRadioTechnology="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 380
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNetworkTypeFromRadioTechnology:I

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 380
    const-string/jumbo v2, " return"

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 381
    return-void

    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z

    move-result v0

    .line 385
    .local v0, "hasCdmaApp":Z
    if-eqz v0, :cond_4

    .line 386
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne p1, v1, :cond_3

    .line 389
    :cond_1
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 396
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioTechMode, hasCdmaApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
    const-string/jumbo v2, " svlteRatMode = "

    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
    const-string/jumbo v2, "roamingMode = "

    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    const-string/jumbo v2, "mNewRadioTechMode = "

    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 375
    return-void

    .line 388
    :cond_3
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq p2, v1, :cond_1

    .line 390
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne p2, v1, :cond_2

    .line 391
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    goto :goto_0

    .line 393
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isFixedSvlteMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 394
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    goto :goto_0
.end method

.method private setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ILandroid/os/Message;)Z
    .locals 7
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p3, "setInfo"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[setSvlteRatMode] svlteRatMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mRoamingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 633
    const/4 v3, 0x0

    .line 634
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 633
    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z
    .locals 9
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p3, "forceSwitch"    # Z
    .param p4, "recordPriority"    # I
    .param p5, "pendingSetInfo"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->blockByRadioPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->needSwitchInAirplaneMode(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 737
    :cond_0
    if-nez p3, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    if-eqz v0, :cond_5

    .line 751
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSvlteRatMode(), radioTechMode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 752
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSvlteRatMode(), SvlteRatMode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSvlteRatMode(), RoamingMode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSvlteRatMode(), sInSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 756
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 757
    const/4 v0, 0x2

    if-ne p4, v0, :cond_7

    .line 758
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;ZII)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 768
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 725
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    .line 726
    sget-boolean v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    if-nez v0, :cond_4

    .line 727
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 728
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 731
    :cond_4
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    .line 732
    const-string/jumbo v0, "setSvlteRatMode(), block by radio power off now."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 733
    const/4 v0, 0x0

    return v0

    .line 738
    :cond_5
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-eqz v0, :cond_6

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSvlteRatMode(), In engineer mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 740
    const/4 v0, 0x0

    return v0

    .line 742
    :cond_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v0, p2, :cond_1

    .line 743
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    if-ne v0, v1, :cond_1

    .line 744
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    .line 745
    const-string/jumbo v0, "setSvlteRatMode(), already in desired mode -> no need to switch, send finish broadcast"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 747
    const/4 v0, 0x0

    return v0

    .line 761
    :cond_7
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;ZII)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 763
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    if-eqz v0, :cond_2

    .line 764
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mRatChangeInRoaming:Z

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    goto :goto_0

    .line 770
    :cond_8
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    if-eqz v0, :cond_a

    .line 771
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 772
    const/4 v8, 0x0

    .line 773
    .local v8, "preferNetworkType":I
    const-string/jumbo v0, "ro.mtk_svlte_lcg_support"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " setSvlteRatMode(), 4M mRatChangeInRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    const-string/jumbo v1, " set to NETWORK_MODE_GSM_ONLY"

    .line 774
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 776
    const/4 v8, 0x1

    .line 782
    :goto_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v8, p6}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSvlteRatMode, rat change in roaming, rat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 785
    const-string/jumbo v1, " mNewRadioTechMode: "

    .line 783
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 785
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 783
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 786
    const-string/jumbo v1, " svlteRatMode: "

    .line 783
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 786
    const-string/jumbo v1, " mRoamingMode: "

    .line 783
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 783
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 788
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 789
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 790
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    .line 792
    const/4 v0, 0x1

    return v0

    .line 778
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " setSvlteRatMode(), NOT 4M! mRatChangeInRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 779
    const-string/jumbo v1, " set to NETWORK_MODE_WCDMA_PREF"

    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 794
    .end local v8    # "preferNetworkType":I
    :cond_a
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 795
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 796
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v0, p1, :cond_b

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v1, p2, :cond_c

    const/4 v1, 0x1

    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->startSwitchMode(ZZ)V

    .line 798
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    invoke-virtual {v0, p3, p6, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->doSwitch(ZLandroid/os/Message;I)V

    .line 799
    const/4 v0, 0x1

    return v0

    .line 796
    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    :cond_c
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private startSwitchMode(ZZ)V
    .locals 7
    .param p1, "svlteRatChanged"    # Z
    .param p2, "roamingChanged"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x20000000

    const/4 v4, -0x1

    .line 928
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 929
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 930
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-eqz p1, :cond_0

    .line 931
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.mediatek.intent.action.START_SWITCH_SVLTE_RAT_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 932
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 933
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 934
    invoke-static {v0, v6, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 936
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz p2, :cond_1

    .line 937
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.mediatek.intent.action.START_SWITCH_ROAMING_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 938
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 939
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 940
    invoke-static {v0, v6, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 941
    const-string/jumbo v2, "ril.rat.switching"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private final updateAirplaneMode(Landroid/content/Intent;Landroid/os/Message;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, "airplaneMode":Z
    if-eqz p1, :cond_1

    .line 344
    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 345
    .local v0, "airplaneMode":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAirplaneMode: intent state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 350
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAirplaneMode,mAirplaneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    const-string/jumbo v2, ",airplaneMode="

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 353
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    if-eq v0, v1, :cond_0

    .line 354
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    .line 355
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    if-eqz v1, :cond_0

    .line 356
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    .line 357
    sget-boolean v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    if-nez v1, :cond_0

    .line 358
    const-string/jumbo v1, "updateAirplaneMode: setSvlteRatMode"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 360
    const/4 v3, 0x2

    .line 359
    invoke-direct {p0, v1, v2, v3, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ILandroid/os/Message;)Z

    .line 340
    :cond_0
    return-void

    .line 347
    .local v0, "airplaneMode":Z
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isAirplaneModeFromSetting()Z

    move-result v0

    .local v0, "airplaneMode":Z
    goto :goto_0
.end method


# virtual methods
.method public allowRadioPowerOn(I)Z
    .locals 11
    .param p1, "phoneId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1451
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v7, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1452
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1453
    if-nez v3, :cond_1

    .line 1456
    :cond_0
    const-string/jumbo v7, "allowRadioPowerOn return for non-svlte slot."

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1457
    return v9

    .line 1454
    :cond_1
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1455
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtDualModeSimCard(I)Z

    move-result v7

    .line 1454
    if-eqz v7, :cond_0

    .line 1461
    :cond_2
    const-string/jumbo v7, "persist.radio.simswitch"

    .line 1460
    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 1462
    .local v0, "capabilitySlotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isDualCtCard()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1463
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result v7

    if-eq v0, v7, :cond_3

    .line 1464
    const-string/jumbo v7, "allowRadioPowerOn return for dual ct card non-svlte slot."

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1465
    return v9

    .line 1468
    :cond_3
    iget v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-ne v7, v9, :cond_4

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    if-ne v7, p1, :cond_4

    .line 1469
    const-string/jumbo v7, "allowRadioPowerOn=false on LtePhone in CDMA Only for engineer mode."

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1470
    return v10

    .line 1473
    :cond_4
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 1474
    .local v5, "ratMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1476
    .local v6, "roamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isLteOn()Z

    move-result v2

    .line 1477
    .local v2, "lwgOn":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdmaOn()Z

    move-result v1

    .line 1479
    .local v1, "cdmaOn":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allowRadioPowerOn lwgOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", cdmaOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1480
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v7, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 1482
    .local v4, "phoneType":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allowRadioPowerOn, phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", phoneType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1483
    const-string/jumbo v8, ", ratMode="

    .line 1482
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1483
    const-string/jumbo v8, ", roamingMode="

    .line 1482
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1485
    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    if-eqz v1, :cond_7

    .line 1488
    :cond_5
    if-ne v4, v9, :cond_6

    if-eqz v2, :cond_8

    .line 1492
    :cond_6
    return v9

    .line 1486
    :cond_7
    const-string/jumbo v7, "allowRadioPowerOn=false on C2K radio."

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1487
    return v10

    .line 1489
    :cond_8
    const-string/jumbo v7, "allowRadioPowerOn=false on LWG radio."

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1490
    return v10
.end method

.method public getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method public getSvlteRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 450
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 452
    :pswitch_0
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 453
    const-string/jumbo v0, "EM: CDMA only mode"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    .line 454
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 479
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    goto :goto_0

    .line 456
    :cond_2
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 457
    const-string/jumbo v0, "EM: CSFB only mode"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 458
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 459
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 460
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    const/4 v3, 0x1

    .line 461
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    .line 459
    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    goto :goto_1

    .line 462
    :cond_3
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 463
    const-string/jumbo v0, "EM: LTE only mode"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 464
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 465
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->toggleActivePhone(I)V

    goto :goto_1

    .line 467
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EVENT_RADIO_AVAILABLE, Auto mode, Reset to roaming mode to Home, mSvlteRatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 469
    const-string/jumbo v1, ", mRoamingMode:"

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 470
    const-string/jumbo v1, ", mNewRadioTechMode:"

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 470
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 472
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 474
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtDualModeSimCard(I)Z

    move-result v0

    .line 471
    if-eqz v0, :cond_1

    .line 475
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_1

    .line 476
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    goto/16 :goto_1

    .line 482
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EVENT_RADIO_NOT_AVAILABLE, RadioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 485
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtDualModeSimCard(I)Z

    move-result v0

    .line 483
    if-eqz v0, :cond_0

    .line 486
    :cond_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 490
    :pswitch_2
    const-string/jumbo v0, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE_CDMA"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 491
    sget-boolean v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_0

    .line 494
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_0

    .line 495
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 496
    const-string/jumbo v0, "Sending EVDOMODE=0"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 498
    const/16 v1, 0x3eb

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 497
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->configEvdoMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 503
    :pswitch_3
    const-string/jumbo v0, "EVENT_HANDLE_3G_RADIO_OFF. Sending ECTMODE=2"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 506
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v2

    .line 507
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    .line 508
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v4

    .line 509
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v5

    .line 510
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v1

    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v6

    .line 505
    const/4 v1, 0x3

    .line 510
    const/4 v7, 0x0

    .line 504
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isCtDualModeSimCard(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1502
    const-string/jumbo v1, " isCtDualModeSimCard, start"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1503
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1504
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v0

    .line 1505
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " isCtDualModeSimCard, ctDualModeSimCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1506
    return v0

    .line 1503
    :cond_0
    const/4 v0, 0x1

    .local v0, "ctDualModeSimCard":Z
    goto :goto_0
.end method

.method public registerSvlteRatModeChangedListener(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    :cond_0
    return-void
.end method

.method public setRadioTechnology(ILandroid/os/Message;)Z
    .locals 10
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setRadioTechnology] networkType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 646
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-eqz v0, :cond_0

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setRadioTechnology] In engineer mode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 648
    const/4 v0, 0x2

    invoke-direct {p0, v9, v6, v6, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    .line 649
    return v6

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isUseNetworkTypeDirectly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_1

    .line 655
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNetworkTypeFromRadioTechnology:I

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 659
    .local v1, "svlteRatMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    const/4 v3, 0x0

    .line 660
    .local v3, "forceSwitch":Z
    and-int/lit8 v0, p1, 0x8

    if-gtz v0, :cond_2

    .line 661
    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_3

    .line 662
    :cond_2
    const/4 v3, 0x1

    .line 664
    :cond_3
    const/16 v0, 0x10

    if-lt p1, v0, :cond_4

    .line 665
    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_a

    .line 666
    and-int/lit8 v0, p1, 0x20

    if-lez v0, :cond_a

    .line 667
    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_a

    .line 668
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 683
    :cond_4
    :goto_0
    const/4 v4, 0x1

    .line 684
    .local v4, "recordPriority":I
    and-int/lit8 v0, p1, 0x8

    if-gtz v0, :cond_5

    .line 685
    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_6

    .line 686
    :cond_5
    const/4 v4, 0x2

    .line 690
    :cond_6
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v1, v0, :cond_7

    .line 692
    const-string/jumbo v0, "persist.radio.simswitch"

    const-string/jumbo v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 693
    .local v7, "capabilityPhoneId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setRadioTechnology] capabilityPhoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 694
    const-string/jumbo v2, " mSlotId: "

    .line 693
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 694
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    .line 693
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 696
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-eq v7, v0, :cond_7

    .line 697
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 701
    .end local v7    # "capabilityPhoneId":I
    :cond_7
    const/4 v5, 0x0

    .line 702
    .local v5, "pendingInfo":I
    iput-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 703
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_9

    .line 704
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    if-eqz v0, :cond_8

    .line 705
    const/4 v5, 0x2

    .line 706
    const-string/jumbo v0, "[setRadioTechnology] update pendingRat info"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 708
    :cond_8
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 709
    iput-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 712
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setRadioTechnology] networkType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " svlteRatMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 713
    const-string/jumbo v2, " mRoamingMode: "

    .line 712
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 713
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 712
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 714
    const-string/jumbo v2, " forceSwitch: "

    .line 712
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 714
    const-string/jumbo v2, " recordPriority: "

    .line 712
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 716
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    move-result v0

    return v0

    .line 669
    .end local v4    # "recordPriority":I
    .end local v5    # "pendingInfo":I
    :cond_a
    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_b

    .line 670
    and-int/lit8 v0, p1, 0x20

    if-lez v0, :cond_b

    .line 671
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 673
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v0, v2, :cond_4

    .line 674
    iput-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    goto/16 :goto_0

    .line 677
    :cond_b
    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_c

    .line 678
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    goto/16 :goto_0

    .line 680
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setRadioTechnology] mode not supported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z
    .locals 8
    .param p1, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 588
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-eqz v0, :cond_0

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setRoamingMode] In engineer mode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 590
    return v7

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setRoamingMode]roamingMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",mRoamingMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 596
    const/4 v5, 0x1

    .line 597
    .local v5, "pendingInfo":I
    const/4 v4, 0x1

    .line 598
    .local v4, "priority":I
    const/4 v3, 0x0

    .line 600
    .local v3, "forSwitch":Z
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 602
    .local v1, "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPriority:I

    .line 603
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mForceSwitch:Z

    .line 604
    .local v3, "forSwitch":Z
    iput-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 617
    .end local v3    # "forSwitch":Z
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    .line 619
    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    move-result v0

    return v0

    .line 605
    .end local v1    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .local v3, "forSwitch":Z
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_3

    .line 606
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 607
    const-string/jumbo v0, "[setRoamingMode] should update pending info"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 608
    const/4 v5, 0x2

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 611
    .restart local v1    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mForceSwitch:Z

    .line 612
    .local v3, "forSwitch":Z
    iput-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    goto :goto_0

    .line 614
    .end local v1    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .local v3, "forSwitch":Z
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .restart local v1    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    goto :goto_0
.end method

.method public setRoamingMode(ZLandroid/os/Message;)Z
    .locals 2
    .param p1, "roaming"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 576
    if-eqz p1, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 578
    .local v0, "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    move-result v1

    return v1

    .line 577
    .end local v0    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .restart local v0    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    goto :goto_0
.end method

.method public setSvlteRatMode(ILandroid/os/Message;)Z
    .locals 1
    .param p1, "svlteRatMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 541
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Landroid/os/Message;)Z
    .locals 3
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 552
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-object v0, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 554
    .local v0, "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 558
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ILandroid/os/Message;)Z

    move-result v1

    return v1

    .line 556
    .end local v0    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .restart local v0    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    goto :goto_0
.end method

.method public unregisterSvlteRatModeChangedListener(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .prologue
    .line 924
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 923
    return-void
.end method
