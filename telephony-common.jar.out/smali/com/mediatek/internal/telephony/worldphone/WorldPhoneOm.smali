.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.super Landroid/os/Handler;
.source "WorldPhoneOm.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;,
        Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$2;,
        Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;
    }
.end annotation


# static fields
.field private static final FDD_STANDBY_TIMER:[I

.field private static final MCC_TABLE_DOMESTIC:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE1:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE1_EXT:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE3:[Ljava/lang/String;

.field private static final PROJECT_SIM_NUM:I

.field private static final TDD_STANDBY_TIMER:[I

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sBtSapState:I

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sDataRegState:I

.field private static sDefaultBootuUpModem:I

.field private static sDefultPhone:Lcom/android/internal/telephony/Phone;

.field private static sDenyReason:I

.field private static sFddStandByCounter:I

.field private static sFirstSelect:[Z

.field private static sIccCardType:[I

.field private static sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private static sImsi:[Ljava/lang/String;

.field private static sIsAutoSelectEnable:Z

.field private static sIsInvalidSim:[Z

.field private static sIsResumeCampingFail:Z

.field private static sLastPlmn:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;

.field private static sMajorSim:I

.field private static sMccDomestic:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

.field private static sNwPlmnStrings:[Ljava/lang/String;

.field private static sOperatorSpec:Ljava/lang/String;

.field private static sPlmnSs:Ljava/lang/String;

.field private static sPlmnType1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlmnType1Ext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlmnType3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private static sRadioTechModeForWp:I

.field private static sRegion:I

.field private static sRilDataRadioTechnology:I

.field private static sRilDataRegState:I

.field private static sRilVoiceRadioTechnology:I

.field private static sRilVoiceRegState:I

.field private static sServiceState:Landroid/telephony/ServiceState;

.field private static sSuspendId:[I

.field private static sSuspendWaitImsi:[Z

.field private static sSuspendWaitRadioTech:[Z

.field private static sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sSvlteLtePhone:[Lcom/android/internal/telephony/Phone;

.field private static sTddStandByCounter:I

.field private static sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sUserType:I

.field private static sVoiceCapable:Z

.field private static sVoiceRegState:I

.field private static sWaitInFdd:Z

.field private static sWaitInTdd:Z


# instance fields
.field private mFddStandByTimerRunnable:Ljava/lang/Runnable;

.field private mTddStandByTimerRunnable:Ljava/lang/Runnable;

.field private final mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    return v0
.end method

.method static synthetic -get10()[Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method static synthetic -get11()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12()Z
    .locals 1

    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    return v0
.end method

.method static synthetic -get13()[Z
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    return-object v0
.end method

.method static synthetic -get14()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    return v0
.end method

.method static synthetic -get15()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get16()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get17()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get19()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic -get20()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get21()[Lcom/android/internal/telephony/Phone;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get22()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    return v0
.end method

.method static synthetic -get23()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    return v0
.end method

.method static synthetic -get24()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRadioTechnology:I

    return v0
.end method

.method static synthetic -get25()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I

    return v0
.end method

.method static synthetic -get26()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRadioTechnology:I

    return v0
.end method

.method static synthetic -get27()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I

    return v0
.end method

.method static synthetic -get28()Landroid/telephony/ServiceState;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic -get29()[I
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    return-object v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I

    return v0
.end method

.method static synthetic -get30()[Z
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic -get31()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic -get32()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method static synthetic -get33()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    return v0
.end method

.method static synthetic -get34()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    return v0
.end method

.method static synthetic -get4()[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    return v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    return v0
.end method

.method static synthetic -get7()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic -get8()[Z
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    return-object v0
.end method

.method static synthetic -get9()[I
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    return p0
.end method

.method static synthetic -set10(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRadioTechnology:I

    return p0
.end method

.method static synthetic -set11(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I

    return p0
.end method

.method static synthetic -set12(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;

    return-object p0
.end method

.method static synthetic -set13(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    return p0
.end method

.method static synthetic -set14(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 0

    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-object p0
.end method

.method static synthetic -set15(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    return p0
.end method

.method static synthetic -set16(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    return p0
.end method

.method static synthetic -set2(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    return p0
.end method

.method static synthetic -set3(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    return p0
.end method

.method static synthetic -set4(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set5(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    return p0
.end method

.method static synthetic -set6(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set7(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    return p0
.end method

.method static synthetic -set8(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRadioTechnology:I

    return p0
.end method

.method static synthetic -set9(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isInService()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isNoService()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getIccCardType(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;Ljava/lang/String;)I
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleNoService()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V
    .locals 0
    .param p1, "toModem"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    return-void
.end method

.method static synthetic -wrap8()V
    .locals 0

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->loadDefaultData()V

    return-void
.end method

.method static synthetic -wrap9(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLock:Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getProjectSimNum()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    .line 74
    new-array v0, v4, [I

    .line 75
    const/16 v1, 0x3c

    aput v1, v0, v3

    .line 74
    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    .line 77
    new-array v0, v4, [I

    .line 78
    const/16 v1, 0x28

    aput v1, v0, v3

    .line 77
    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 81
    const-string/jumbo v1, "46000"

    aput-object v1, v0, v3

    const-string/jumbo v1, "46002"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46007"

    aput-object v1, v0, v2

    const-string/jumbo v1, "46008"

    aput-object v1, v0, v6

    .line 80
    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .line 83
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1_EXT:[Ljava/lang/String;

    .line 85
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 86
    const-string/jumbo v1, "46001"

    aput-object v1, v0, v3

    const-string/jumbo v1, "46006"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46009"

    aput-object v1, v0, v2

    const-string/jumbo v1, "45407"

    aput-object v1, v0, v6

    .line 87
    const-string/jumbo v1, "46003"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "46005"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "45502"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "46011"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 85
    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    .line 89
    new-array v0, v4, [Ljava/lang/String;

    .line 90
    const-string/jumbo v1, "460"

    aput-object v1, v0, v3

    .line 89
    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .line 98
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    .line 99
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 100
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 101
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 102
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 106
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    .line 118
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    .line 119
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    .line 120
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    .line 122
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    .line 123
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    .line 124
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    .line 125
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 126
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 128
    sput-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    .line 139
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLtePhone:[Lcom/android/internal/telephony/Phone;

    .line 140
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 141
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitRadioTech:[Z

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 144
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 254
    new-instance v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 1251
    new-instance v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$2;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$2;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 1267
    new-instance v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 145
    const-string/jumbo v2, "Constructor invoked"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v2, "ro.operator.optr"

    const-string/jumbo v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sOperatorSpec:Ljava/lang/String;

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Operator Spec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sOperatorSpec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 149
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_1

    .line 152
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLtePhone:[Lcom/android/internal/telephony/Phone;

    aput-object v4, v2, v0

    .line 153
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    aput-object v4, v2, v0

    .line 154
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .line 154
    if-eqz v2, :cond_0

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is SVLTE case so get lte phone directly"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 157
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLtePhone:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    aput-object v2, v3, v0

    .line 158
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLtePhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v3, v0

    .line 161
    :cond_0
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v3, v0

    .line 162
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v3, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_3

    .line 166
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .line 166
    if-eqz v2, :cond_2

    .line 168
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    .line 169
    add-int/lit16 v3, v0, 0x3f2

    .line 168
    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    .line 171
    add-int/lit16 v3, v0, 0x406

    .line 170
    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    .line 173
    add-int/lit16 v3, v0, 0x3e8

    .line 172
    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 174
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    .line 175
    add-int/lit16 v3, v0, 0x410

    .line 174
    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 178
    :cond_2
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0xa

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 179
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1e

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 180
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x0

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 181
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x3c

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    :cond_3
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 187
    const/16 v3, 0x41a

    .line 186
    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForC2KWPCardTypeReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 190
    :cond_4
    new-instance v2, Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    .line 191
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 193
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v2, "android.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v2, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string/jumbo v2, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v2, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v2, "android.intent.action.ACTION_TEST_WORLDPHOE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_5

    .line 208
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    .line 212
    :goto_2
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 213
    const v3, 0x1120053

    .line 212
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceCapable:Z

    .line 214
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    sput v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    .line 217
    sput v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    .line 218
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    .line 219
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    .line 220
    sput v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 221
    sput-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    .line 222
    sput v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I

    .line 223
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetAllProperties()V

    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    .line 230
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->loadDefaultData()V

    .line 232
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v2

    if-nez v2, :cond_6

    .line 233
    const-string/jumbo v2, "Auto select disable"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 235
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    .line 236
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 237
    const-string/jumbo v3, "world_phone_auto_select_mode"

    .line 236
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    :goto_3
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    .line 245
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "world_phone_fdd_modem_timer"

    .line 246
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v6, v6, v7

    .line 244
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 247
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 248
    const-string/jumbo v3, "world_phone_fdd_modem_timer"

    .line 249
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v4, v4, v5

    .line 247
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FDD_STANDBY_TIMER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sDefaultBootuUpModem = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 144
    return-void

    .line 210
    :cond_5
    const-string/jumbo v2, "DefaultPhone = null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 239
    :cond_6
    const-string/jumbo v2, "Auto select enable"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 240
    sput-boolean v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    .line 241
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 242
    const-string/jumbo v3, "world_phone_auto_select_mode"

    .line 241
    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3
.end method

.method private containsCdma(I)Z
    .locals 2
    .param p1, "cardType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1623
    and-int/lit8 v0, p1, 0x4

    if-gtz v0, :cond_0

    .line 1624
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_1

    .line 1625
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1627
    :cond_1
    return v1
.end method

.method private getIccCardType(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1154
    const-string/jumbo v0, "Unknown"

    .line 1156
    .local v0, "simString":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    .line 1157
    const-string/jumbo v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1158
    const-string/jumbo v2, "IccCard type: SIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1159
    const/4 v1, 0x1

    .line 1168
    .local v1, "simType":I
    :goto_0
    return v1

    .line 1160
    .end local v1    # "simType":I
    :cond_0
    const-string/jumbo v2, "USIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1161
    const-string/jumbo v2, "IccCard type: USIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1162
    const/4 v1, 0x2

    .restart local v1    # "simType":I
    goto :goto_0

    .line 1164
    .end local v1    # "simType":I
    :cond_1
    const-string/jumbo v2, "IccCard type: Unknown"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1165
    const/4 v1, 0x0

    .restart local v1    # "simType":I
    goto :goto_0
.end method

.method private getRegion(Ljava/lang/String;)I
    .locals 6
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1175
    if-eqz p1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_1

    .line 1176
    :cond_0
    const-string/jumbo v3, "[getRegion] Invalid PLMN"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1177
    return v4

    .line 1179
    :cond_1
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "currentMcc":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "mcc$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1181
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1182
    const-string/jumbo v3, "[getRegion] REGION_DOMESTIC"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1183
    const/4 v3, 0x1

    return v3

    .line 1186
    .end local v1    # "mcc":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "[getRegion] REGION_FOREIGN"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1187
    const/4 v3, 0x2

    return v3
.end method

.method private getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1549
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[getSvlteActiveCi]: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1551
    const-string/jumbo v1, " sMajorSim="

    .line 1550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1551
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 1550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1552
    const-string/jumbo v1, " sRadioTechModeForWp="

    .line 1550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1552
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    .line 1550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1554
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    instance-of v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    if-eqz v0, :cond_0

    .line 1555
    const-string/jumbo v0, "[getSvlteActiveCi]: return sSvlteLteCi"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1556
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSvlteLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    return-object v0

    .line 1558
    :cond_0
    const-string/jumbo v0, "[getSvlteActiveCi]: return sCi"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1559
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    return-object v0

    .line 1562
    :cond_1
    const-string/jumbo v0, "[getSvlteActiveCi]: return sCi"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1563
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getUserType(Ljava/lang/String;)I
    .locals 5
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1191
    if-eqz p1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1214
    :cond_0
    const-string/jumbo v2, "[getUserType] null IMSI"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1215
    return v3

    .line 1192
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1193
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mccmnc$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1194
    .local v0, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1195
    const-string/jumbo v2, "[getUserType] Type1 user"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1196
    return v4

    .line 1199
    .end local v0    # "mccmnc":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1200
    .restart local v0    # "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1201
    const-string/jumbo v2, "[getUserType] Extended Type1 user"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1202
    return v4

    .line 1205
    .end local v0    # "mccmnc":Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1206
    .restart local v0    # "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1207
    const-string/jumbo v2, "[getUserType] Type3 user"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1208
    const/4 v2, 0x3

    return v2

    .line 1211
    .end local v0    # "mccmnc":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "[getUserType] Type2 user"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1212
    const/4 v2, 0x2

    return v2
.end method

.method private handleGmssRatChange(Landroid/os/AsyncResult;I)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 729
    const/4 v0, 0x0

    .line 730
    .local v0, "info":[I
    const/4 v1, 0x0

    .line 732
    .local v1, "mccString":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sMajorSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 735
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 736
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "info":[I
    check-cast v0, [I

    .line 737
    .local v0, "info":[I
    aget v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "mccString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[handleGmssRatChange] mccString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 739
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p2, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_1

    .line 740
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 741
    new-array v2, v4, [Ljava/lang/String;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    .line 743
    :cond_0
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 745
    :cond_1
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-eqz v2, :cond_2

    .line 746
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 747
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eq v2, v5, :cond_2

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 748
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 749
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    .line 728
    .end local v0    # "info":[I
    .end local v1    # "mccString":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 753
    .local v0, "info":[I
    .local v1, "mccString":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AsyncResult is wrong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleInvalidSimNotify(ILandroid/os/AsyncResult;)V
    .locals 10
    .param p1, "slotId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 796
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Slot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 797
    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    iget-object v6, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 798
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 799
    .local v2, "invalidSimInfo":[Ljava/lang/String;
    aget-object v3, v2, v9

    .line 800
    .local v3, "plmn":Ljava/lang/String;
    aget-object v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 801
    .local v1, "cs_invalid":I
    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 802
    .local v4, "ps_invalid":I
    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 803
    .local v0, "cause":I
    const/4 v5, -0x1

    .line 804
    .local v5, "testMode":I
    const-string/jumbo v6, "gsm.gcf.testmode"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 805
    if-eqz v5, :cond_0

    .line 806
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid SIM notified during test mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 807
    return-void

    .line 809
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "testMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", cause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", cs_invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 810
    const-string/jumbo v7, ", ps_invalid: "

    .line 809
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 810
    const-string/jumbo v7, ", plmn: "

    .line 809
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 811
    sget-boolean v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceCapable:Z

    if-eqz v6, :cond_1

    if-ne v1, v8, :cond_1

    .line 812
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 813
    const-string/jumbo v6, "CS reject, invalid SIM"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 814
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v8, v6, p1

    .line 815
    return-void

    .line 818
    :cond_1
    if-ne v4, v8, :cond_3

    .line 819
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 820
    const-string/jumbo v6, "PS reject, invalid SIM"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 821
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v8, v6, p1

    .line 822
    return-void

    .line 826
    .end local v0    # "cause":I
    .end local v1    # "cs_invalid":I
    .end local v2    # "invalidSimInfo":[Ljava/lang/String;
    .end local v3    # "plmn":Ljava/lang/String;
    .end local v4    # "ps_invalid":I
    .end local v5    # "testMode":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AsyncResult is wrong "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 795
    :cond_3
    return-void
.end method

.method private handleNoService()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 997
    const-string/jumbo v2, "[handleNoService]+ Can not find service"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 999
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1000
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v1

    .line 1001
    .local v1, "mdType":I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1003
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v2, v2, v3

    .line 1002
    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 1004
    .local v0, "iccState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_d

    .line 1005
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v2, v4, :cond_8

    .line 1006
    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 1007
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 1008
    :cond_0
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v2, v2, v3

    if-ltz v2, :cond_3

    .line 1009
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    if-nez v2, :cond_2

    .line 1010
    sput-boolean v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wait "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1012
    const-string/jumbo v3, "s. Timer index = "

    .line 1011
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1012
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    .line 1011
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1013
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 1014
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    .line 1013
    invoke-virtual {p0, v2, v4, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1052
    :cond_1
    :goto_0
    const-string/jumbo v2, "[handleNoService]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1054
    return-void

    .line 1016
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Timer already set:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1017
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v3, v3, v4

    .line 1016
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1017
    const-string/jumbo v3, "s"

    .line 1016
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    :cond_3
    const-string/jumbo v2, "Standby in TDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1022
    :cond_4
    if-eq v1, v6, :cond_5

    .line 1023
    if-ne v1, v5, :cond_1

    .line 1024
    :cond_5
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v2, v2, v3

    if-ltz v2, :cond_7

    .line 1025
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    if-nez v2, :cond_6

    .line 1026
    sput-boolean v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    .line 1027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wait "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1028
    const-string/jumbo v3, "s. Timer index = "

    .line 1027
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1028
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    .line 1027
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1029
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 1030
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    .line 1029
    invoke-virtual {p0, v2, v4, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1032
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Timer already set:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1033
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v3, v4

    .line 1032
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1033
    const-string/jumbo v3, "s"

    .line 1032
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1036
    :cond_7
    const-string/jumbo v2, "Standby in FDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1039
    :cond_8
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v2, v5, :cond_c

    .line 1040
    :cond_9
    if-eq v1, v6, :cond_a

    .line 1041
    if-ne v1, v5, :cond_b

    .line 1042
    :cond_a
    const-string/jumbo v2, "Standby in FDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1044
    :cond_b
    const-string/jumbo v2, "Should not enter this state"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1047
    :cond_c
    const-string/jumbo v2, "Unknow user type"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1050
    :cond_d
    const-string/jumbo v2, "IccState not ready"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handlePlmnChange(Landroid/os/AsyncResult;I)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 692
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sMajorSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 695
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 696
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 697
    .local v1, "plmnString":[Ljava/lang/String;
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p2, v2, :cond_0

    .line 698
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    .line 700
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "plmnString["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 704
    :cond_1
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-eqz v2, :cond_3

    .line 705
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne v2, p2, :cond_2

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 706
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    if-eq v2, v5, :cond_2

    .line 707
    aget-object v2, v1, v4

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->searchForDesignateService(Ljava/lang/String;)V

    .line 711
    :cond_2
    aget-object v2, v1, v4

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 716
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v2, v5, :cond_3

    .line 717
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 719
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    .line 691
    .end local v0    # "i":I
    .end local v1    # "plmnString":[Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 723
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AsyncResult is wrong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleRadioOn(I)V
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 671
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleRadioOn Slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " sMajorSim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 673
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v4, v1, p1

    .line 675
    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail:Z

    if-eqz v1, :cond_1

    .line 676
    const-string/jumbo v1, "try to resume camping again"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 678
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v1

    if-nez v1, :cond_2

    .line 679
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v2, v2, p1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 686
    :cond_0
    :goto_0
    sput-boolean v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail:Z

    .line 670
    :cond_1
    return-void

    .line 681
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 682
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    if-eqz v0, :cond_0

    .line 683
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private handleRegistrationSuspend(Landroid/os/AsyncResult;I)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 759
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 760
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v4

    aput v1, v2, p2

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Suspending with Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 764
    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne v1, p2, :cond_3

    .line 766
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(I)V

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eqz v1, :cond_2

    .line 771
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(I)V

    goto :goto_0

    .line 773
    :cond_2
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p2

    .line 774
    const-string/jumbo v1, "User type unknown, wait for IMSI"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :cond_3
    const-string/jumbo v1, "Not major slot or in maual selection mode, camp on OK"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 780
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v1

    if-nez v1, :cond_4

    .line 781
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v2, v2, p2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 783
    :cond_4
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 784
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    if-eqz v0, :cond_0

    .line 785
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p2

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 791
    .end local v0    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AsyncResult is wrong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimSwitched()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 952
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 953
    const-string/jumbo v0, "Major capability turned off"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 954
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 955
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 951
    :goto_0
    return-void

    .line 958
    :cond_0
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-nez v0, :cond_1

    .line 959
    const-string/jumbo v0, "Auto modem selection disabled"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 960
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    goto :goto_0

    .line 961
    :cond_1
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_2

    .line 962
    const-string/jumbo v0, "Major SIM unknown"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 964
    :cond_2
    const-string/jumbo v0, "Auto modem selection enabled"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Major capability in slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 966
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v0, v0, v1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 968
    :cond_3
    const-string/jumbo v0, "Major slot IMSI not ready"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 969
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 970
    return-void

    .line 972
    :cond_4
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 973
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v0, v3, :cond_8

    .line 974
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 975
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 977
    :cond_5
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v0, v3, :cond_6

    .line 978
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v2, v0, v1

    .line 979
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getIccCardType(I)I

    move-result v2

    aput v2, v0, v1

    .line 980
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 981
    :cond_6
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v0, v4, :cond_7

    .line 982
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v2, v0, v1

    .line 983
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 985
    :cond_7
    const-string/jumbo v0, "Unknown region"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 987
    :cond_8
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eq v0, v4, :cond_9

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 988
    :cond_9
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v2, v0, v1

    .line 989
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 991
    :cond_a
    const-string/jumbo v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleSwitchModem(I)V
    .locals 10
    .param p1, "toModem"    # I

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 831
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v2

    .line 833
    .local v2, "mMajorSim":I
    const/4 v0, 0x0

    .line 836
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isNeedHandleSwitchForRadioTechMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 838
    const-string/jumbo v3, "[handleSwitchModem]No need to handle, switch not executed!"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 839
    return-void

    .line 844
    :cond_0
    if-ltz v2, :cond_1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 845
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 846
    const-string/jumbo v3, "[handleSwitchModem] Invalid SIM, switch not executed!"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 847
    return-void

    .line 849
    :cond_1
    const/16 v3, 0x65

    if-ne p1, v3, :cond_4

    .line 850
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 851
    const/4 p1, 0x6

    .line 864
    :cond_2
    :goto_0
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 865
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    if-nez v0, :cond_6

    .line 866
    const-string/jumbo v3, "[handleSwitchModem] get Ci fail, switch not executed!"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 867
    return-void

    .line 853
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_3
    const/4 p1, 0x4

    goto :goto_0

    .line 855
    :cond_4
    const/16 v3, 0x64

    if-ne p1, v3, :cond_2

    .line 856
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 857
    const/4 p1, 0x5

    goto :goto_0

    .line 859
    :cond_5
    const/4 p1, 0x3

    goto :goto_0

    .line 873
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_6
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-nez v3, :cond_9

    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[handleSwitchModem] Auto select disable, storing modem type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 876
    invoke-interface {v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 918
    :cond_7
    :goto_1
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v3

    if-ne p1, v3, :cond_11

    .line 919
    if-ne p1, v7, :cond_e

    .line 920
    const-string/jumbo v3, "Already in WG modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 928
    :cond_8
    :goto_2
    return-void

    .line 879
    :cond_9
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    if-nez v3, :cond_a

    .line 880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[handleSwitchModem] Storing modem type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 882
    invoke-interface {v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_1

    .line 884
    :cond_a
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_c

    .line 885
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 886
    const-string/jumbo v3, "[handleSwitchModem] Storing modem type: 3"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 889
    invoke-interface {v0, v9, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_1

    .line 893
    :cond_b
    const-string/jumbo v3, "[handleSwitchModem] Storing modem type: 5"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 896
    invoke-interface {v0, v7, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_1

    .line 900
    :cond_c
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_7

    .line 901
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 902
    const-string/jumbo v3, "[handleSwitchModem] Storing modem type: 3"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 905
    const/4 v3, 0x6

    invoke-interface {v0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_1

    .line 909
    :cond_d
    const-string/jumbo v3, "[handleSwitchModem] Storing modem type: 5"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 912
    invoke-interface {v0, v8, v5}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_1

    .line 921
    :cond_e
    if-ne p1, v8, :cond_f

    .line 922
    const-string/jumbo v3, "Already in TG modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 923
    :cond_f
    if-ne p1, v9, :cond_10

    .line 924
    const-string/jumbo v3, "Already in FDD CSFB modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 925
    :cond_10
    const/4 v3, 0x6

    if-ne p1, v3, :cond_8

    .line 926
    const-string/jumbo v3, "Already in TDD CSFB modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 930
    :cond_11
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v1, v3, :cond_13

    .line 931
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_12

    .line 932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not idle, modem switch not allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 933
    return-void

    .line 930
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 936
    :cond_13
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 937
    if-ne p1, v7, :cond_15

    .line 938
    const-string/jumbo v3, "Switching to WG modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 946
    :cond_14
    :goto_4
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->switchModem(I)V

    .line 947
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    .line 830
    return-void

    .line 939
    :cond_15
    if-ne p1, v8, :cond_16

    .line 940
    const-string/jumbo v3, "Switching to TG modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 941
    :cond_16
    if-ne p1, v9, :cond_17

    .line 942
    const-string/jumbo v3, "Switching to FDD CSFB modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 943
    :cond_17
    const/4 v3, 0x6

    if-ne p1, v3, :cond_14

    .line 944
    const-string/jumbo v3, "Switching to TDD CSFB modem"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private is3GCdmaCard(I)Z
    .locals 2
    .param p1, "cardType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1614
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 1615
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 1616
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->containsCdma(I)Z

    move-result v0

    .line 1614
    if-eqz v0, :cond_0

    .line 1617
    const/4 v0, 0x1

    return v0

    .line 1619
    :cond_0
    return v1
.end method

.method private is4GCdmaCard(I)Z
    .locals 2
    .param p1, "cardType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1606
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    .line 1607
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->containsCdma(I)Z

    move-result v0

    .line 1606
    if-eqz v0, :cond_0

    .line 1608
    const/4 v0, 0x1

    return v0

    .line 1610
    :cond_0
    return v1
.end method

.method private isAllowCampOn(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "plmnString"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[isAllowCampOn]+ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1060
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    aget v1, v1, p2

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->iccCardTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1061
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 1062
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 1063
    .local v0, "mdType":I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1064
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v1, v4, :cond_9

    .line 1065
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v1, v4, :cond_3

    .line 1066
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1067
    if-ne v0, v7, :cond_1

    .line 1068
    :cond_0
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1069
    const-string/jumbo v1, "Camp on OK"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1070
    const-string/jumbo v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1071
    return v4

    .line 1072
    :cond_1
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 1073
    if-ne v0, v5, :cond_8

    .line 1074
    :cond_2
    sput v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1075
    const-string/jumbo v1, "Camp on REJECT"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1076
    const-string/jumbo v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1077
    return v3

    .line 1079
    :cond_3
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v1, v6, :cond_7

    .line 1080
    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    .line 1081
    if-ne v0, v7, :cond_5

    .line 1082
    :cond_4
    sput v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1083
    const-string/jumbo v1, "Camp on REJECT"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1084
    const-string/jumbo v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1085
    return v3

    .line 1086
    :cond_5
    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    .line 1087
    if-ne v0, v5, :cond_8

    .line 1088
    :cond_6
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1089
    const-string/jumbo v1, "Camp on OK"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1090
    const-string/jumbo v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1091
    return v4

    .line 1094
    :cond_7
    const-string/jumbo v1, "Unknow region"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1113
    :cond_8
    :goto_0
    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1114
    const-string/jumbo v1, "Camp on REJECT"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1115
    const-string/jumbo v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1117
    return v3

    .line 1096
    :cond_9
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eq v1, v6, :cond_a

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v1, v5, :cond_e

    .line 1097
    :cond_a
    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    .line 1098
    if-ne v0, v7, :cond_c

    .line 1099
    :cond_b
    sput v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1100
    const-string/jumbo v1, "Camp on REJECT"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1101
    const-string/jumbo v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1102
    return v3

    .line 1103
    :cond_c
    const/4 v1, 0x5

    if-eq v0, v1, :cond_d

    .line 1104
    if-ne v0, v5, :cond_8

    .line 1105
    :cond_d
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1106
    const-string/jumbo v1, "Camp on OK"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1107
    const-string/jumbo v1, "[isAllowCampOn]-"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1108
    return v4

    .line 1111
    :cond_e
    const-string/jumbo v1, "Unknown user type"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isInService()Z
    .locals 3

    .prologue
    .line 1121
    const/4 v0, 0x0

    .line 1123
    .local v0, "inService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    if-eqz v1, :cond_0

    .line 1124
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    if-nez v1, :cond_1

    .line 1125
    :cond_0
    const/4 v0, 0x1

    .line 1127
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1129
    return v0
.end method

.method private isNeedHandleSwitchForRadioTechMode()Z
    .locals 3

    .prologue
    .line 1568
    const/4 v0, 0x0

    .line 1569
    .local v0, "isNeed":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[isNeedHandleSwitchForRadioTechMode] RT mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1571
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1572
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isSpecialCardMode()Z

    move-result v1

    .line 1571
    if-eqz v1, :cond_2

    .line 1573
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 1574
    const-string/jumbo v1, "[isNeedHandleSwitchForRadioTechMode] SVLTE mode and MD type is LTG"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1576
    const/4 v0, 0x1

    .line 1584
    :cond_1
    :goto_0
    return v0

    .line 1578
    :cond_2
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1579
    const-string/jumbo v1, "[isNeedHandleSwitchForRadioTechMode] CSFB mode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1580
    const/4 v0, 0x1

    goto :goto_0

    .line 1582
    :cond_3
    const-string/jumbo v1, "[isNeedHandleSwitchForRadioTechMode] no need to switch"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNoService()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1133
    const/4 v0, 0x0

    .line 1135
    .local v0, "noService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    if-ne v1, v3, :cond_1

    .line 1136
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I

    if-eqz v1, :cond_0

    .line 1138
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1140
    :cond_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    if-ne v1, v3, :cond_1

    .line 1141
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I

    if-nez v1, :cond_1

    .line 1143
    const/4 v0, 0x1

    .line 1147
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1149
    return v0

    .line 1145
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpecialCardMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1588
    const/4 v2, 0x0

    .line 1589
    .local v2, "specialCardMode":Z
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    if-eqz v3, :cond_2

    .line 1590
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 1591
    .local v1, "numberPhones":I
    new-array v0, v1, [I

    .line 1592
    .local v0, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 1594
    aget v3, v0, v5

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is4GCdmaCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    aget v3, v0, v6

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is4GCdmaCard(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1595
    :cond_0
    aget v3, v0, v5

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is3GCdmaCard(I)Z

    move-result v3

    if-eqz v3, :cond_2

    aget v3, v0, v6

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is3GCdmaCard(I)Z

    move-result v3

    .line 1594
    if-eqz v3, :cond_2

    .line 1596
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSpecialCardMode cardType1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1597
    const-string/jumbo v4, ", cardType2="

    .line 1596
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1597
    aget v4, v0, v6

    .line 1596
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1598
    const/4 v2, 0x1

    .line 1601
    .end local v0    # "cardType":[I
    .end local v1    # "numberPhones":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSpecialCardMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1602
    return v2
.end method

.method private static loadDefaultData()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1531
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    .local v1, "plmn":Ljava/lang/String;
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 1532
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1535
    :cond_0
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1_EXT:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 1536
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1539
    :cond_1
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v1, v4, v3

    .line 1540
    sget-object v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1539
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1543
    :cond_2
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    array-length v4, v3

    :goto_3
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 1544
    .local v0, "mcc":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1530
    .end local v0    # "mcc":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1631
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[WPOM]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    return-void
.end method

.method private removeModemStandByTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1284
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    if-eqz v0, :cond_0

    .line 1285
    const-string/jumbo v0, "Remove TDD wait timer. Set sWaitInTdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1286
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    .line 1287
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1289
    :cond_0
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    if-eqz v0, :cond_1

    .line 1290
    const-string/jumbo v0, "Remove FDD wait timer. Set sWaitInFdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1291
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    .line 1292
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1283
    :cond_1
    return-void
.end method

.method private resetAllProperties()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1297
    const-string/jumbo v1, "[resetAllProperties]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1298
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    .line 1299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1300
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v3, v1, v0

    .line 1299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1302
    :cond_0
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1303
    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail:Z

    .line 1304
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    .line 1305
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I

    .line 1306
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetSimProperties()V

    .line 1307
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    .line 1296
    return-void
.end method

.method private resetNetworkProperties()V
    .locals 4

    .prologue
    .line 1311
    const-string/jumbo v1, "[resetNetworkProperties]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1312
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1314
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    .line 1313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1316
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1317
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1318
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v2

    .line 1310
    return-void

    .line 1312
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private resetSimProperties()V
    .locals 4

    .prologue
    .line 1325
    const-string/jumbo v1, "[resetSimProperties]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1326
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1327
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1328
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v1, v0

    .line 1329
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 1327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1331
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1332
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1324
    return-void

    .line 1326
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private resumeCampingProcedure(I)V
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/16 v5, 0x46

    const/4 v4, 0x0

    .line 1220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resume camping slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1222
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v2, v2, v4

    if-eqz v2, :cond_4

    .line 1223
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v1, v2, v4

    .line 1224
    .local v1, "plmnString":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1225
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 1227
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1228
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    .line 1229
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1228
    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 1219
    .end local v1    # "plmnString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1231
    .restart local v1    # "plmnString":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 1232
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    if-eqz v0, :cond_0

    .line 1234
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v2, v2, p1

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1233
    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 1239
    .end local v0    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->denyReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1240
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1241
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 1242
    :cond_3
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1243
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 1247
    .end local v1    # "plmnString":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "sNwPlmnStrings[0] is null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private searchForDesignateService(Ljava/lang/String;)V
    .locals 4
    .param p1, "strPlmn"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x5

    .line 1337
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 1338
    :cond_0
    const-string/jumbo v2, "[searchForDesignateService]- null source"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1339
    return-void

    .line 1341
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1342
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mccmnc$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1343
    .local v0, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1344
    const-string/jumbo v2, "Find TD service"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sUserType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sRegion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1347
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v2

    .line 1346
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1348
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    .line 1353
    .end local v0    # "mccmnc":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 571
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 572
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 570
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 574
    :sswitch_1
    const-string/jumbo v1, "handleMessage : <EVENT_RADIO_ON_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 575
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 578
    :sswitch_2
    const-string/jumbo v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 579
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 582
    :sswitch_3
    const-string/jumbo v1, "handleMessage : <EVENT_REG_SUSPENDED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 583
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 586
    :sswitch_4
    const-string/jumbo v1, "handleMessage : <EVENT_RADIO_ON_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 587
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 590
    :sswitch_5
    const-string/jumbo v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 591
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 594
    :sswitch_6
    const-string/jumbo v1, "handleMessage : <EVENT_REG_SUSPENDED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 595
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 598
    :sswitch_7
    const-string/jumbo v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 599
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 602
    :sswitch_8
    const-string/jumbo v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 603
    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 608
    :sswitch_9
    const-string/jumbo v1, "handleMessage : <EVENT_RADIO_ON_SVLTE_L_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 609
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 612
    :sswitch_a
    const-string/jumbo v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_SVLTE_L_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 613
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 616
    :sswitch_b
    const-string/jumbo v1, "handleMessage : <EVENT_REG_SUSPENDED_SVLTE_L_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 617
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 620
    :sswitch_c
    const-string/jumbo v1, "handleMessage : <EVENT_RADIO_ON_SVLTE_L_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 621
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 624
    :sswitch_d
    const-string/jumbo v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_SVLTE_L_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 625
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 628
    :sswitch_e
    const-string/jumbo v1, "handleMessage : <EVENT_REG_SUSPENDED_SVLTE_L_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 629
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 632
    :sswitch_f
    const-string/jumbo v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_SVLTE_L_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 633
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 636
    :sswitch_10
    const-string/jumbo v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_SVLTE_L_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 637
    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 647
    :sswitch_11
    const-string/jumbo v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 648
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 651
    :sswitch_12
    const-string/jumbo v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 652
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 659
    :sswitch_13
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 660
    const-string/jumbo v1, "handleMessage : <EVENT_RESUME_CAMPING> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 661
    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail:Z

    goto/16 :goto_0

    .line 572
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0xa -> :sswitch_2
        0xb -> :sswitch_5
        0x1e -> :sswitch_3
        0x1f -> :sswitch_6
        0x3c -> :sswitch_7
        0x3d -> :sswitch_8
        0x46 -> :sswitch_13
        0x3e8 -> :sswitch_9
        0x3e9 -> :sswitch_c
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_d
        0x406 -> :sswitch_b
        0x407 -> :sswitch_e
        0x410 -> :sswitch_f
        0x411 -> :sswitch_10
        0x41a -> :sswitch_0
        0x424 -> :sswitch_11
        0x425 -> :sswitch_12
    .end sparse-switch
.end method

.method public handleRadioTechModeSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1472
    const/4 v0, 0x0

    .line 1473
    .local v0, "toModem":I
    const-string/jumbo v1, "[handleRadioTechModeSwitch]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sRadioTechModeForWp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1475
    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-nez v1, :cond_0

    .line 1476
    const-string/jumbo v1, "Auto modem selection disabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1477
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 1471
    :goto_0
    return-void

    .line 1479
    :cond_0
    const-string/jumbo v1, "Auto modem selection enabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1480
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v1, v1, v2

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1482
    :cond_1
    const-string/jumbo v1, "Capaility slot IMSI not ready"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1483
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1484
    return-void

    .line 1486
    :cond_2
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1487
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v1, v4, :cond_7

    .line 1488
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1489
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 1491
    :cond_3
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v1, v4, :cond_5

    .line 1492
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v3, v1, v2

    .line 1493
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getIccCardType(I)I

    move-result v3

    aput v3, v1, v2

    .line 1494
    const/16 v0, 0x65

    .line 1510
    :goto_1
    const/16 v1, 0x65

    if-ne v0, v1, :cond_b

    .line 1511
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1512
    const/4 v0, 0x6

    .line 1524
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[handleRadioTechModeSwitch]: switch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1525
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    .line 1526
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    goto/16 :goto_0

    .line 1495
    :cond_5
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v1, v5, :cond_6

    .line 1496
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v3, v1, v2

    .line 1497
    const/16 v0, 0x64

    goto :goto_1

    .line 1499
    :cond_6
    const-string/jumbo v1, "Unknown region"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1500
    return-void

    .line 1502
    :cond_7
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eq v1, v5, :cond_8

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 1503
    :cond_8
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v3, v1, v2

    .line 1504
    const/16 v0, 0x64

    .line 1502
    goto :goto_1

    .line 1506
    :cond_9
    const-string/jumbo v1, "Unknown user type"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1507
    return-void

    .line 1514
    :cond_a
    const/4 v0, 0x4

    goto :goto_2

    .line 1516
    :cond_b
    const/16 v1, 0x64

    if-ne v0, v1, :cond_4

    .line 1517
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1518
    const/4 v0, 0x5

    goto :goto_2

    .line 1520
    :cond_c
    const/4 v0, 0x3

    goto :goto_2
.end method

.method public notifyRadioCapabilityChange(I)V
    .locals 10
    .param p1, "capailitySimId"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1376
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v2

    .line 1377
    .local v2, "majorSimId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v0

    .line 1378
    .local v0, "activeSvlteModeSlotId":I
    const/4 v3, 0x0

    .line 1380
    .local v3, "toModem":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setRadioCapabilityChange] majorSimId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1381
    const-string/jumbo v5, " capailitySimId="

    .line 1380
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1382
    sget-boolean v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    if-nez v4, :cond_1

    .line 1383
    const-string/jumbo v4, "[setRadioCapabilityChange] Auto modem selection disabled"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1384
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1386
    :cond_1
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_2

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1388
    :cond_2
    const-string/jumbo v4, "Capaility slot IMSI not ready"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1389
    sput v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1390
    return-void

    .line 1392
    :cond_3
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1393
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v4, v8, :cond_9

    .line 1394
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1395
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 1397
    :cond_4
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v4, v8, :cond_7

    .line 1398
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v6, v4, p1

    .line 1399
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getIccCardType(I)I

    move-result v5

    aput v5, v4, p1

    .line 1400
    const/16 v3, 0x65

    .line 1416
    :goto_1
    const/16 v4, 0x65

    if-ne v3, v4, :cond_d

    .line 1417
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1418
    const/4 v3, 0x6

    .line 1430
    :cond_5
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyRadioCapabilityChange: Storing modem type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1433
    const/4 v1, 0x0

    .line 1434
    .local v1, "ci":Lcom/android/internal/telephony/CommandsInterface;
    const/16 v4, -0x63

    if-eq v2, v4, :cond_12

    .line 1435
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1436
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isSpecialCardMode()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1437
    if-eq p1, v0, :cond_f

    .line 1439
    const-string/jumbo v4, "new RT mode is CSFB"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1440
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    .line 1457
    .end local v1    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_6
    :goto_3
    if-eqz v1, :cond_0

    .line 1458
    invoke-interface {v1, v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 1459
    invoke-interface {v1, v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->reloadModemType(ILandroid/os/Message;)V

    .line 1460
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    goto/16 :goto_0

    .line 1401
    :cond_7
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v4, v9, :cond_8

    .line 1402
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v6, v4, p1

    .line 1403
    const/16 v3, 0x64

    goto :goto_1

    .line 1405
    :cond_8
    const-string/jumbo v4, "Unknown region"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1406
    return-void

    .line 1408
    :cond_9
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eq v4, v9, :cond_a

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    .line 1409
    :cond_a
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v6, v4, p1

    .line 1410
    const/16 v3, 0x64

    .line 1408
    goto :goto_1

    .line 1412
    :cond_b
    const-string/jumbo v4, "Unknown user type"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1413
    return-void

    .line 1420
    :cond_c
    const/4 v3, 0x4

    goto :goto_2

    .line 1422
    :cond_d
    const/16 v4, 0x64

    if-ne v3, v4, :cond_5

    .line 1423
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1424
    const/4 v3, 0x5

    goto :goto_2

    .line 1426
    :cond_e
    const/4 v3, 0x3

    goto :goto_2

    .line 1444
    .restart local v1    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_f
    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 1445
    const-string/jumbo v4, "new RT mode is SVLTE and new type is LWG"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1446
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    .local v1, "ci":Lcom/android/internal/telephony/CommandsInterface;
    goto :goto_3

    .line 1451
    .local v1, "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_10
    const-string/jumbo v4, "isSpecialCardMode=true, ignore this change!"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 1454
    :cond_11
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v4, v6

    .local v1, "ci":Lcom/android/internal/telephony/CommandsInterface;
    goto :goto_3

    .line 1465
    .local v1, "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_12
    const-string/jumbo v4, "notifyRadioCapabilityChange: major sim is unknown"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setModemSelectionMode(II)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1357
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1358
    const-string/jumbo v1, "world_phone_auto_select_mode"

    .line 1357
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1359
    if-ne p1, v2, :cond_1

    .line 1360
    const-string/jumbo v0, "Modem Selection <AUTO>"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1361
    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    .line 1362
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 1363
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1365
    :cond_1
    const-string/jumbo v0, "Modem Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1367
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z

    .line 1368
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V

    .line 1369
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1370
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    goto :goto_0
.end method
