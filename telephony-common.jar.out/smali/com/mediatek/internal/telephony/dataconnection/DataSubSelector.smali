.class public Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.super Ljava/lang/Object;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;,
        Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;
    }
.end annotation


# static fields
.field public static final ACTION_MOBILE_DATA_ENABLE:Ljava/lang/String; = "android.intent.action.ACTION_MOBILE_DATA_ENABLE"

.field static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final BSP_PACKAGE:Z

.field private static final DBG:Z = true

.field public static final EXTRA_MOBILE_DATA_ENABLE_REASON:Ljava/lang/String; = "reason"

.field private static final FIRST_TIME_ROAMING:Ljava/lang/String; = "first_time_roaming"

.field private static final HOME_POLICY:I = 0x0

.field private static final NEED_TO_EXECUTE_ROAMING:Ljava/lang/String; = "need_to_execute_roaming"

.field private static final NEED_TO_WAIT_UNLOCKED:Ljava/lang/String; = "persist.radio.unlock"

.field private static final NEED_TO_WAIT_UNLOCKED_ROAMING:Ljava/lang/String; = "persist.radio.unlock.roaming"

.field private static final NEW_SIM_SLOT:Ljava/lang/String; = "persist.radio.new.sim.slot"

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field private static final OLD_ICCID:Ljava/lang/String; = "old_iccid"

.field private static final OPERATOR_OM:Ljava/lang/String; = "OM"

.field private static final OPERATOR_OP01:Ljava/lang/String; = "OP01"

.field private static final OPERATOR_OP02:Ljava/lang/String; = "OP02"

.field private static final OPERATOR_OP09:Ljava/lang/String; = "OP09"

.field private static final OPERATOR_OP18:Ljava/lang/String; = "OP18"

.field private static final POLICY_DEFAULT:I = 0x1

.field private static final POLICY_NO_AUTO:I = 0x0

.field private static final POLICY_POLICY1:I = 0x2

.field private static final PROPERTY_3G_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field private static final PROPERTY_CAPABILITY_SWITCH_POLICY:Ljava/lang/String; = "ro.mtk_sim_switch_policy"

.field private static final PROPERTY_DEFAULT_DATA_ICCID:Ljava/lang/String; = "persist.radio.data.iccid"

.field private static final PROPERTY_DEFAULT_SIMSWITCH_ICCID:Ljava/lang/String; = "persist.radio.capability.iccid"

.field private static final PROPERTY_MOBILE_DATA_ENABLE:Ljava/lang/String; = "persist.radio.mobile.data"

.field public static final REASON_MOBILE_DATA_ENABLE_SYSTEM:Ljava/lang/String; = "system"

.field public static final REASON_MOBILE_DATA_ENABLE_USER:Ljava/lang/String; = "user"

.field private static final ROAMING_POLICY:I = 0x1

.field private static final SEGDEFAULT:Ljava/lang/String; = "SEGDEFAULT"

.field private static final SIM_STATUS:Ljava/lang/String; = "persist.radio.sim.status"

.field private static final capability_switch_policy:I

.field private static m6mProject:Z

.field private static mOperatorSpec:Ljava/lang/String;


# instance fields
.field private PROPERTY_ICCID:[Ljava/lang/String;

.field private PROPERTY_ICCID_SIM:[Ljava/lang/String;

.field private mAirplaneModeOn:Z

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHasRegisterWorldModeReceiver:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsNeedWaitAirplaneModeOff:Z

.field private mIsNeedWaitAirplaneModeOffRoaming:Z

.field private mIsNeedWaitImsi:Z

.field private mIsNeedWaitImsiRoaming:Z

.field private mIsSubReady:Z

.field private mIsUserConfirmDefaultData:Z

.field private mLastValidDefaultDataSubId:I

.field private mPhoneId:I

.field private mPhoneNum:I

.field private mPrevDefaultDataSubId:I

.field private mRadioTechDone:Z

.field private mWorldModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    return v0
.end method

.method static synthetic -get3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    return v0
.end method

.method static synthetic -get4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    return v0
.end method

.method static synthetic -get5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z

    return v0
.end method

.method static synthetic -get6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    return v0
.end method

.method static synthetic -get7()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I

    return v0
.end method

.method static synthetic -get9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    return v0
.end method

.method static synthetic -set0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic -set2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    return p1
.end method

.method static synthetic -set3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    return p1
.end method

.method static synthetic -set4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    return p1
.end method

.method static synthetic -set5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z

    return p1
.end method

.method static synthetic -set6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    return p1
.end method

.method static synthetic -set7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    return p1
.end method

.method static synthetic -set8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch6m()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z
    .locals 1
    .param p1, "policy"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp02CapSwitch(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOmLenovo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp18(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForSvlte(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp18CapSwitch()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z
    .locals 1
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09ASupport()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)V
    .locals 0
    .param p1, "insertedSimCount"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V
    .locals 0
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "ro.mtk_bsp_package"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->BSP_PACKAGE:Z

    .line 116
    const-string/jumbo v0, "ro.mtk_sim_switch_policy"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 115
    sput v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->capability_switch_policy:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNum"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 51
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 52
    const-string/jumbo v5, "ril.iccid.sim1"

    aput-object v5, v4, v3

    .line 53
    const-string/jumbo v5, "ril.iccid.sim2"

    aput-object v5, v4, v2

    .line 54
    const-string/jumbo v5, "ril.iccid.sim3"

    aput-object v5, v4, v7

    .line 55
    const-string/jumbo v5, "ril.iccid.sim4"

    aput-object v5, v4, v8

    .line 51
    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 80
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 81
    const-string/jumbo v5, "ril.iccid.sim1"

    aput-object v5, v4, v3

    .line 82
    const-string/jumbo v5, "ril.iccid.sim2"

    aput-object v5, v4, v2

    .line 83
    const-string/jumbo v5, "ril.iccid.sim3"

    aput-object v5, v4, v7

    .line 84
    const-string/jumbo v5, "ril.iccid.sim4"

    aput-object v5, v4, v8

    .line 80
    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    .line 96
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z

    .line 98
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    .line 99
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 100
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 101
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    .line 102
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    .line 103
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mHasRegisterWorldModeReceiver:Z

    .line 104
    iput v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I

    .line 105
    iput v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    .line 106
    iput v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    .line 107
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    .line 109
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    .line 110
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z

    .line 118
    new-instance v4, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;

    invoke-direct {v4, p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance v4, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;

    invoke-direct {v4, p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    .line 380
    const-string/jumbo v4, "DataSubSelector is created"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 381
    iput p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    .line 382
    const-string/jumbo v4, "ro.operator.optr"

    const-string/jumbo v5, "OM"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    .line 383
    const-string/jumbo v4, "ro.mtk_c2k_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->m6mProject:Z

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Operator Spec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", c2k_support:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->m6mProject:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 386
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 387
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    const-string/jumbo v4, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    const-string/jumbo v4, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v4, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string/jumbo v4, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string/jumbo v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string/jumbo v4, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string/jumbo v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 403
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 405
    const-string/jumbo v5, "airplane_mode_on"

    .line 404
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    .line 408
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 409
    .local v0, "defaultDataSubId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "defaultDataSub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    .line 379
    return-void

    .end local v0    # "defaultDataSubId":I
    :cond_0
    move v2, v3

    .line 405
    goto :goto_0
.end method

.method private checkCdmaCardInsert()Z
    .locals 4

    .prologue
    .line 501
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 502
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 503
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isRuimCsim(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CDMA sim is inserted in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 505
    const/4 v2, 0x1

    return v2

    .line 502
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private checkOp01CapSwitch()Z
    .locals 15

    .prologue
    .line 1234
    iget v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v10, v13, [I

    .line 1235
    .local v10, "simOpInfo":[I
    iget v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v11, v13, [I

    .line 1236
    .local v11, "simType":[I
    const/4 v12, -0x1

    .line 1237
    .local v12, "targetSim":I
    const/4 v4, 0x0

    .line 1238
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 1239
    .local v5, "insertedStatus":I
    iget v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v7, v13, [Z

    .line 1240
    .local v7, "op01Usim":[Z
    iget v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v6, v13, [Z

    .line 1241
    .local v6, "op01Sim":[Z
    iget v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v9, v13, [Z

    .line 1242
    .local v9, "overseaUsim":[Z
    iget v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v13, [Z

    .line 1243
    .local v8, "overseaSim":[Z
    const-string/jumbo v13, "persist.radio.simswitch.iccid"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, "capabilitySimIccid":Ljava/lang/String;
    iget v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v2, v13, [Ljava/lang/String;

    .line 1246
    .local v2, "currIccId":[Ljava/lang/String;
    const-string/jumbo v13, "checkOp01CapSwitch start"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1248
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v13, :cond_3

    .line 1249
    iget-object v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v3

    .line 1250
    aget-object v13, v2, v3

    if-eqz v13, :cond_0

    const-string/jumbo v13, ""

    aget-object v14, v2, v3

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1251
    :cond_0
    const-string/jumbo v13, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1252
    const/4 v13, 0x0

    return v13

    .line 1254
    :cond_1
    const-string/jumbo v13, "N/A"

    aget-object v14, v2, v3

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1255
    add-int/lit8 v4, v4, 0x1

    .line 1256
    const/4 v13, 0x1

    shl-int/2addr v13, v3

    or-int/2addr v5, v13

    .line 1248
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1260
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "checkOp01CapSwitch : Inserted SIM count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1261
    const-string/jumbo v14, ", insertedStatus: "

    .line 1260
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1262
    iget v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v13}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1263
    const-string/jumbo v13, "checkOp01CapSwitch: sim locked"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1264
    const-string/jumbo v13, "persist.radio.unlock"

    const-string/jumbo v14, "true"

    invoke-direct {p0, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :goto_1
    invoke-static {v10, v11, v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1270
    const/4 v13, 0x0

    return v13

    .line 1266
    :cond_4
    const-string/jumbo v13, "checkOp01CapSwitch: no sim locked"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1267
    const-string/jumbo v13, "persist.radio.unlock"

    const-string/jumbo v14, "false"

    invoke-direct {p0, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1274
    :cond_5
    const-string/jumbo v13, "persist.radio.simswitch"

    const-string/jumbo v14, "1"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1273
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v1, v13, -0x1

    .line 1275
    .local v1, "capabilitySimId":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "op01: capabilitySimIccid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1276
    const-string/jumbo v14, "capabilitySimId:"

    .line 1275
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1277
    const/4 v3, 0x0

    :goto_2
    iget v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v13, :cond_a

    .line 1279
    aget v13, v10, v3

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    .line 1280
    aget v13, v11, v3

    if-eqz v13, :cond_7

    .line 1281
    const/4 v13, 0x1

    aput-boolean v13, v7, v3

    .line 1277
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1283
    :cond_7
    const/4 v13, 0x1

    aput-boolean v13, v6, v3

    goto :goto_3

    .line 1285
    :cond_8
    aget v13, v10, v3

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 1286
    aget v13, v11, v3

    if-eqz v13, :cond_9

    .line 1287
    const/4 v13, 0x1

    aput-boolean v13, v9, v3

    goto :goto_3

    .line 1289
    :cond_9
    const/4 v13, 0x1

    aput-boolean v13, v8, v3

    goto :goto_3

    .line 1294
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "op01Usim: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1295
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "op01Sim: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v6}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1296
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "overseaUsim: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1297
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "overseaSim: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1299
    const/4 v3, 0x0

    :goto_4
    iget v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v13, :cond_18

    .line 1300
    aget-object v13, v2, v3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 1301
    invoke-static {v3, v7, v6, v9, v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I

    move-result v12

    .line 1303
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "op01: i = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", currIccId : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v2, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", targetSim : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1306
    aget-boolean v13, v7, v3

    if-eqz v13, :cond_c

    .line 1307
    const-string/jumbo v13, "op01-C1: cur is old op01 USIM, no change"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1308
    if-eq v1, v3, :cond_b

    .line 1309
    const-string/jumbo v13, "op01-C1a: old op01 USIM change slot, change!"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1310
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1312
    :cond_b
    const/4 v13, 0x1

    return v13

    .line 1313
    :cond_c
    aget-boolean v13, v6, v3

    if-eqz v13, :cond_f

    .line 1314
    const/4 v13, -0x1

    if-eq v12, v13, :cond_e

    .line 1315
    const-string/jumbo v13, "op01-C2: cur is old op01 SIM but find op01 USIM, change!"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1316
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1321
    :cond_d
    :goto_5
    const/4 v13, 0x1

    return v13

    .line 1317
    :cond_e
    if-eq v1, v3, :cond_d

    .line 1318
    const-string/jumbo v13, "op01-C2a: old op01 SIM change slot, change!"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1319
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_5

    .line 1322
    :cond_f
    aget-boolean v13, v9, v3

    if-eqz v13, :cond_12

    .line 1323
    const/4 v13, -0x1

    if-eq v12, v13, :cond_11

    .line 1324
    const-string/jumbo v13, "op01-C3: cur is old OS USIM but find op01 SIMs, change!"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1325
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1330
    :cond_10
    :goto_6
    const/4 v13, 0x1

    return v13

    .line 1326
    :cond_11
    if-eq v1, v3, :cond_10

    .line 1327
    const-string/jumbo v13, "op01-C3a: old OS USIM change slot, change!"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1328
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_6

    .line 1331
    :cond_12
    aget-boolean v13, v8, v3

    if-eqz v13, :cond_15

    .line 1332
    const/4 v13, -0x1

    if-eq v12, v13, :cond_14

    .line 1333
    const-string/jumbo v13, "op01-C4: cur is old OS SIM but find op01 SIMs/OS USIM, change!"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1334
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1339
    :cond_13
    :goto_7
    const/4 v13, 0x1

    return v13

    .line 1335
    :cond_14
    if-eq v1, v3, :cond_13

    .line 1336
    const-string/jumbo v13, "op01-C4a: old OS SIM change slot, change!"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1337
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_7

    .line 1340
    :cond_15
    const/4 v13, -0x1

    if-eq v12, v13, :cond_16

    .line 1341
    const-string/jumbo v13, "op01-C5: cur is old non-op01 SIM/USIM but find higher SIM, change!"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1342
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1343
    const/4 v13, 0x1

    return v13

    .line 1345
    :cond_16
    const-string/jumbo v13, "op01-C6: no higher priority SIM, no cahnge"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1346
    const/4 v13, 0x1

    return v13

    .line 1299
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 1350
    :cond_18
    invoke-static {v1, v7, v6, v9, v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I

    move-result v12

    .line 1352
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "op01: target SIM :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1353
    aget-boolean v13, v7, v1

    if-eqz v13, :cond_19

    .line 1354
    const-string/jumbo v13, "op01-C7: cur is new op01 USIM, no change"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1355
    const/4 v13, 0x1

    return v13

    .line 1356
    :cond_19
    aget-boolean v13, v6, v1

    if-eqz v13, :cond_1b

    .line 1357
    const/4 v13, -0x1

    if-eq v12, v13, :cond_1a

    .line 1358
    const-string/jumbo v13, "op01-C8: cur is new op01 SIM but find op01 USIM, change!"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1359
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1361
    :cond_1a
    const/4 v13, 0x1

    return v13

    .line 1362
    :cond_1b
    aget-boolean v13, v9, v1

    if-eqz v13, :cond_1d

    .line 1363
    const/4 v13, -0x1

    if-eq v12, v13, :cond_1c

    .line 1364
    const-string/jumbo v13, "op01-C9: cur is new OS USIM but find op01 SIMs, change!"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1365
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1367
    :cond_1c
    const/4 v13, 0x1

    return v13

    .line 1368
    :cond_1d
    aget-boolean v13, v8, v1

    if-eqz v13, :cond_1f

    .line 1369
    const/4 v13, -0x1

    if-eq v12, v13, :cond_1e

    .line 1370
    const-string/jumbo v13, "op01-C10: cur is new OS SIM but find op01 SIMs/OS USIM, change!"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1371
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1373
    :cond_1e
    const/4 v13, 0x1

    return v13

    .line 1374
    :cond_1f
    const/4 v13, -0x1

    if-eq v12, v13, :cond_20

    .line 1375
    const-string/jumbo v13, "op01-C11: cur is non-op01 but find higher priority SIM, change!"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1376
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1380
    :goto_8
    const/4 v13, 0x1

    return v13

    .line 1378
    :cond_20
    const-string/jumbo v13, "op01-C12: no higher priority SIM, no cahnge"

    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private checkOp01CapSwitch6m()Z
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1386
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v7, v10, [I

    .line 1387
    .local v7, "simOpInfo":[I
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v10, [I

    .line 1388
    .local v8, "simType":[I
    const/4 v9, -0x1

    .line 1389
    .local v9, "targetPhoneId":I
    const/4 v4, 0x0

    .line 1390
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 1391
    .local v5, "insertedStatus":I
    const-string/jumbo v10, "persist.radio.simswitch.iccid"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1392
    .local v1, "capabilitySimIccid":Ljava/lang/String;
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v2, v10, [Ljava/lang/String;

    .line 1393
    .local v2, "currIccId":[Ljava/lang/String;
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v6, v10, [I

    .line 1394
    .local v6, "priority":[I
    const/4 v0, -0x1

    .line 1396
    .local v0, "capabilityPhoneId":I
    const-string/jumbo v10, "checkOp01CapSwitch6m start"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1398
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v10, :cond_4

    .line 1399
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v3

    .line 1400
    aget-object v10, v2, v3

    if-eqz v10, :cond_0

    const-string/jumbo v10, ""

    aget-object v11, v2, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1401
    :cond_0
    const-string/jumbo v10, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1402
    return v12

    .line 1404
    :cond_1
    const-string/jumbo v10, "N/A"

    aget-object v11, v2, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1405
    add-int/lit8 v4, v4, 0x1

    .line 1406
    shl-int v10, v13, v3

    or-int/2addr v5, v10

    .line 1409
    :cond_2
    aget-object v10, v2, v3

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1410
    move v0, v3

    .line 1398
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1414
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "checkOp01CapSwitch6m : Inserted SIM count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1415
    const-string/jumbo v11, ", insertedStatus: "

    .line 1414
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1416
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v10}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1417
    const-string/jumbo v10, "checkOp01CapSwitch6m: sim locked"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1418
    const-string/jumbo v10, "persist.radio.unlock"

    const-string/jumbo v11, "true"

    invoke-direct {p0, v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    :goto_1
    invoke-static {v7, v8, v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1424
    return v12

    .line 1420
    :cond_5
    const-string/jumbo v10, "checkOp01CapSwitch6m: no sim locked"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1421
    const-string/jumbo v10, "persist.radio.unlock"

    const-string/jumbo v11, "false"

    invoke-direct {p0, v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1427
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "op01-6m: capabilitySimIccid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1428
    const-string/jumbo v11, ", capabilityPhoneId:"

    .line 1427
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1429
    const/4 v3, 0x0

    :goto_2
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v10, :cond_a

    .line 1430
    aget v10, v7, v3

    if-ne v10, v14, :cond_9

    .line 1431
    aget v10, v8, v3

    if-ne v10, v13, :cond_8

    .line 1432
    aput v12, v6, v3

    .line 1429
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1433
    :cond_8
    aget v10, v8, v3

    if-nez v10, :cond_7

    .line 1434
    aput v13, v6, v3

    goto :goto_3

    .line 1437
    :cond_9
    aput v14, v6, v3

    goto :goto_3

    .line 1441
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "priority: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1444
    invoke-static {v0, v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHighestPriorityPhone(I[I)I

    move-result v9

    .line 1446
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "op01-6m: target phone: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1447
    const/4 v10, -0x1

    if-eq v9, v10, :cond_b

    .line 1448
    const-string/jumbo v10, "op01-6m: highest priority SIM determined, change!"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1449
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1454
    :goto_4
    return v13

    .line 1451
    :cond_b
    const-string/jumbo v10, "op01-6m: can\'t determine highest priority SIM, no cahnge"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private checkOp02CapSwitch(I)Z
    .locals 14
    .param p1, "policy"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2053
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v7, v10, [I

    .line 2054
    .local v7, "simOpInfo":[I
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v10, [I

    .line 2055
    .local v8, "simType":[I
    const/4 v3, 0x0

    .line 2056
    .local v3, "insertedStatus":I
    const/4 v2, 0x0

    .line 2057
    .local v2, "insertedSimCount":I
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v10, [Ljava/lang/String;

    .line 2058
    .local v0, "currIccId":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2059
    .local v9, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2060
    .local v6, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2061
    .local v4, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2063
    .local v5, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v10, :cond_3

    .line 2064
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v1

    .line 2065
    aget-object v10, v0, v1

    if-eqz v10, :cond_0

    const-string/jumbo v10, ""

    aget-object v11, v0, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2066
    :cond_0
    const-string/jumbo v10, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2067
    return v12

    .line 2069
    :cond_1
    const-string/jumbo v10, "N/A"

    aget-object v11, v0, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2070
    add-int/lit8 v2, v2, 0x1

    .line 2071
    shl-int v10, v13, v1

    or-int/2addr v3, v10

    .line 2063
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2074
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "checkOp02CapSwitch : Inserted SIM count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2075
    const-string/jumbo v11, ", insertedStatus: "

    .line 2074
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2078
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v10}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2079
    const-string/jumbo v10, "checkOp02CapSwitch: sim locked"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2080
    if-nez p1, :cond_4

    .line 2081
    const-string/jumbo v10, "persist.radio.unlock"

    const-string/jumbo v11, "true"

    invoke-direct {p0, v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    :goto_1
    invoke-static {v7, v8, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v10

    if-nez v10, :cond_7

    .line 2094
    return v12

    .line 2083
    :cond_4
    const-string/jumbo v10, "persist.radio.unlock.roaming"

    const-string/jumbo v11, "true"

    invoke-direct {p0, v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2086
    :cond_5
    const-string/jumbo v10, "checkOp02CapSwitch: no sim locked"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2087
    if-nez p1, :cond_6

    .line 2088
    const-string/jumbo v10, "persist.radio.unlock"

    const-string/jumbo v11, "false"

    invoke-direct {p0, v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2090
    :cond_6
    const-string/jumbo v10, "persist.radio.unlock.roaming"

    const-string/jumbo v11, "false"

    invoke-direct {p0, v10, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2097
    :cond_7
    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v10, :cond_8

    .line 2098
    const-string/jumbo v10, "DataSubSelector for OP02: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2099
    if-nez p1, :cond_9

    .line 2100
    iput-boolean v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 2106
    :cond_8
    :goto_2
    const/4 v1, 0x0

    :goto_3
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v10, :cond_c

    .line 2107
    aget v10, v7, v1

    const/4 v11, 0x3

    if-ne v11, v10, :cond_a

    .line 2108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2112
    :goto_4
    aget v10, v8, v1

    if-ne v13, v10, :cond_b

    .line 2113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2106
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2101
    :cond_9
    if-ne v13, p1, :cond_8

    .line 2102
    iput-boolean v13, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    goto :goto_2

    .line 2110
    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2115
    :cond_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2118
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "usimIndexList size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2119
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "op02IndexList size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2120
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "policy = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2122
    iput-boolean v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    .line 2123
    packed-switch p1, :pswitch_data_0

    .line 2131
    const-string/jumbo v10, "Should NOT be here"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 2134
    :goto_6
    return v13

    .line 2125
    :pswitch_0
    invoke-direct {p0, v9, v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->executeOp02HomePolicy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 2128
    :pswitch_1
    invoke-direct {p0, v9, v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->executeOp02RoamingPolocy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 2123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkOp18CapSwitch()Z
    .locals 14

    .prologue
    .line 1459
    sget v12, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->capability_switch_policy:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    .line 1460
    const-string/jumbo v12, "checkOp18CapSwitch: config is not default policy, do nothing"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1461
    const/4 v12, 0x1

    return v12

    .line 1465
    :cond_0
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v9, v12, [I

    .line 1466
    .local v9, "simOpInfo":[I
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v10, v12, [I

    .line 1467
    .local v10, "simType":[I
    const/4 v11, -0x1

    .line 1468
    .local v11, "targetSim":I
    const/4 v4, 0x0

    .line 1469
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 1470
    .local v5, "insertedStatus":I
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v7, v12, [Z

    .line 1471
    .local v7, "op18Usim":[Z
    const-string/jumbo v12, "persist.radio.simswitch.iccid"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1472
    .local v0, "capabilitySimIccid":Ljava/lang/String;
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v2, v12, [Ljava/lang/String;

    .line 1474
    .local v2, "currIccId":[Ljava/lang/String;
    const-string/jumbo v12, "checkOp18CapSwitch start"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1476
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v12, :cond_4

    .line 1477
    iget-object v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v12, v12, v3

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v3

    .line 1478
    aget-object v12, v2, v3

    if-eqz v12, :cond_1

    const-string/jumbo v12, ""

    aget-object v13, v2, v3

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1479
    :cond_1
    const-string/jumbo v12, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1480
    const/4 v12, 0x0

    return v12

    .line 1482
    :cond_2
    const-string/jumbo v12, "N/A"

    aget-object v13, v2, v3

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1483
    add-int/lit8 v4, v4, 0x1

    .line 1484
    const/4 v12, 0x1

    shl-int/2addr v12, v3

    or-int/2addr v5, v12

    .line 1476
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1487
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkOp18CapSwitch : Inserted SIM count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1488
    const-string/jumbo v13, ", insertedStatus: "

    .line 1487
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1489
    invoke-static {v9, v10, v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1490
    const/4 v12, 0x0

    return v12

    .line 1494
    :cond_5
    const/4 v3, 0x0

    :goto_1
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v12, :cond_8

    .line 1495
    if-nez v3, :cond_7

    .line 1496
    const-string/jumbo v8, "gsm.sim.ril.mcc.mnc"

    .line 1500
    .local v8, "propStr":Ljava/lang/String;
    :goto_2
    const-string/jumbo v12, ""

    invoke-static {v8, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "sim_lock"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1501
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkOp18CapSwitch : phone "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is sim lock"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1502
    const-string/jumbo v12, "persist.radio.unlock"

    const-string/jumbo v13, "true"

    invoke-direct {p0, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1498
    .end local v8    # "propStr":Ljava/lang/String;
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "propStr":Ljava/lang/String;
    goto :goto_2

    .line 1506
    .end local v8    # "propStr":Ljava/lang/String;
    :cond_8
    const-string/jumbo v12, "persist.radio.simswitch"

    const-string/jumbo v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1505
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v1, v12, -0x1

    .line 1507
    .local v1, "capabilitySimId":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "op18: capabilitySimIccid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1508
    const-string/jumbo v13, "capabilitySimId:"

    .line 1507
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1509
    const/4 v3, 0x0

    :goto_3
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v12, :cond_a

    .line 1511
    aget v12, v9, v3

    const/4 v13, 0x5

    if-ne v12, v13, :cond_9

    .line 1512
    const/4 v12, 0x1

    aput-boolean v12, v7, v3

    .line 1509
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1516
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "op18Usim: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v7}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1518
    const/4 v3, 0x0

    :goto_4
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v12, :cond_12

    .line 1519
    aget-object v12, v2, v3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1520
    aget-boolean v12, v7, v3

    if-eqz v12, :cond_d

    .line 1521
    move v11, v3

    .line 1530
    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "op18: i = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1531
    const-string/jumbo v13, ", currIccId : "

    .line 1530
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1532
    aget-object v13, v2, v3

    .line 1530
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1532
    const-string/jumbo v13, ", targetSim : "

    .line 1530
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1535
    aget-boolean v12, v7, v3

    if-eqz v12, :cond_f

    .line 1536
    const-string/jumbo v12, "op18-C1: cur is old op18 USIM, no change"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1537
    if-eq v1, v3, :cond_c

    .line 1538
    const-string/jumbo v12, "op18-C1a: old op18 SIM change slot, change!"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1539
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1541
    :cond_c
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1542
    const/4 v12, 0x1

    invoke-direct {p0, v3, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1543
    const/4 v12, 0x1

    return v12

    .line 1523
    :cond_d
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_5
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v6, v12, :cond_b

    .line 1524
    aget-boolean v12, v7, v6

    if-eqz v12, :cond_e

    .line 1525
    move v11, v6

    .line 1523
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1544
    .end local v6    # "j":I
    :cond_f
    const/4 v12, -0x1

    if-eq v11, v12, :cond_10

    .line 1545
    const-string/jumbo v12, "op18-C2: cur is not op18 SIM but find op18 SIM, change!"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1546
    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1547
    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1548
    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1549
    const/4 v12, 0x1

    return v12

    .line 1551
    :cond_10
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1552
    const/4 v12, 0x1

    invoke-direct {p0, v1, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1553
    const-string/jumbo v12, "op18-C6: no higher priority SIM, no cahnge"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1554
    const/4 v12, 0x1

    return v12

    .line 1518
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 1558
    :cond_12
    aget-boolean v12, v7, v1

    if-eqz v12, :cond_14

    .line 1559
    move v11, v1

    .line 1567
    :cond_13
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "op18: target SIM :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1568
    aget-boolean v12, v7, v1

    if-eqz v12, :cond_16

    .line 1569
    const-string/jumbo v12, "op18-C7: cur is new op18 USIM, no change"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1570
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1571
    const/4 v12, 0x1

    invoke-direct {p0, v1, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1572
    const/4 v12, 0x1

    return v12

    .line 1561
    :cond_14
    const/4 v3, 0x0

    :goto_6
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v12, :cond_13

    .line 1562
    aget-boolean v12, v7, v3

    if-eqz v12, :cond_15

    .line 1563
    move v11, v3

    .line 1561
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1573
    :cond_16
    const/4 v12, -0x1

    if-eq v11, v12, :cond_17

    .line 1574
    const-string/jumbo v12, "op18-C8: find op18 USIM, change!"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1575
    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1576
    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1577
    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1578
    const/4 v12, 0x1

    return v12

    .line 1580
    :cond_17
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1581
    const/4 v12, 0x1

    invoke-direct {p0, v1, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1582
    const-string/jumbo v12, "op18-C12: no higher priority SIM, no cahnge"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1584
    const/4 v12, 0x1

    return v12
.end method

.method private executeOp02HomePolicy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2139
    const/4 v2, -0x1

    .line 2140
    .local v2, "phoneId":I
    const/4 v1, 0x0

    .line 2142
    .local v1, "op02CardCount":I
    const-string/jumbo v3, "Enter op02HomePolicy"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2144
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v6, :cond_4

    .line 2146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2147
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2148
    add-int/lit8 v1, v1, 0x1

    .line 2149
    move v2, v0

    .line 2146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2153
    :cond_1
    if-ne v1, v5, :cond_3

    .line 2158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "C2: Only one OP02 USIM inserted, set default data to phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2160
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2161
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 2162
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    .line 2138
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 2167
    .restart local v0    # "i":I
    :cond_3
    const-string/jumbo v3, "C3: More than two OP02 cards or other operator cards inserted,Display dialog"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2169
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    .line 2170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPrevDefaultDataSubId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2171
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    goto :goto_1

    .line 2173
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 2178
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "C4: Only one USIM inserted, set default data to phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2181
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2182
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 2183
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto :goto_1

    .line 2188
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 2189
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2190
    add-int/lit8 v1, v1, 0x1

    .line 2191
    move v2, v0

    .line 2188
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2195
    :cond_7
    if-ne v1, v5, :cond_8

    .line 2200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "C5: OP02 card + otehr op cards inserted, set default data to phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2202
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2203
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 2204
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto/16 :goto_1

    .line 2209
    :cond_8
    const-string/jumbo v3, "C6: More than two OP02 cards or other operator cards inserted,display dialog"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2211
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    .line 2212
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    goto/16 :goto_1
.end method

.method private executeOp02RoamingPolocy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 2219
    const/4 v2, -0x1

    .line 2220
    .local v2, "phoneId":I
    const/4 v4, 0x0

    .line 2222
    .local v4, "usimCount":I
    const-string/jumbo v5, "Enter op02RoamingPolocy"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2224
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 2225
    const-string/jumbo v5, "mContext is null, return"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 2229
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v7, :cond_6

    .line 2231
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 2232
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2233
    add-int/lit8 v4, v4, 0x1

    .line 2234
    move v2, v1

    .line 2231
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2238
    :cond_2
    if-ne v4, v6, :cond_5

    .line 2243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "C2: Only one OP02 USIM inserted, set default data to phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2245
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2246
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 2247
    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    .line 2298
    .end local v1    # "i":I
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "first_time_roaming"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2300
    .local v3, "preferenceRoaming":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2301
    .local v0, "editorRoaming":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "need_to_execute_roaming"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2302
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2303
    const-string/jumbo v5, "write sharedPreference ERROR"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 2218
    :cond_4
    return-void

    .line 2252
    .end local v0    # "editorRoaming":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferenceRoaming":Landroid/content/SharedPreferences;
    .restart local v1    # "i":I
    :cond_5
    const-string/jumbo v5, "C3: More than two USIM cards or other SIM cards inserted, show dialog"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2253
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    iput v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    .line 2254
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    goto :goto_1

    .line 2256
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_7

    .line 2261
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "C4: OP02 card + other cards inserted, set default data to phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2264
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2265
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 2266
    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto :goto_1

    .line 2271
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 2272
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2273
    add-int/lit8 v4, v4, 0x1

    .line 2274
    move v2, v1

    .line 2271
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2278
    :cond_9
    if-ne v4, v6, :cond_a

    .line 2283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "C5: Other USIM + other SIM cards inserted, set default data to phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2285
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2286
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 2287
    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto/16 :goto_1

    .line 2292
    :cond_a
    const-string/jumbo v5, "C6: More than two USIM cards or all SIM cards inserted, diaplay dialog"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2293
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    iput v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    .line 2294
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    goto/16 :goto_1
.end method

.method private getDataEnabledFromSetting(I)Z
    .locals 5
    .param p1, "nSubId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDataEnabledFromSetting, nSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2350
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2351
    :cond_0
    const-string/jumbo v2, "getDataEnabledFromSetting, context or resolver is null, return"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2352
    return v4

    .line 2355
    :cond_1
    const/4 v0, 0x0

    .line 2357
    .local v0, "retVal":Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2357
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 2363
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDataEnabledFromSetting, retVal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2364
    return v0

    .line 2357
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2359
    :catch_0
    move-exception v1

    .line 2360
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastDataEnabled()I
    .locals 5

    .prologue
    .line 2604
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 2605
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DataSubselector getLastDataEnable subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2606
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2606
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2608
    .local v0, "enabled":I
    return v0
.end method

.method private getNewSimSlot()I
    .locals 2

    .prologue
    .line 2562
    const-string/jumbo v0, "getNewSimSlot"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2563
    const-string/jumbo v0, "persist.radio.new.sim.slot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSimStatus()I
    .locals 2

    .prologue
    .line 2542
    const-string/jumbo v0, "getSimStatus"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2543
    const-string/jumbo v0, "persist.radio.sim.status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDataEnableForOp02(I)V
    .locals 8
    .param p1, "insertedSimCount"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleDataEnableForOp02: insertedSimCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2310
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 2311
    .local v3, "telephony":Landroid/telephony/TelephonyManager;
    if-nez v3, :cond_0

    .line 2312
    const-string/jumbo v4, "TelephonyManager.getDefault() return null"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 2313
    return-void

    .line 2316
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 2317
    .local v1, "nDefaultDataSubId":I
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2318
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2319
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getDataEnabledFromSetting(I)Z

    move-result v0

    .line 2320
    .local v0, "enable":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEnable by lastValidDataSub\'s setting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2321
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    invoke-direct {p0, v4, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 2307
    .end local v0    # "enable":Z
    :cond_1
    :goto_0
    return-void

    .line 2323
    :cond_2
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    invoke-direct {p0, v4, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_0

    .line 2325
    :cond_3
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2326
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    .line 2325
    if-eqz v4, :cond_1

    .line 2327
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    if-eq v4, v1, :cond_5

    .line 2328
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getDataEnabledFromSetting(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2329
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    invoke-direct {p0, v4, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_0

    .line 2331
    :cond_4
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    invoke-direct {p0, v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_0

    .line 2333
    :cond_5
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 2334
    const/4 v2, 0x0

    .line 2335
    .local v2, "nonDefaultPhoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    if-nez v4, :cond_6

    .line 2336
    const/4 v2, 0x1

    .line 2340
    :goto_1
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getDataEnabledFromSetting(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2341
    invoke-direct {p0, v2, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_0

    .line 2338
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isNeedWaitUnlock(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    .line 2368
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isOP09ASupport()Z
    .locals 3

    .prologue
    .line 2622
    const-string/jumbo v0, "OP09"

    const-string/jumbo v1, "ro.operator.optr"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2623
    const-string/jumbo v0, "SEGDEFAULT"

    const-string/jumbo v1, "ro.operator.seg"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2622
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 2590
    const-string/jumbo v0, "DataSubSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 2596
    const-string/jumbo v0, "DataSubSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    return-void
.end method

.method private registerWorldModeReceiver()V
    .locals 3

    .prologue
    .line 2567
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2568
    const-string/jumbo v1, "registerWorldModeReceiver, context is null => return"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2569
    return-void

    .line 2572
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2573
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2574
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2575
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mHasRegisterWorldModeReceiver:Z

    .line 2566
    return-void
.end method

.method private resetNewSimSlot()V
    .locals 2

    .prologue
    .line 2557
    const-string/jumbo v0, "resetNewSimSlot"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2558
    const-string/jumbo v0, "persist.radio.new.sim.slot"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    return-void
.end method

.method private resetSimStatus()V
    .locals 2

    .prologue
    .line 2537
    const-string/jumbo v0, "resetSimStatus"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2538
    const-string/jumbo v0, "persist.radio.sim.status"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    return-void
.end method

.method private setCapability(I)Z
    .locals 11
    .param p1, "phoneId"    # I

    .prologue
    .line 1992
    iget v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v7, v9, [I

    .line 1993
    .local v7, "phoneRat":[I
    const/4 v6, 0x1

    .line 1995
    .local v6, "isSwitchSuccess":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setCapability: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1997
    const-string/jumbo v9, "persist.radio.simswitch"

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1998
    .local v0, "curr3GSim":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "current 3G Sim = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2003
    :try_start_0
    const-string/jumbo v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 2002
    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2005
    .local v4, "iTel":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v9, "phoneEx"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 2004
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v5

    .line 2006
    .local v5, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 2007
    :cond_0
    const-string/jumbo v9, "Can not get phone service"

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 2008
    const/4 v9, 0x0

    return v9

    .line 2011
    :cond_1
    const-string/jumbo v9, "phone"

    invoke-interface {v4, p1, v9}, Lcom/android/internal/telephony/ITelephony;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v1

    .line 2012
    .local v1, "currRat":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Current phoneRat:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2014
    iget v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v9, [Landroid/telephony/RadioAccessFamily;

    .line 2015
    .local v8, "rat":[Landroid/telephony/RadioAccessFamily;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v9, :cond_5

    .line 2016
    if-ne p1, v3, :cond_2

    .line 2017
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SIM switch to Phone"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2018
    const v9, 0x14008

    aput v9, v7, v3

    .line 2024
    :goto_1
    new-instance v9, Landroid/telephony/RadioAccessFamily;

    aget v10, v7, v3

    invoke-direct {v9, v3, v10}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v9, v8, v3

    .line 2015
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2022
    :cond_2
    const/high16 v9, 0x10000

    aput v9, v7, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2030
    .end local v1    # "currRat":I
    .end local v3    # "i":I
    .end local v4    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v5    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v8    # "rat":[Landroid/telephony/RadioAccessFamily;
    :catch_0
    move-exception v2

    .line 2031
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v9, "Set phone rat fail!!!"

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2033
    const/4 v6, 0x0

    .line 2036
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    if-nez v6, :cond_6

    .line 2037
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSwitching()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2038
    const-string/jumbo v9, "world mode switching!"

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2039
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->registerWorldModeReceiver()V

    .line 2040
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I

    .line 2049
    :cond_4
    :goto_3
    return v6

    .line 2026
    .restart local v1    # "currRat":I
    .restart local v3    # "i":I
    .restart local v4    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .restart local v5    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .restart local v8    # "rat":[Landroid/telephony/RadioAccessFamily;
    :cond_5
    :try_start_1
    invoke-interface {v5, v8}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2027
    const-string/jumbo v9, "Set phone rat fail!!!"

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2028
    const/4 v6, 0x0

    goto :goto_2

    .line 2043
    .end local v1    # "currRat":I
    .end local v3    # "i":I
    .end local v4    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v5    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v8    # "rat":[Landroid/telephony/RadioAccessFamily;
    :cond_6
    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mHasRegisterWorldModeReceiver:Z

    if-eqz v9, :cond_4

    .line 2044
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->unRegisterWorldModeReceiver()V

    .line 2045
    const/4 v9, -0x1

    iput v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I

    goto :goto_3
.end method

.method private setCapabilityForC2K6M(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1942
    const-string/jumbo v7, "ro.mtk.c2k.slot2.support"

    const-string/jumbo v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1941
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1943
    .local v0, "c2kP2":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCapabilityForC2K6M,c2kP2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1945
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkCdmaCardInsert()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1946
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForSolution15(Landroid/content/Intent;)V

    .line 1947
    return-void

    .line 1949
    :cond_0
    const-string/jumbo v7, "DataSubSelector for setCapabilityForC2K6M: only for capability switch"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1952
    const/4 v6, -0x1

    .line 1953
    .local v6, "phoneId":I
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v1, v7, [Ljava/lang/String;

    .line 1959
    .local v1, "currIccId":[Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 1960
    .local v4, "defaultIccid":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    .line 1961
    .local v3, "defDataSubId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1962
    .local v2, "defDataPhoneId":I
    if-ltz v2, :cond_1

    .line 1963
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    array-length v7, v7

    if-lt v2, v7, :cond_3

    .line 1964
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "phoneId out of boundary :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1969
    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Default data Iccid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1970
    const-string/jumbo v7, "N/A"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1971
    :cond_2
    return-void

    .line 1966
    :cond_3
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1973
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v5, v7, :cond_7

    .line 1974
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    .line 1975
    aget-object v7, v1, v5

    if-eqz v7, :cond_5

    const-string/jumbo v7, ""

    aget-object v8, v1, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1976
    :cond_5
    const-string/jumbo v7, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1977
    return-void

    .line 1979
    :cond_6
    aget-object v7, v1, v5

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1980
    move v6, v5

    .line 1984
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Default data phoneid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1985
    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 1987
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1940
    :cond_8
    return-void

    .line 1973
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private setCapabilityIfNeeded(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCapabilityIfNeeded,mIsSubReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1934
    const-string/jumbo v1, ", mRadioTechDone = "

    .line 1933
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1934
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z

    .line 1933
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1935
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z

    if-eqz v0, :cond_0

    .line 1936
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityForC2K6M(Landroid/content/Intent;)V

    .line 1932
    :cond_0
    return-void
.end method

.method private setDataEnabled(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1776
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataEnabled: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1778
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1779
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 1780
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 1781
    invoke-virtual {v2, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1775
    :cond_0
    :goto_0
    return-void

    .line 1783
    :cond_1
    const/4 v1, 0x0

    .line 1784
    .local v1, "phoneSubId":I
    if-nez p2, :cond_2

    .line 1785
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 1786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v2, v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0

    .line 1789
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v0, v3, :cond_0

    .line 1790
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 1791
    if-eq v0, p1, :cond_3

    .line 1792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1793
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1789
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1795
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1796
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_2
.end method

.method private setDefaultData(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    .line 1873
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    .line 1874
    .local v4, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 1875
    .local v3, "sub":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    .line 1876
    .local v2, "currSub":I
    iput v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPrevDefaultDataSubId:I

    .line 1878
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    .line 1881
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 1882
    const-string/jumbo v5, "persist.radio.simswitch"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1883
    .local v1, "curr3GSim":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1890
    .end local v1    # "curr3GSim":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDefaultData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", current default sub:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1891
    const-string/jumbo v6, "last valid default sub:"

    .line 1890
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1891
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    .line 1890
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1892
    if-eq v3, v2, :cond_2

    .line 1893
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 1872
    :goto_1
    return-void

    .line 1884
    .restart local v1    # "curr3GSim":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 1885
    .local v0, "curr3GPhoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 1886
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDefaultData current 3G subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1895
    .end local v0    # "curr3GPhoneId":I
    .end local v1    # "curr3GSim":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "setDefaultData: default data unchanged"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setLastValidDefaultDataSub(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 2612
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLastValidDefaultDataSub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2614
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    .line 2611
    :goto_0
    return-void

    .line 2616
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "because invalid id to set, keep LastValidDefaultDataSub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2617
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    .line 2616
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2372
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    return-void
.end method

.method private setNewSimSlot(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2547
    if-nez p1, :cond_0

    .line 2548
    const-string/jumbo v1, "setNewSimSlot, intent is null => return"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2549
    return-void

    .line 2551
    :cond_0
    const-string/jumbo v1, "setNewSimSlot"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2552
    const-string/jumbo v1, "newSIMSlot"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2553
    .local v0, "newSimStatus":I
    const-string/jumbo v1, "persist.radio.new.sim.slot"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    return-void
.end method

.method private setSimStatus(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2527
    if-nez p1, :cond_0

    .line 2528
    const-string/jumbo v1, "setSimStatus, intent is null => return"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2529
    return-void

    .line 2531
    :cond_0
    const-string/jumbo v1, "setSimStatus"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2532
    const-string/jumbo v1, "simDetectStatus"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2533
    .local v0, "detectedType":I
    const-string/jumbo v1, "persist.radio.sim.status"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2526
    return-void
.end method

.method private subSelectorForOm(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 512
    const-string/jumbo v7, "DataSubSelector for OM: only for capability switch; for default data, use google"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 515
    const/4 v5, -0x1

    .line 516
    .local v5, "phoneId":I
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v7, [Ljava/lang/String;

    .line 520
    .local v0, "currIccId":[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-nez v7, :cond_0

    .line 521
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    .line 528
    :cond_0
    const-string/jumbo v3, ""

    .line 529
    .local v3, "defaultIccid":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 530
    .local v2, "defDataSubId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 531
    .local v1, "defDataPhoneId":I
    if-ltz v1, :cond_1

    .line 532
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    array-length v7, v7

    if-lt v1, v7, :cond_3

    .line 533
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "phoneId out of boundary :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 538
    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Default data Iccid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 539
    const-string/jumbo v7, "N/A"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 540
    :cond_2
    return-void

    .line 535
    :cond_3
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 542
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v7, :cond_7

    .line 543
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 544
    aget-object v7, v0, v4

    if-eqz v7, :cond_5

    const-string/jumbo v7, ""

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 545
    :cond_5
    const-string/jumbo v7, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 546
    return-void

    .line 548
    :cond_6
    aget-object v7, v0, v4

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 549
    move v5, v4

    .line 565
    :cond_7
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 566
    const-string/jumbo v7, "DataSubSelector for OM: do not switch because of sim locking"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 567
    const-string/jumbo v7, "persist.radio.unlock"

    const-string/jumbo v8, "true"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 569
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 570
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    .line 571
    return-void

    .line 553
    :cond_8
    const-string/jumbo v7, "N/A"

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 554
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clear mcc.mnc:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 556
    if-nez v4, :cond_a

    .line 557
    const-string/jumbo v6, "gsm.sim.ril.mcc.mnc"

    .line 561
    .local v6, "propStr":Ljava/lang/String;
    :goto_2
    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 559
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propStr":Ljava/lang/String;
    goto :goto_2

    .line 573
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_b
    const-string/jumbo v7, "DataSubSelector for OM: no pin lock"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 574
    const-string/jumbo v7, "persist.radio.unlock"

    const-string/jumbo v8, "false"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v7, :cond_c

    .line 577
    const-string/jumbo v7, "DataSubSelector for OM: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 578
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 579
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 580
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 581
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    .line 582
    return-void

    .line 585
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Default data phoneid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 586
    const/4 v7, -0x1

    if-eq v5, v7, :cond_d

    .line 588
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 591
    :cond_d
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 593
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetSimStatus()V

    .line 594
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetNewSimSlot()V

    .line 511
    return-void
.end method

.method private subSelectorForOmLenovo(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 598
    const-string/jumbo v7, "DataSubSelector for LENOVO-OM: only for capability switch; for default data OR  Single SIM, use google"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 601
    const/4 v6, -0x1

    .line 602
    .local v6, "phoneId":I
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v7, [Ljava/lang/String;

    .line 604
    .local v0, "currIccId":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 605
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 606
    .local v5, "insertedStatus":I
    const-string/jumbo v7, "simDetectStatus"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 609
    .local v2, "detectedType":I
    const-string/jumbo v7, "persist.radio.data.iccid"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Default data Iccid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 612
    if-eqz v1, :cond_0

    const-string/jumbo v7, "N/A"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 623
    :cond_0
    :goto_0
    if-ne v6, v9, :cond_7

    .line 624
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v7, :cond_4

    .line 625
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 626
    const-string/jumbo v7, "N/A"

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 627
    add-int/lit8 v4, v4, 0x1

    .line 628
    shl-int v7, v10, v3

    or-int/2addr v5, v7

    .line 624
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 613
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v7, :cond_0

    .line 614
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 615
    aget-object v7, v0, v3

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 616
    move v6, v3

    .line 617
    goto :goto_0

    .line 613
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 632
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Inserted SIM count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", insertedStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 633
    if-ne v4, v10, :cond_6

    .line 634
    const/4 v3, 0x0

    :goto_3
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v7, :cond_5

    .line 635
    shl-int v7, v10, v3

    and-int/2addr v7, v5

    if-eqz v7, :cond_9

    .line 636
    move v6, v3

    .line 640
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Single SIM:set capabliity to this phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 642
    :cond_6
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 646
    .end local v3    # "i":I
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Default data phoneid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 647
    if-eq v6, v9, :cond_8

    .line 649
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 597
    :cond_8
    return-void

    .line 634
    .restart local v3    # "i":I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private subSelectorForOp01(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1000
    const/4 v6, -0x1

    .line 1001
    .local v6, "phoneId":I
    const/4 v4, 0x0

    .line 1002
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 1003
    .local v5, "insertedStatus":I
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getSimStatus()I

    move-result v2

    .line 1005
    .local v2, "detectedType":I
    :goto_0
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v8, [Ljava/lang/String;

    .line 1007
    .local v0, "currIccId":[Ljava/lang/String;
    const-string/jumbo v8, "DataSubSelector for op01"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1009
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v8, :cond_5

    .line 1010
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    .line 1011
    aget-object v8, v0, v3

    if-eqz v8, :cond_0

    const-string/jumbo v8, ""

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1012
    :cond_0
    const-string/jumbo v8, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1013
    return-void

    .line 1004
    .end local v0    # "currIccId":[Ljava/lang/String;
    .end local v2    # "detectedType":I
    .end local v3    # "i":I
    :cond_1
    const-string/jumbo v8, "simDetectStatus"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "detectedType":I
    goto :goto_0

    .line 1015
    .restart local v0    # "currIccId":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "currIccId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1016
    const-string/jumbo v8, "N/A"

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1017
    add-int/lit8 v4, v4, 0x1

    .line 1018
    shl-int v8, v10, v3

    or-int/2addr v5, v8

    .line 1009
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1020
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "clear mcc.mnc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1022
    if-nez v3, :cond_4

    .line 1023
    const-string/jumbo v7, "gsm.sim.ril.mcc.mnc"

    .line 1027
    .local v7, "propStr":Ljava/lang/String;
    :goto_3
    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1025
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 1031
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_5
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1032
    const-string/jumbo v8, "DataSubSelector for OP01: do not switch because of sim locking"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1033
    const-string/jumbo v8, "persist.radio.unlock"

    const-string/jumbo v9, "true"

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 1035
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 1036
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    .line 1037
    return-void

    .line 1039
    :cond_6
    const-string/jumbo v8, "DataSubSelector for OP01: no pin lock"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1040
    const-string/jumbo v8, "persist.radio.unlock"

    const-string/jumbo v9, "false"

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-boolean v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v8, :cond_7

    .line 1043
    const-string/jumbo v8, "DataSubSelector for OP01: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1044
    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 1045
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 1046
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 1047
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    .line 1048
    return-void

    .line 1051
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Inserted SIM count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", insertedStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v8, "persist.radio.data.iccid"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Default data Iccid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1057
    if-nez v4, :cond_9

    .line 1059
    const-string/jumbo v8, "OP01 C0: No SIM inserted, do nothing"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1091
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetSimStatus()V

    .line 1092
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetNewSimSlot()V

    .line 999
    return-void

    .line 1060
    :cond_9
    if-ne v4, v10, :cond_d

    .line 1061
    const/4 v3, 0x0

    :goto_5
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v8, :cond_a

    .line 1062
    shl-int v8, v10, v3

    and-int/2addr v8, v5

    if-eqz v8, :cond_c

    .line 1063
    move v6, v3

    .line 1068
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OP01 C1: Single SIM: Set Default data to phone:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1069
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1070
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1073
    :cond_b
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    goto :goto_4

    .line 1061
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1074
    :cond_d
    const/4 v8, 0x2

    if-lt v4, v8, :cond_8

    .line 1077
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    .line 1078
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 1080
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch6m()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1082
    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 1083
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 1084
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 1085
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    .line 1086
    return-void
.end method

.method private subSelectorForOp02()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 921
    const/4 v4, -0x1

    .line 922
    .local v4, "phoneId":I
    const/4 v2, 0x0

    .line 923
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 924
    .local v3, "insertedStatus":I
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v6, [Ljava/lang/String;

    .line 926
    .local v0, "currIccId":[Ljava/lang/String;
    const-string/jumbo v6, "DataSubSelector for op02 (subSelectorForOp02)"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 928
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v6, :cond_4

    .line 929
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 930
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "currIccid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 931
    aget-object v6, v0, v1

    if-eqz v6, :cond_0

    const-string/jumbo v6, ""

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 932
    :cond_0
    const-string/jumbo v6, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 933
    return-void

    .line 935
    :cond_1
    const-string/jumbo v6, "N/A"

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 936
    add-int/lit8 v2, v2, 0x1

    .line 937
    shl-int v6, v8, v1

    or-int/2addr v3, v6

    .line 928
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 939
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clear mcc.mnc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 941
    if-nez v1, :cond_3

    .line 942
    const-string/jumbo v5, "gsm.sim.ril.mcc.mnc"

    .line 946
    .local v5, "propStr":Ljava/lang/String;
    :goto_2
    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sim index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not inserted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 944
    .end local v5    # "propStr":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propStr":Ljava/lang/String;
    goto :goto_2

    .line 951
    .end local v5    # "propStr":Ljava/lang/String;
    :cond_4
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 952
    const-string/jumbo v6, "DataSubSelector for OP02: do not switch because of sim locking"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 953
    const-string/jumbo v6, "persist.radio.unlock"

    const-string/jumbo v7, "true"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    return-void

    .line 956
    :cond_5
    const-string/jumbo v6, "DataSubSelector for OP02: no pin lock"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 957
    const-string/jumbo v6, "persist.radio.unlock"

    const-string/jumbo v7, "false"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v6, :cond_6

    .line 960
    const-string/jumbo v6, "DataSubSelector for OP02: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 961
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 962
    return-void

    .line 965
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Inserted SIM count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", insertedStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 967
    if-nez v2, :cond_8

    .line 972
    const-string/jumbo v6, "C0: No SIM inserted: set default data unset"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 973
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 996
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 920
    return-void

    .line 974
    :cond_8
    if-ne v2, v8, :cond_b

    .line 975
    const/4 v1, 0x0

    :goto_4
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v6, :cond_9

    .line 976
    shl-int v6, v8, v1

    and-int/2addr v6, v3

    if-eqz v6, :cond_a

    .line 977
    move v4, v1

    .line 985
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "C1: Single SIM inserted: set default data to phone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 986
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 987
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 988
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto :goto_3

    .line 975
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 990
    :cond_b
    const/4 v6, 0x2

    if-lt v2, v6, :cond_7

    .line 991
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp02CapSwitch(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 992
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    goto :goto_3
.end method

.method private subSelectorForOp02(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 836
    const/4 v5, -0x1

    .line 837
    .local v5, "phoneId":I
    const/4 v3, 0x0

    .line 838
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 839
    .local v4, "insertedStatus":I
    const-string/jumbo v7, "simDetectStatus"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 840
    .local v1, "detectedType":I
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v7, [Ljava/lang/String;

    .line 842
    .local v0, "currIccId":[Ljava/lang/String;
    const-string/jumbo v7, "DataSubSelector for OP02"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 844
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v7, :cond_4

    .line 845
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 846
    aget-object v7, v0, v2

    if-eqz v7, :cond_0

    const-string/jumbo v7, ""

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 847
    :cond_0
    const-string/jumbo v7, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 848
    return-void

    .line 850
    :cond_1
    const-string/jumbo v7, "N/A"

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 851
    add-int/lit8 v3, v3, 0x1

    .line 852
    shl-int v7, v10, v2

    or-int/2addr v4, v7

    .line 844
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 854
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clear mcc.mnc:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 856
    if-nez v2, :cond_3

    .line 857
    const-string/jumbo v6, "gsm.sim.ril.mcc.mnc"

    .line 861
    .local v6, "propStr":Ljava/lang/String;
    :goto_2
    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 859
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propStr":Ljava/lang/String;
    goto :goto_2

    .line 865
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_4
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 866
    const-string/jumbo v7, "DataSubSelector for OP02: do not switch because of sim locking"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 867
    const-string/jumbo v7, "persist.radio.unlock"

    const-string/jumbo v8, "true"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 869
    return-void

    .line 871
    :cond_5
    const-string/jumbo v7, "DataSubSelector for OP02: no pin lock"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 872
    const-string/jumbo v7, "persist.radio.unlock"

    const-string/jumbo v8, "false"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v7, :cond_6

    .line 875
    const-string/jumbo v7, "DataSubSelector for OP02: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 876
    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 877
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 878
    return-void

    .line 881
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Inserted SIM count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", insertedStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 883
    const/4 v7, 0x4

    if-ne v1, v7, :cond_8

    .line 885
    const-string/jumbo v7, "OP02 C0: Inserted status no change, do nothing"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 917
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 835
    return-void

    .line 886
    :cond_8
    if-nez v3, :cond_9

    .line 891
    const-string/jumbo v7, "OP02 C1: No SIM inserted, set data unset"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 892
    const/4 v7, -0x1

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto :goto_3

    .line 893
    :cond_9
    if-ne v3, v10, :cond_c

    .line 894
    const/4 v2, 0x0

    :goto_4
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v7, :cond_a

    .line 895
    shl-int v7, v10, v2

    and-int/2addr v7, v4

    if-eqz v7, :cond_b

    .line 896
    move v5, v2

    .line 904
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "OP02 C2: Single SIM: Set Default data to phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 905
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 906
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto :goto_3

    .line 894
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 907
    :cond_c
    const/4 v7, 0x2

    if-lt v3, v7, :cond_7

    .line 912
    const-string/jumbo v7, "OP02 C3: Multi SIM: Set Default data to phone1"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 913
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 914
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02(I)V

    goto :goto_3
.end method

.method private subSelectorForOp09(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1588
    const/4 v11, -0x1

    .line 1589
    .local v11, "phoneId":I
    const/4 v5, 0x0

    .line 1590
    .local v5, "insertedSimCount":I
    const/4 v6, 0x0

    .line 1591
    .local v6, "insertedStatus":I
    if-nez p1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getSimStatus()I

    move-result v3

    .line 1593
    .local v3, "detectedType":I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v1, v13, [Ljava/lang/String;

    .line 1595
    .local v1, "currIccId":[Ljava/lang/String;
    const-string/jumbo v13, "DataSubSelector for op09"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1597
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v13, :cond_4

    .line 1598
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v13, v13, v4

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v1, v4

    .line 1599
    aget-object v13, v1, v4

    if-eqz v13, :cond_0

    const-string/jumbo v13, ""

    aget-object v14, v1, v4

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1600
    :cond_0
    const-string/jumbo v13, "error: iccid not found, wait for next sub ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1601
    return-void

    .line 1592
    .end local v1    # "currIccId":[Ljava/lang/String;
    .end local v3    # "detectedType":I
    .end local v4    # "i":I
    :cond_1
    const-string/jumbo v13, "simDetectStatus"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .restart local v3    # "detectedType":I
    goto :goto_0

    .line 1603
    .restart local v1    # "currIccId":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "currIccId["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "] : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v1, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1604
    const-string/jumbo v13, "N/A"

    aget-object v14, v1, v4

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1605
    add-int/lit8 v5, v5, 0x1

    .line 1606
    const/4 v13, 0x1

    shl-int/2addr v13, v4

    or-int/2addr v6, v13

    .line 1597
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1609
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Inserted SIM count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", insertedStatus: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1612
    const-string/jumbo v13, "persist.radio.data.iccid"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1613
    .local v2, "defaultIccid":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Default data Iccid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1615
    if-nez v5, :cond_5

    .line 1620
    const-string/jumbo v13, "OP09 C0: No SIM inserted, set data unset"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1621
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1622
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v13, :cond_7

    .line 1623
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1622
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1625
    :cond_5
    const/4 v13, 0x1

    if-ne v5, v13, :cond_c

    .line 1626
    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v13, :cond_6

    .line 1627
    const/4 v13, 0x1

    shl-int/2addr v13, v4

    and-int/2addr v13, v6

    if-eqz v13, :cond_8

    .line 1628
    move v11, v4

    .line 1633
    :cond_6
    const/4 v13, 0x4

    if-ne v3, v13, :cond_9

    .line 1634
    const-string/jumbo v13, "OP09 C1: Single SIM unchange: do nothing"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1769
    :cond_7
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 1771
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetSimStatus()V

    .line 1772
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetNewSimSlot()V

    .line 1587
    return-void

    .line 1626
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1635
    :cond_9
    const/4 v13, 0x1

    if-ne v3, v13, :cond_a

    .line 1639
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "OP09 C2: Single SIM + New SIM: Set Default data to phone:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1640
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1641
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_4

    .line 1646
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1648
    const-string/jumbo v13, "OP09 C3: Single SIM + Old SIM: check data enable"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1652
    const-string/jumbo v12, "0"

    .line 1653
    .local v12, "strEnabled":Ljava/lang/String;
    if-nez v11, :cond_b

    .line 1654
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1655
    const-string/jumbo v13, "persist.radio.mobile.data"

    const-string/jumbo v14, "0"

    const/4 v15, 0x1

    .line 1654
    invoke-static {v15, v13, v14}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1660
    :goto_5
    const-string/jumbo v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_7

    .line 1661
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_4

    .line 1657
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1658
    const-string/jumbo v13, "persist.radio.mobile.data"

    const-string/jumbo v14, "0"

    const/4 v15, 0x0

    .line 1657
    invoke-static {v15, v13, v14}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    .line 1664
    .end local v12    # "strEnabled":Ljava/lang/String;
    :cond_c
    const/4 v13, 0x2

    if-lt v5, v13, :cond_7

    .line 1665
    const/4 v13, 0x1

    if-ne v3, v13, :cond_18

    .line 1666
    if-nez p1, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getNewSimSlot()I

    move-result v9

    .line 1669
    .local v9, "newSimStatus":I
    :goto_6
    const/4 v7, 0x1

    .line 1670
    .local v7, "isAllNewSim":Z
    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v13, :cond_f

    .line 1671
    const/4 v13, 0x1

    shl-int/2addr v13, v4

    and-int/2addr v13, v9

    if-nez v13, :cond_d

    .line 1672
    const/4 v7, 0x0

    .line 1670
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1667
    .end local v7    # "isAllNewSim":Z
    .end local v9    # "newSimStatus":I
    :cond_e
    const-string/jumbo v13, "newSIMSlot"

    const/4 v14, 0x0

    .line 1666
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .restart local v9    # "newSimStatus":I
    goto :goto_6

    .line 1676
    .restart local v7    # "isAllNewSim":Z
    :cond_f
    if-eqz v7, :cond_10

    .line 1681
    const-string/jumbo v13, "C4: Multi SIM + All New SIM: Set 34G to sub1"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1682
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1683
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_4

    .line 1686
    :cond_10
    if-eqz v2, :cond_11

    const-string/jumbo v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1691
    :cond_11
    const-string/jumbo v13, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1692
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1694
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_4

    .line 1696
    :cond_12
    const/4 v4, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v13, :cond_13

    .line 1697
    aget-object v13, v1, v4

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1698
    move v11, v4

    .line 1703
    :cond_13
    const/4 v13, -0x1

    if-eq v11, v13, :cond_16

    .line 1707
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "C5: Multi SIM + New SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1711
    const/4 v10, 0x0

    .line 1712
    .local v10, "nonDefaultPhoneId":I
    if-nez v11, :cond_15

    .line 1713
    const/4 v10, 0x1

    .line 1717
    :goto_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_4

    .line 1696
    .end local v10    # "nonDefaultPhoneId":I
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1715
    .restart local v10    # "nonDefaultPhoneId":I
    :cond_15
    const/4 v10, 0x0

    goto :goto_9

    .line 1722
    .end local v10    # "nonDefaultPhoneId":I
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getLastDataEnabled()I

    move-result v8

    .line 1723
    .local v8, "isLastDataEnabled":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "C9: Multi SIM + New SIM + isLastDataEnabled = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1725
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1727
    if-nez v8, :cond_17

    const/4 v13, 0x0

    .line 1726
    :goto_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1729
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_4

    .line 1727
    :cond_17
    const/4 v13, 0x1

    goto :goto_a

    .line 1734
    .end local v7    # "isAllNewSim":Z
    .end local v8    # "isLastDataEnabled":I
    .end local v9    # "newSimStatus":I
    :cond_18
    if-eqz v2, :cond_19

    const-string/jumbo v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1737
    :cond_19
    const-string/jumbo v13, "C8: Do nothing"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1739
    :cond_1a
    const/4 v4, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v13, :cond_1b

    .line 1740
    aget-object v13, v1, v4

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 1741
    move v11, v4

    .line 1745
    :cond_1b
    const/4 v13, -0x1

    if-eq v11, v13, :cond_1e

    .line 1749
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "C7: Multi SIM + All Old SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1753
    const/4 v10, 0x0

    .line 1754
    .restart local v10    # "nonDefaultPhoneId":I
    if-nez v11, :cond_1d

    .line 1755
    const/4 v10, 0x1

    .line 1759
    :goto_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_4

    .line 1739
    .end local v10    # "nonDefaultPhoneId":I
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1757
    .restart local v10    # "nonDefaultPhoneId":I
    :cond_1d
    const/4 v10, 0x0

    goto :goto_c

    .line 1763
    .end local v10    # "nonDefaultPhoneId":I
    :cond_1e
    const-string/jumbo v13, "C8: Do nothing"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private subSelectorForOp09C(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2376
    const/4 v9, -0x1

    .line 2377
    .local v9, "phoneId":I
    const/4 v4, 0x0

    .line 2378
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 2379
    .local v5, "insertedStatus":I
    const-string/jumbo v11, "simDetectStatus"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2380
    .local v2, "detectedType":I
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v11, [Ljava/lang/String;

    .line 2382
    .local v0, "currIccId":[Ljava/lang/String;
    const-string/jumbo v11, "DataSubSelector for op09 C"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2384
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_3

    .line 2385
    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v3

    .line 2386
    aget-object v11, v0, v3

    if-eqz v11, :cond_0

    const-string/jumbo v11, ""

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2387
    :cond_0
    const-string/jumbo v11, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2388
    return-void

    .line 2390
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "currIccId["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2391
    const-string/jumbo v11, "N/A"

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2392
    add-int/lit8 v4, v4, 0x1

    .line 2393
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    or-int/2addr v5, v11

    .line 2384
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2396
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Inserted SIM count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", insertedStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2399
    const-string/jumbo v11, "persist.radio.data.iccid"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2400
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Default data Iccid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2402
    if-nez v4, :cond_5

    .line 2403
    const-string/jumbo v11, "OP09 C0: No SIM inserted, do nothing."

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2523
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 2375
    return-void

    .line 2404
    :cond_5
    const/4 v11, 0x1

    if-ne v4, v11, :cond_b

    .line 2405
    const/4 v3, 0x0

    :goto_2
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_6

    .line 2406
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    and-int/2addr v11, v5

    if-eqz v11, :cond_7

    .line 2407
    move v9, v3

    .line 2412
    :cond_6
    const/4 v11, 0x4

    if-ne v2, v11, :cond_8

    .line 2413
    const-string/jumbo v11, "OP09 C1: Single SIM unchange: do nothing"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2405
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2414
    :cond_8
    const/4 v11, 0x1

    if-ne v2, v11, :cond_9

    .line 2418
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "OP09 C2: Single SIM + New SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2419
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 2420
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 2422
    const/4 v11, 0x1

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_1

    .line 2427
    :cond_9
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 2428
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 2429
    const-string/jumbo v11, "OP09 C3: Single SIM + Old SIM: set as default data."

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2432
    const-string/jumbo v10, "0"

    .line 2433
    .local v10, "strEnabled":Ljava/lang/String;
    if-nez v9, :cond_a

    .line 2434
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2435
    const-string/jumbo v11, "persist.radio.mobile.data"

    const-string/jumbo v12, "0"

    const/4 v13, 0x1

    .line 2434
    invoke-static {v13, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2440
    :goto_3
    const-string/jumbo v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 2441
    const/4 v11, 0x1

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_1

    .line 2437
    :cond_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2438
    const-string/jumbo v11, "persist.radio.mobile.data"

    const-string/jumbo v12, "0"

    const/4 v13, 0x0

    .line 2437
    invoke-static {v13, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 2444
    .end local v10    # "strEnabled":Ljava/lang/String;
    :cond_b
    const/4 v11, 0x2

    if-lt v4, v11, :cond_4

    .line 2445
    const/4 v11, 0x1

    if-ne v2, v11, :cond_15

    .line 2447
    const-string/jumbo v11, "newSIMSlot"

    const/4 v12, 0x0

    .line 2446
    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2449
    .local v7, "newSimStatus":I
    const/4 v6, 0x1

    .line 2450
    .local v6, "isAllNewSim":Z
    const/4 v3, 0x0

    :goto_4
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_d

    .line 2451
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    and-int/2addr v11, v7

    if-nez v11, :cond_c

    .line 2452
    const/4 v6, 0x0

    .line 2450
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2456
    :cond_d
    if-eqz v6, :cond_e

    .line 2461
    const-string/jumbo v11, "C4: Multi SIM + All New SIM: Set 34G to sub1"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2462
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 2463
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 2465
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 2466
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 2468
    :cond_e
    if-eqz v1, :cond_f

    const-string/jumbo v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 2473
    :cond_f
    const-string/jumbo v11, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2474
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 2475
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 2477
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 2478
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 2480
    :cond_10
    const/4 v3, 0x0

    :goto_5
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_11

    .line 2481
    aget-object v11, v0, v3

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 2482
    move v9, v3

    .line 2487
    :cond_11
    const/4 v11, -0x1

    if-eq v9, v11, :cond_14

    .line 2491
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "C5: Multi SIM + New SIM + Default SIM: Keep Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2494
    const/4 v8, 0x0

    .line 2495
    .local v8, "nonDefaultPhoneId":I
    if-nez v9, :cond_13

    .line 2496
    const/4 v8, 0x1

    .line 2500
    :goto_6
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 2480
    .end local v8    # "nonDefaultPhoneId":I
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2498
    .restart local v8    # "nonDefaultPhoneId":I
    :cond_13
    const/4 v8, 0x0

    goto :goto_6

    .line 2505
    .end local v8    # "nonDefaultPhoneId":I
    :cond_14
    const-string/jumbo v11, "C7: Multi SIM + New SIM + Non Default SIM: set to sim1."

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2506
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 2507
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 2509
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 2510
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 2518
    .end local v6    # "isAllNewSim":Z
    .end local v7    # "newSimStatus":I
    :cond_15
    const-string/jumbo v11, "C8: Multi SIM + All Old SIM :set as previous default data"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 2519
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOmLenovo(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private subSelectorForOp18(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1097
    sget v8, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->capability_switch_policy:I

    packed-switch v8, :pswitch_data_0

    .line 1109
    const-string/jumbo v8, "subSelectorForOp18: Unknow policy, skip"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1110
    return-void

    .line 1099
    :pswitch_0
    const-string/jumbo v8, "subSelectorForOp18: no auto policy, skip"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1100
    return-void

    .line 1106
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    .line 1107
    return-void

    .line 1112
    :pswitch_2
    const/4 v6, -0x1

    .line 1113
    .local v6, "phoneId":I
    const/4 v4, 0x0

    .line 1114
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 1115
    .local v5, "insertedStatus":I
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getSimStatus()I

    move-result v2

    .line 1117
    .local v2, "detectedType":I
    :goto_0
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v8, [Ljava/lang/String;

    .line 1119
    .local v0, "currIccId":[Ljava/lang/String;
    const-string/jumbo v8, "DataSubSelector for op18"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1121
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v8, :cond_5

    .line 1122
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    .line 1123
    aget-object v8, v0, v3

    if-eqz v8, :cond_0

    const-string/jumbo v8, ""

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1124
    :cond_0
    const-string/jumbo v8, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1125
    return-void

    .line 1116
    .end local v0    # "currIccId":[Ljava/lang/String;
    .end local v2    # "detectedType":I
    .end local v3    # "i":I
    :cond_1
    const-string/jumbo v8, "simDetectStatus"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "detectedType":I
    goto :goto_0

    .line 1127
    .restart local v0    # "currIccId":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "currIccId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1128
    const-string/jumbo v8, "N/A"

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1129
    add-int/lit8 v4, v4, 0x1

    .line 1130
    shl-int v8, v10, v3

    or-int/2addr v5, v8

    .line 1121
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1132
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "clear mcc.mnc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1134
    if-nez v3, :cond_4

    .line 1135
    const-string/jumbo v7, "gsm.sim.ril.mcc.mnc"

    .line 1139
    .local v7, "propStr":Ljava/lang/String;
    :goto_3
    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1137
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 1143
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_5
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1144
    const-string/jumbo v8, "DataSubSelector for OP18: do not switch because of sim locking"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1145
    const-string/jumbo v8, "persist.radio.unlock"

    const-string/jumbo v9, "true"

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 1147
    return-void

    .line 1149
    :cond_6
    const-string/jumbo v8, "DataSubSelector for OP18: no pin lock"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1150
    const-string/jumbo v8, "persist.radio.unlock"

    const-string/jumbo v9, "false"

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Inserted SIM count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", insertedStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1156
    const-string/jumbo v8, "persist.radio.data.iccid"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1157
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Default data Iccid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1159
    if-nez v4, :cond_8

    .line 1164
    const-string/jumbo v8, "C0: No SIM inserted, set data unset"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1165
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1095
    :cond_7
    :goto_4
    return-void

    .line 1166
    :cond_8
    if-ne v4, v10, :cond_12

    .line 1167
    const/4 v3, 0x0

    :goto_5
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v8, :cond_9

    .line 1168
    shl-int v8, v10, v3

    and-int/2addr v8, v5

    if-eqz v8, :cond_b

    .line 1169
    move v6, v3

    .line 1174
    :cond_9
    if-ne v2, v10, :cond_c

    .line 1179
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "C1: Single SIM + New SIM: Set Default data to phone:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1180
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1181
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1183
    :cond_a
    invoke-direct {p0, v6, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_4

    .line 1167
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1185
    :cond_c
    if-eqz v1, :cond_d

    const-string/jumbo v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1191
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "C3: Single SIM + Non Data SIM: Set Default data to phone:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1192
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1193
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1195
    :cond_e
    invoke-direct {p0, v6, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_4

    .line 1197
    :cond_f
    aget-object v8, v0, v6

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1202
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "C2: Single SIM + Data SIM: Set Default data to phone:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1203
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1204
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto/16 :goto_4

    .line 1211
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "C3: Single SIM + Non Data SIM: Set Default data to phone:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1212
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1213
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1215
    :cond_11
    invoke-direct {p0, v6, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_4

    .line 1220
    :cond_12
    const/4 v8, 0x2

    if-lt v4, v8, :cond_7

    .line 1222
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp18CapSwitch()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1224
    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 1225
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 1226
    return-void

    .line 1097
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private subSelectorForSolution15(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 466
    const-string/jumbo v4, "DataSubSelector for C2K om solution 1.5: capability maybe diff with default data"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 468
    const/4 v3, -0x1

    .line 469
    .local v3, "phoneId":I
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v1, v4, [Ljava/lang/String;

    .line 472
    .local v1, "currIccId":[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-nez v4, :cond_0

    .line 473
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    .line 476
    :cond_0
    const-string/jumbo v4, "persist.radio.capability.iccid"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "capabilityIccid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "capability Iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 478
    if-nez v0, :cond_1

    .line 479
    return-void

    .line 481
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v4, :cond_4

    .line 482
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 483
    aget-object v4, v1, v2

    if-eqz v4, :cond_2

    const-string/jumbo v4, ""

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 484
    :cond_2
    const-string/jumbo v4, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 485
    return-void

    .line 487
    :cond_3
    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 488
    move v3, v2

    .line 493
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "capability  phoneid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 494
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 496
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 465
    :cond_5
    return-void

    .line 481
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private subSelectorForSvlte(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1835
    const-string/jumbo v2, "ro.mtk.c2k.slot2.support"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1834
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1836
    .local v0, "c2kP2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subSelectorForSvlte,c2kP2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1838
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09ASupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1839
    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimContainsCdmaApp(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1840
    const-string/jumbo v2, "CDMA sim is inserted in slot1, always set to SIM1"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1841
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1842
    return-void

    .line 1844
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode()I

    move-result v2

    .line 1845
    const/4 v3, 0x3

    .line 1844
    if-ne v2, v3, :cond_2

    .line 1848
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v1, v2, [I

    .line 1849
    .local v1, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v1

    .line 1850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "card type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1851
    aget v2, v1, v4

    if-nez v2, :cond_1

    .line 1852
    const-string/jumbo v2, "SIM 1 is empty, don\'t change capability"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1833
    .end local v1    # "cardType":[I
    :goto_0
    return-void

    .line 1854
    .restart local v1    # "cardType":[I
    :cond_1
    const-string/jumbo v2, "SIM 1 is inserted, change capability"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1855
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_0

    .line 1859
    .end local v1    # "cardType":[I
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOmLenovo(Landroid/content/Intent;)V

    goto :goto_0

    .line 1864
    :cond_3
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkCdmaCardInsert()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1865
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForSolution15(Landroid/content/Intent;)V

    goto :goto_0

    .line 1867
    :cond_4
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOmLenovo(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private turnOffNewSimData(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1901
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 1902
    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string/jumbo v6, "OP09"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1907
    :cond_0
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getSimStatus()I

    move-result v1

    .line 1909
    .local v1, "detectedType":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "turnOffNewSimData detectedType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1912
    if-ne v1, v8, :cond_5

    .line 1913
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getNewSimSlot()I

    move-result v4

    .line 1916
    .local v4, "newSimSlot":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "newSimSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1917
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "default iccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "persist.radio.data.iccid"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1919
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v5, :cond_5

    .line 1920
    shl-int v5, v8, v2

    and-int/2addr v5, v4

    if-eqz v5, :cond_1

    .line 1921
    const-string/jumbo v5, "persist.radio.data.iccid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1922
    .local v0, "defaultIccid":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1923
    .local v3, "newSimIccid":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1924
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Detect NEW SIM, turn off phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " data."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1925
    invoke-direct {p0, v2, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1919
    .end local v0    # "defaultIccid":Ljava/lang/String;
    .end local v3    # "newSimIccid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1903
    .end local v1    # "detectedType":I
    .end local v2    # "i":I
    .end local v4    # "newSimSlot":I
    :cond_2
    const-string/jumbo v5, "[turnOffNewSimData] Single SIM project, don\'t change data enable setting"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1904
    return-void

    .line 1908
    :cond_3
    const-string/jumbo v5, "simDetectStatus"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "detectedType":I
    goto/16 :goto_0

    .line 1914
    :cond_4
    const-string/jumbo v5, "newSIMSlot"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "newSimSlot":I
    goto/16 :goto_1

    .line 1899
    .end local v4    # "newSimSlot":I
    :cond_5
    return-void
.end method

.method private unRegisterWorldModeReceiver()V
    .locals 2

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2580
    const-string/jumbo v0, "unRegisterWorldModeReceiver, context is null => return"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2581
    return-void

    .line 2584
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mHasRegisterWorldModeReceiver:Z

    .line 2578
    return-void
.end method

.method private updateDataEnableProperty()V
    .locals 7

    .prologue
    .line 1805
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1806
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 1807
    .local v0, "dataEnabled":Z
    const-string/jumbo v1, "0"

    .line 1808
    .local v1, "dataOnIccid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1810
    .local v3, "subId":I
    const/4 v2, 0x0

    .end local v0    # "dataEnabled":Z
    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v5, :cond_3

    .line 1812
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 1813
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1814
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v3

    .line 1817
    :cond_0
    if-eqz v4, :cond_1

    .line 1818
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    .line 1821
    :cond_1
    if-eqz v0, :cond_2

    .line 1822
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1827
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserDataProperty:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1828
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v5, "persist.radio.mobile.data"

    invoke-static {v2, v5, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1810
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1824
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_1

    .line 1804
    :cond_3
    return-void
.end method


# virtual methods
.method public onSubInfoReady(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 419
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 421
    sget-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->BSP_PACKAGE:Z

    if-eqz v1, :cond_0

    .line 422
    const-string/jumbo v1, "Don\'t support BSP Package."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 423
    return-void

    .line 426
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string/jumbo v2, "OP01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string/jumbo v2, "OP02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 429
    const-string/jumbo v1, "ro.mtk_disable_cap_switch"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V

    goto :goto_0

    .line 432
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02()V

    goto :goto_0

    .line 434
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09ASupport()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 435
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V

    goto :goto_0

    .line 436
    :cond_5
    const-string/jumbo v1, "OP18"

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 438
    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 440
    .local v0, "detectedType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "detectedType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 441
    if-eq v0, v5, :cond_6

    .line 442
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp18(Landroid/content/Intent;)V

    goto :goto_0

    .line 444
    :cond_6
    const-string/jumbo v1, "skip auto switch when detectedType is NOCHANGE for OP18 when user may set"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 446
    .end local v0    # "detectedType":I
    :cond_7
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 447
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09C(Landroid/content/Intent;)V

    .line 448
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    .line 450
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V

    goto :goto_0

    .line 452
    :cond_8
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 455
    const-string/jumbo v1, "OM"

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 456
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    .line 457
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V

    .line 459
    :cond_9
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 461
    :cond_a
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOmLenovo(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
