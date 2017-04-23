.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
.super Landroid/os/Handler;
.source "SvlteModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;
    }
.end annotation


# static fields
.field private static final ACTION_FORM_MODE_CONTROLLER:I = 0x2

.field public static final CDMA_PROP:Ljava/lang/String; = "persist.radio.cdma_slot"

.field public static final CSFB_ON_SLOT:I = -0x1

.field private static final DEBUG:Z = true

.field protected static final EVENT_C2K_WP_CARD_TYPE_READY:I = 0x1

.field protected static final EVENT_RIL_CONNECTED:I = 0x2

.field private static final INITIAL_RETRY_INTERVAL_MSEC:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteModeController"

.field public static final MTK_C2K_6M_SUPPORT:Ljava/lang/String; = "ro.ct6m_support"

.field public static final MTK_C2K_SLOT2_SUPPORT:Ljava/lang/String; = "ro.mtk.c2k.slot2.support"

.field private static final OPERATOR_OM:Ljava/lang/String; = "OM"

.field private static final OPERATOR_OP09:Ljava/lang/String; = "OP09"

.field private static final PROPERTY_NET_CDMA_MDMSTAT:Ljava/lang/String; = "net.cdma.mdmstat"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field public static final RADIO_TECH_MODE_CSFB:I = 0x2

.field public static final RADIO_TECH_MODE_SVLTE:I = 0x3

.field public static final RADIO_TECH_MODE_UNKNOWN:I = 0x1

.field private static final SPEC_OP09_A:Ljava/lang/String; = "SEGDEFAULT"

.field public static final SVLTE_ON_SLOT_0:I = 0x0

.field public static final SVLTE_ON_SLOT_1:I = 0x1

.field public static final SVLTE_PROP:Ljava/lang/String; = "persist.radio.svlte_slot"

.field public static final SVLTE_PROP_ACTUAL:Ljava/lang/String; = "persist.radio.actual.svlte_slot"

.field public static final SVLTE_PROP_DEFAULT_VALUE:Ljava/lang/String;

.field public static final TELEPHONY_MODE_C_LWTG:I = 0x4

.field public static final TELEPHONY_MODE_G_LC:I = 0x3

.field public static final TELEPHONY_MODE_G_LWTG:I = 0x5

.field public static final TELEPHONY_MODE_LC_G:I = 0x0

.field public static final TELEPHONY_MODE_LC_SINGLE:I = 0x6

.field public static final TELEPHONY_MODE_LWTG_C:I = 0x1

.field public static final TELEPHONY_MODE_LWTG_G:I = 0x2

.field public static final TELEPHONY_MODE_LWTG_SINGLE:I = 0x7

.field public static final TELEPHONY_MODE_UNKNOWN:I = -0x1

.field private static final mLock:Ljava/lang/Object;

.field private static sCardModes:[I

.field private static sCdmaSocketSlotId:I

.field private static sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;


# instance fields
.field private mCardTypes:[I

.field private mConfgiC2kDone:Z

.field private mConfgiGsmDone:Z

.field mConfigModemRunnable:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;

.field private mContext:Landroid/content/Context;

.field private mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastProtocol:I

.field private mNeedReSwitch:[Z

.field private mOP09Spec:Ljava/lang/String;

.field private mOldCardModes:[I

.field private mOperatorSpec:Ljava/lang/String;

.field private mPendingCardTypes:[I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotBeSwitchCardType:I

.field private mSlotIdWaitConnect:I

.field private mSvlteModeOn:Z

.field private mSwitchQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchingSlotId:I

.field private mWaitingRilSocketConnect:Z


# direct methods
.method static synthetic -get0(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z

    return v0
.end method

.method static synthetic -get2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    return v0
.end method

.method static synthetic -get4()[I
    .locals 1

    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    return v0
.end method

.method static synthetic -set0(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->configModemStatus()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V
    .locals 0
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->disconnectRilSocket(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->finishSwitchMode()V

    return-void
.end method

.method static synthetic -wrap3(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setSvlteModeProperties()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    const-string/jumbo v1, ","

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->SVLTE_PROP_DEFAULT_VALUE:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->initCardModes()[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 113
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLock:Ljava/lang/Object;

    .line 145
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 146
    const-string/jumbo v1, "gsm.ril.fulluicctype"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 147
    const-string/jumbo v1, "gsm.ril.fulluicctype.2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 148
    const-string/jumbo v1, "gsm.ril.fulluicctype.3"

    aput-object v1, v0, v3

    .line 149
    const-string/jumbo v1, "gsm.ril.fulluicctype.4"

    aput-object v1, v0, v4

    .line 145
    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 185
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 102
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    .line 119
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    .line 123
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    .line 125
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    .line 126
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    .line 127
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    .line 152
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    .line 154
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 813
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 912
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfigModemRunnable:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;

    .line 186
    const-string/jumbo v1, "SvlteModeController"

    const-string/jumbo v2, "SvlteModeController constructor"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    .line 189
    const-string/jumbo v1, "ro.operator.optr"

    const-string/jumbo v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    .line 190
    const-string/jumbo v1, "ro.operator.seg"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Operator Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mOP09Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    .line 193
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 192
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForC2KWPCardTypeReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.mediatek.intent.action.FINISH_SWITCH_SVLTE_RAT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    return-void
.end method

.method private blockBySimSwitch()Z
    .locals 3

    .prologue
    .line 1297
    const-string/jumbo v1, "ril.cdma.switching"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1298
    .local v0, "blockBySimSwitch":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[blockBySimSwitch] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1299
    return v0
.end method

.method private calculateCardMode()[I
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->calculateCardMode(Z)[I

    move-result-object v0

    return-object v0
.end method

.method private calculateCardMode(Z)[I
    .locals 12
    .param p1, "skipOP09A"    # Z

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 545
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    new-array v1, v6, [I

    .line 546
    .local v1, "cardModes":[I
    const-string/jumbo v6, "OP09"

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "SEGDEFAULT"

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_1

    .line 547
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCTLteTddTestSupport()Z

    move-result v6

    .line 546
    if-eqz v6, :cond_3

    .line 548
    :cond_1
    aput v10, v1, v8

    .line 549
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 550
    aput v11, v1, v3

    .line 549
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 552
    :cond_2
    const-string/jumbo v6, "[calculateCardMode] >>> OPERATOR_OP09A case."

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 553
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    .line 554
    return-object v1

    .line 558
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v6, v6, v8

    invoke-direct {p0, v6, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getPreferRadioTech(II)I

    move-result v4

    .line 562
    .local v4, "slot0Prefer":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 565
    aput v4, v1, v8

    .line 566
    const-string/jumbo v6, "[calculateCardMode] >>> SINGLE SIM case."

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 567
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    .line 568
    return-object v1

    .line 571
    :cond_4
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v6, v6, v9

    invoke-direct {p0, v6, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getPreferRadioTech(II)I

    move-result v5

    .line 573
    .local v5, "slot1Prefer":I
    if-ne v4, v5, :cond_b

    if-ne v5, v10, :cond_b

    .line 574
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v6, v6, v8

    if-lez v6, :cond_7

    .line 575
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v6, v6, v9

    if-lez v6, :cond_7

    .line 579
    :cond_5
    const-string/jumbo v6, "persist.radio.simswitch"

    .line 578
    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 580
    .local v0, "capability":I
    if-ne v0, v9, :cond_9

    const/4 v2, 0x0

    .line 581
    .local v2, "csfbSlot":I
    :goto_1
    aput v10, v1, v0

    .line 582
    aput v11, v1, v2

    .line 583
    const/4 v6, -0x1

    iput v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 584
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 585
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 600
    .end local v0    # "capability":I
    .end local v2    # "csfbSlot":I
    :cond_6
    :goto_2
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    .line 601
    return-object v1

    .line 576
    :cond_7
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v6, v6, v8

    if-nez v6, :cond_8

    .line 577
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v6, v6, v9

    if-eqz v6, :cond_5

    .line 588
    :cond_8
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v6, v6, v8

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, v9

    if-le v6, v7, :cond_a

    .line 589
    aput v10, v1, v8

    .line 590
    aput v11, v1, v9

    goto :goto_2

    .line 580
    .restart local v0    # "capability":I
    :cond_9
    const/4 v2, 0x1

    .restart local v2    # "csfbSlot":I
    goto :goto_1

    .line 592
    .end local v0    # "capability":I
    .end local v2    # "csfbSlot":I
    :cond_a
    aput v11, v1, v8

    .line 593
    aput v10, v1, v9

    goto :goto_2

    .line 597
    :cond_b
    aput v4, v1, v8

    .line 598
    aput v5, v1, v9

    goto :goto_2
.end method

.method private configModemStatus()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x1

    .line 918
    const-string/jumbo v9, "net.cdma.mdmstat"

    const-string/jumbo v10, "not ready"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 919
    .local v4, "md3State":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "configModemStatus md3State = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 920
    const-string/jumbo v9, "ready"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 921
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfigModemRunnable:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;

    const-wide/16 v10, 0xc8

    invoke-virtual {p0, v9, v10, v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 922
    return-void

    .line 925
    :cond_0
    const-string/jumbo v9, "persist.radio.simswitch"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 926
    .local v0, "capability":I
    const/4 v1, 0x0

    .line 927
    .local v1, "cardType1":I
    const/4 v2, 0x0

    .line 928
    .local v2, "cardType2":I
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v9, v9

    if-ne v9, v11, :cond_3

    .line 929
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v1, v9, v13

    .line 934
    :cond_1
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "configModemStatus cardType1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", cardType2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 935
    const-string/jumbo v10, ", capability="

    .line 934
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 937
    const/4 v5, 0x2

    .line 938
    .local v5, "modemStatus":I
    const/4 v8, 0x1

    .line 941
    .local v8, "remoteSimProtocol":I
    const-string/jumbo v9, "OP09"

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string/jumbo v9, "SEGDEFAULT"

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 942
    const-string/jumbo v9, "configModemStatus: OP09 A"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 943
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 945
    const-string/jumbo v9, "configModemStatus: no card"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 946
    const/4 v5, 0x1

    .line 947
    const/4 v8, 0x1

    .line 1094
    :cond_2
    :goto_1
    iput v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    .line 1096
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "configModemStatus modemStatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1097
    const-string/jumbo v10, ", remoteSimProtocol="

    .line 1096
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1098
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    .line 1099
    .local v6, "phoneCount":I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 1100
    .local v7, "proxyPhones":[Lcom/android/internal/telephony/Phone;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "configModemStatus mConfgiGsmDone="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ,mConfgiC2kDone="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1101
    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    .line 1100
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1101
    const-string/jumbo v10, " ,mWaitingRilSocketConnect="

    .line 1100
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1101
    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 1100
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1103
    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    if-nez v9, :cond_28

    .line 1104
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v6, :cond_27

    .line 1105
    aget-object v9, v7, v3

    check-cast v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9, v5, v8, v14}, Lcom/android/internal/telephony/PhoneBase;->configModemStatus(IILandroid/os/Message;)V

    .line 1107
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "configModemStatus for slot["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] LTE phone."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1104
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 930
    .end local v3    # "i":I
    .end local v5    # "modemStatus":I
    .end local v6    # "phoneCount":I
    .end local v7    # "proxyPhones":[Lcom/android/internal/telephony/Phone;
    .end local v8    # "remoteSimProtocol":I
    :cond_3
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v9, v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 931
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v1, v9, v13

    .line 932
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v2, v9, v11

    goto/16 :goto_0

    .line 948
    .restart local v5    # "modemStatus":I
    .restart local v8    # "remoteSimProtocol":I
    :cond_4
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 950
    const-string/jumbo v9, "configModemStatus: GSM only"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 951
    const/4 v5, 0x0

    .line 952
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 953
    :cond_5
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 955
    const-string/jumbo v9, "configModemStatus: CT 3G"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 956
    const/4 v5, 0x1

    .line 957
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 958
    :cond_6
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 959
    const-string/jumbo v9, "configModemStatus: CT 4G"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 961
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v9

    if-nez v9, :cond_7

    .line 962
    const/4 v5, 0x1

    .line 966
    :goto_3
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 964
    :cond_7
    const/4 v5, 0x2

    goto :goto_3

    .line 969
    :cond_8
    const-string/jumbo v9, "configModemStatus: other case, may not happen!"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 973
    :cond_9
    const-string/jumbo v9, "configModemStatus: OM/CT C"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 975
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 976
    :cond_a
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v9

    .line 975
    if-eqz v9, :cond_f

    .line 978
    :cond_b
    const/4 v8, 0x1

    .line 979
    if-ne v0, v11, :cond_d

    .line 980
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 981
    const/4 v5, 0x2

    .line 992
    :goto_4
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v9

    if-nez v9, :cond_2

    .line 993
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 983
    :cond_c
    const/4 v5, 0x1

    goto :goto_4

    .line 986
    :cond_d
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 987
    const/4 v5, 0x2

    goto :goto_4

    .line 989
    :cond_e
    const/4 v5, 0x1

    goto :goto_4

    .line 999
    :cond_f
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-nez v9, :cond_10

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1001
    :cond_10
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v9

    if-nez v9, :cond_11

    .line 1002
    const/4 v5, 0x1

    .line 1007
    :goto_5
    if-ne v0, v11, :cond_12

    .line 1008
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1004
    :cond_11
    const/4 v5, 0x2

    goto :goto_5

    .line 1010
    :cond_12
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 1013
    :cond_13
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1014
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-nez v9, :cond_14

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    .line 1013
    if-eqz v9, :cond_16

    .line 1016
    :cond_14
    const/4 v5, 0x1

    .line 1017
    if-ne v0, v11, :cond_15

    .line 1018
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1020
    :cond_15
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 1026
    :cond_16
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-nez v9, :cond_17

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 1027
    :cond_17
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 1029
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v9

    if-nez v9, :cond_18

    .line 1030
    const/4 v5, 0x1

    .line 1035
    :goto_6
    if-ne v0, v11, :cond_19

    .line 1036
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 1032
    :cond_18
    const/4 v5, 0x2

    goto :goto_6

    .line 1038
    :cond_19
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1041
    :cond_1a
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 1043
    const/4 v5, 0x1

    .line 1044
    if-ne v0, v11, :cond_1b

    .line 1045
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 1047
    :cond_1b
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1054
    :cond_1c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "configModemStatus mLastProtocol="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1055
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 1057
    const/4 v5, 0x0

    .line 1058
    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    if-eq v9, v12, :cond_1d

    iget v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    goto/16 :goto_1

    :cond_1d
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 1060
    :cond_1e
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 1062
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSvlteTestSimMode()Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 1063
    const/4 v5, 0x0

    .line 1067
    :goto_7
    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    if-eq v9, v12, :cond_20

    iget v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    goto/16 :goto_1

    .line 1065
    :cond_1f
    const/4 v5, 0x1

    goto :goto_7

    .line 1067
    :cond_20
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 1069
    :cond_21
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 1071
    const/4 v5, 0x1

    .line 1072
    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    if-eq v9, v12, :cond_22

    iget v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    goto/16 :goto_1

    :cond_22
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 1074
    :cond_23
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1077
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    .line 1078
    .restart local v6    # "phoneCount":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "phoneCount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1079
    if-ne v6, v11, :cond_25

    .line 1081
    const/4 v5, 0x2

    .line 1082
    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    if-eq v9, v12, :cond_24

    .line 1083
    iget v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    goto/16 :goto_1

    :cond_24
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1085
    :cond_25
    const/4 v5, 0x1

    .line 1086
    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    if-eq v9, v12, :cond_26

    .line 1087
    iget v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLastProtocol:I

    goto/16 :goto_1

    :cond_26
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 1109
    .restart local v3    # "i":I
    .restart local v7    # "proxyPhones":[Lcom/android/internal/telephony/Phone;
    :cond_27
    iput-boolean v11, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    .line 1112
    .end local v3    # "i":I
    :cond_28
    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    if-nez v9, :cond_29

    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    if-eqz v9, :cond_2a

    .line 917
    :cond_29
    :goto_8
    return-void

    .line 1113
    :cond_2a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "configModemStatus for C2K, cdmaSocketId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1114
    sget v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    aget-object v9, v7, v9

    check-cast v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9, v5, v8, v14}, Lcom/android/internal/telephony/PhoneBase;->configModemStatus(IILandroid/os/Message;)V

    .line 1116
    iput-boolean v11, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    .line 1117
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isOP09Project()Z

    move-result v9

    if-nez v9, :cond_29

    const-string/jumbo v9, "ro.mtk.c2k.slot2.support"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_29

    .line 1118
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->enableMD3Sleep()V

    goto :goto_8
.end method

.method private connectRilSocket()V
    .locals 3

    .prologue
    .line 874
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "connectRilSocket, slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 876
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->connectRilSocket()V

    .line 878
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 879
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 878
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 873
    :cond_0
    return-void
.end method

.method private containsCdma(I)Z
    .locals 2
    .param p1, "cardType"    # I

    .prologue
    const/4 v1, 0x0

    .line 787
    and-int/lit8 v0, p1, 0x4

    if-gtz v0, :cond_0

    .line 788
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_1

    .line 789
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 791
    :cond_1
    return v1
.end method

.method private containsGsm(I)Z
    .locals 2
    .param p1, "cardType"    # I

    .prologue
    const/4 v1, 0x0

    .line 795
    and-int/lit8 v0, p1, 0x1

    if-gtz v0, :cond_0

    .line 796
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    .line 797
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 799
    :cond_1
    return v1
.end method

.method private containsUsim(I)Z
    .locals 2
    .param p1, "cardType"    # I

    .prologue
    const/4 v1, 0x0

    .line 803
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    .line 804
    const/4 v0, 0x1

    return v0

    .line 806
    :cond_0
    return v1
.end method

.method private disconnectRilSocket(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 884
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "disconnectRilSocket, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 886
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->disconnectRilSocket()V

    .line 883
    :cond_0
    return-void
.end method

.method private doSwitchRadioTech()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 274
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    if-le v3, v8, :cond_0

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doSwitchRadioTech, Just return. AS slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 276
    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 276
    const-string/jumbo v4, " switchCardType to sim."

    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->switchCardType(II)V

    .line 278
    iput v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 279
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    sput-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 280
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 281
    return-void

    .line 283
    :cond_0
    const/4 v0, 0x0

    .line 284
    .local v0, "firstSwitchSlot":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->startSwitchMode()V

    .line 285
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z

    .line 286
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 287
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    aget v3, v3, v1

    if-ne v3, v7, :cond_1

    .line 289
    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v3, v3, v1

    if-ne v3, v9, :cond_1

    .line 290
    sget v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    if-eq v1, v3, :cond_1

    .line 291
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 292
    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    .line 294
    :cond_1
    sget v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    if-ne v1, v3, :cond_2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v3, v3, v1

    if-ne v3, v7, :cond_2

    .line 295
    move v0, v1

    .line 297
    :cond_2
    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v3, v3, v1

    if-ne v3, v9, :cond_3

    .line 298
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z

    .line 286
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    :cond_4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[doSwitchRadioTech] mSwitchQueue size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 305
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 306
    .local v2, "slotId":I
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    .line 307
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 272
    .end local v2    # "slotId":I
    :goto_1
    return-void

    .line 308
    :cond_5
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[doSwitchRadioTech] firstSwitchSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    .line 311
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[doSwitchRadioTech] mSwitchQueue size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 313
    const-string/jumbo v3, "[doSwitchRadioTech] waiting for INTENT_ACTION_FINISH_SWITCH_SVLTE_RAT_MODE broadcast."

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_6
    const-string/jumbo v3, "[doSwitchRadioTech] Error switch Queue!."

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_1

    .line 319
    :cond_7
    const-string/jumbo v3, "[doSwitchRadioTech] No need switch raido technology."

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->finishSwitchMode()V

    goto :goto_1
.end method

.method private enableMD3Sleep()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1132
    const-string/jumbo v4, "persist.radio.simswitch"

    .line 1131
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1133
    .local v0, "capability":I
    const/4 v1, 0x0

    .line 1134
    .local v1, "cardType1":I
    const/4 v2, 0x0

    .line 1135
    .local v2, "cardType2":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v4, v4

    if-ne v4, v6, :cond_3

    .line 1136
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v1, v4, v7

    .line 1141
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enableMD3Sleep cardType1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", cardType2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1142
    const-string/jumbo v5, ", capability="

    .line 1141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1144
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v4, v4

    if-ne v4, v8, :cond_2

    .line 1145
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1146
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v4

    .line 1145
    if-eqz v4, :cond_5

    .line 1147
    :cond_1
    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 1149
    .local v3, "phone":Lcom/android/internal/telephony/PhoneBase;
    add-int/lit8 v4, v0, -0x1

    if-nez v4, :cond_4

    .line 1150
    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->enableMd3Sleep(I)V

    .line 1151
    const-string/jumbo v4, "enableMD3Sleep,G+C,set to 1"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1129
    .end local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_2
    :goto_1
    return-void

    .line 1137
    :cond_3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    array-length v4, v4

    if-ne v4, v8, :cond_0

    .line 1138
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v1, v4, v7

    .line 1139
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v2, v4, v6

    goto :goto_0

    .line 1153
    .restart local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_4
    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->enableMd3Sleep(I)V

    .line 1154
    const-string/jumbo v4, "enableMD3Sleep,G+C,set to 0"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1157
    .end local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_5
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1158
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v4

    .line 1157
    if-eqz v4, :cond_2

    .line 1159
    :cond_6
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 1161
    .restart local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    add-int/lit8 v4, v0, -0x1

    if-ne v4, v6, :cond_7

    .line 1162
    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->enableMd3Sleep(I)V

    .line 1163
    const-string/jumbo v4, "enableMD3Sleep,C+G,set to 1"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1165
    :cond_7
    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->enableMd3Sleep(I)V

    .line 1166
    const-string/jumbo v4, "enableMD3Sleep,C+G,set to 1"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private finishSwitchMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 649
    const-string/jumbo v1, "Broadcast finish switch mode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 650
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 652
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 654
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sendBroadcast(Landroid/content/Intent;I)V

    .line 655
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setSvlteModeProperties()V

    .line 657
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    if-eqz v1, :cond_1

    .line 658
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->blockBySimSwitch()Z

    move-result v1

    if-nez v1, :cond_2

    .line 659
    const-string/jumbo v1, "Start switch mode pended"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    .line 661
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    .line 662
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    .line 663
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    .line 664
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    .line 665
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSwitchInAirplaneMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->calculateCardMode()[I

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 667
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setupSvlteSystemProp([I)V

    .line 668
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->calculateCardMode(Z)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setupSvlteActualSystemProp([I)V

    .line 670
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->doSwitchRadioTech()V

    .line 648
    :cond_1
    :goto_0
    return-void

    .line 672
    :cond_2
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    goto :goto_0
.end method

.method public static getActiveSvlteModeSlotId()I
    .locals 4

    .prologue
    .line 727
    const/4 v1, -0x1

    .line 728
    .local v1, "svlteSlotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 729
    const-string/jumbo v2, "[getActiveSvlteModeSlotId] SVLTE not support, return -1."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 730
    return v1

    .line 732
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 733
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 734
    move v1, v0

    .line 732
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getActiveSvlteModeSlotId] slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 738
    return v1
.end method

.method public static getActualSvlteModeSlotId()I
    .locals 5

    .prologue
    .line 769
    const/4 v2, -0x1

    .line 770
    .local v2, "svlteSlotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    new-array v0, v3, [I

    .line 771
    .local v0, "cardModes":[I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-nez v3, :cond_0

    .line 772
    const-string/jumbo v3, "[getActualSvlteModeSlotId] SVLTE not support, return -1."

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 773
    return v2

    .line 775
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 777
    const-string/jumbo v3, "persist.radio.actual.svlte_slot"

    const-string/jumbo v4, "3,2,2,2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    .line 776
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    .line 778
    aget v3, v0, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 779
    move v2, v1

    .line 775
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 782
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getActualSvlteModeSlotId] slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 783
    return v2
.end method

.method public static getCdmaSocketSlotId()I
    .locals 3

    .prologue
    .line 746
    const-string/jumbo v1, "persist.radio.cdma_slot"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 747
    .local v0, "slotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getCdmaSocketSlotId] slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 748
    return v0
.end method

.method private getFullCardType(I)I
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x0

    .line 1174
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 1175
    :cond_0
    const-string/jumbo v4, "SvlteModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFullCardType invalid slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return v7

    .line 1178
    :cond_1
    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, "cardType":Ljava/lang/String;
    const-string/jumbo v4, "SvlteModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFullCardType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1182
    .local v2, "fullType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 1183
    const-string/jumbo v4, "USIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1184
    or-int/lit8 v2, v2, 0x2

    .line 1182
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1185
    :cond_3
    const-string/jumbo v4, "SIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1186
    or-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1187
    :cond_4
    const-string/jumbo v4, "CSIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1188
    or-int/lit8 v2, v2, 0x8

    goto :goto_1

    .line 1189
    :cond_5
    const-string/jumbo v4, "RUIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1190
    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 1193
    :cond_6
    const-string/jumbo v4, "SvlteModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fullType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    return v2
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .locals 3

    .prologue
    .line 160
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/RuntimeException;

    .line 163
    const-string/jumbo v2, "SvlteModeController.getInstance can\'t be called before make()"

    .line 162
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 165
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private getPreferRadioTech(II)I
    .locals 2
    .param p1, "cardType"    # I
    .param p2, "slot"    # I

    .prologue
    .line 622
    const/4 v0, 0x1

    .line 623
    .local v0, "prefer":I
    sparse-switch p1, :sswitch_data_0

    .line 633
    const/4 v0, 0x2

    .line 636
    :goto_0
    return v0

    .line 627
    :sswitch_0
    const/4 v0, 0x3

    .line 628
    goto :goto_0

    .line 630
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    aget v0, v1, p2

    goto :goto_0

    .line 623
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static getRadioTechnologyMode()I
    .locals 3

    .prologue
    .line 692
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v0

    .line 693
    .local v0, "mode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getRadioTechnologyMode] mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 694
    return v0
.end method

.method public static getRadioTechnologyMode(I)I
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 704
    const/4 v0, 0x1

    .line 705
    .local v0, "mode":I
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 707
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 708
    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 709
    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v2, :cond_0

    .line 710
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CDMA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 711
    const/4 v0, 0x3

    .line 717
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getRadioTechnologyMode] mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", slotId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 718
    return v0

    .line 713
    .restart local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getTelephonyMode()I
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1207
    const-string/jumbo v3, "persist.radio.simswitch"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1206
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1208
    .local v1, "currMajorSim":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    .line 1209
    .local v2, "svlteSlotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 1211
    const-string/jumbo v3, "[getTelephonyMode] >>> SINGLE SIM case."

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 1212
    if-nez v2, :cond_0

    .line 1213
    const/4 v3, 0x6

    return v3

    .line 1215
    :cond_0
    const/4 v3, 0x7

    return v3

    .line 1217
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v9, :cond_2

    .line 1219
    return v8

    .line 1222
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getTelephonyMode] svlteSlotId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1223
    const-string/jumbo v4, ", currMajorSim = "

    .line 1222
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 1224
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 1225
    .local v0, "cardTypes":[I
    aget v3, v0, v6

    aget v4, v0, v7

    if-ne v3, v4, :cond_4

    .line 1226
    aget v3, v0, v6

    and-int/lit8 v3, v3, 0x4

    if-gtz v3, :cond_3

    .line 1227
    aget v3, v0, v6

    and-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_4

    .line 1228
    :cond_3
    const-string/jumbo v3, "OP09"

    const-string/jumbo v4, "ro.operator.optr"

    const-string/jumbo v5, "OM"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1229
    const-string/jumbo v3, "SEGDEFAULT"

    const-string/jumbo v4, "ro.operator.seg"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1228
    if-eqz v3, :cond_5

    .line 1237
    :cond_4
    if-nez v1, :cond_9

    .line 1238
    if-nez v2, :cond_7

    .line 1239
    return v6

    .line 1230
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getTelephonyMode] Handle dual CT case, currMajorSim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 1231
    if-nez v1, :cond_6

    .line 1232
    return v6

    .line 1234
    :cond_6
    return v10

    .line 1240
    :cond_7
    if-ne v2, v7, :cond_8

    .line 1241
    return v7

    .line 1243
    :cond_8
    return v9

    .line 1245
    :cond_9
    if-ne v1, v7, :cond_c

    .line 1246
    if-nez v2, :cond_a

    .line 1247
    const/4 v3, 0x4

    return v3

    .line 1248
    :cond_a
    if-ne v2, v7, :cond_b

    .line 1249
    return v10

    .line 1251
    :cond_b
    const/4 v3, 0x5

    return v3

    .line 1254
    :cond_c
    return v8
.end method

.method private static initCardModes()[I
    .locals 4

    .prologue
    .line 200
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v0, v2, [I

    .line 201
    .local v0, "cardModes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 203
    const-string/jumbo v2, "persist.radio.svlte_slot"

    const-string/jumbo v3, "3,2,2,2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    return-object v0
.end method

.method private is3GCdmaCard(I)Z
    .locals 2
    .param p1, "cardType"    # I

    .prologue
    const/4 v1, 0x0

    .line 499
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 500
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 501
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsCdma(I)Z

    move-result v0

    .line 499
    if-eqz v0, :cond_0

    .line 502
    const/4 v0, 0x1

    return v0

    .line 504
    :cond_0
    return v1
.end method

.method private is4GCdmaCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsUsim(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, 0x1

    return v0

    .line 495
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isGsmCard(I)Z
    .locals 2
    .param p1, "cardType"    # I

    .prologue
    const/4 v1, 0x0

    .line 508
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 509
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    .line 510
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsGsm(I)Z

    move-result v0

    .line 508
    if-eqz v0, :cond_0

    .line 511
    const/4 v0, 0x1

    return v0

    .line 513
    :cond_0
    return v1
.end method

.method private isNonCard(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    const/4 v0, 0x0

    .line 517
    if-nez p1, :cond_0

    .line 518
    const/4 v0, 0x1

    return v0

    .line 520
    :cond_0
    return v0
.end method

.method private isOP09Project()Z
    .locals 4

    .prologue
    .line 1124
    const-string/jumbo v2, "OP09"

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SEGDEFAULT"

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1125
    :goto_0
    const-string/jumbo v2, "ro.ct6m_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1126
    .local v1, "isCTC":Z
    if-nez v0, :cond_1

    .end local v1    # "isCTC":Z
    :goto_1
    return v1

    .line 1124
    :cond_0
    const/4 v0, 0x0

    .local v0, "isCTA":Z
    goto :goto_0

    .line 1126
    .end local v0    # "isCTA":Z
    .restart local v1    # "isCTC":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isSvlteTestSimMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1307
    const-string/jumbo v1, "persist.sys.forcttestcard"

    .line 1308
    .local v1, "testCardFlag":Ljava/lang/String;
    const-string/jumbo v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1309
    .local v0, "forceCTTestCard":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "testCardFlag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1310
    const-string/jumbo v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimOnly(I)Z

    move-result v2

    :cond_0
    return v2
.end method

.method private isSwitchInAirplaneMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1258
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isFlightModePowerOffModemSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1259
    return v3

    .line 1261
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1262
    const-string/jumbo v2, "airplane_mode_on"

    .line 1261
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1263
    .local v0, "airplaneMode":I
    if-ne v0, v4, :cond_1

    .line 1264
    const-string/jumbo v1, "[isSwitchInAirplaneMode] Switch mode by previous mode."

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1265
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    .line 1266
    return v4

    .line 1268
    :cond_1
    return v3
.end method

.method private isUsimOnlyCard(I)Z
    .locals 2
    .param p1, "cardType"    # I

    .prologue
    const/4 v0, 0x0

    .line 810
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsUsim(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsCdma(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1276
    const-string/jumbo v0, "SvlteModeController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    return-void
.end method

.method private static logicLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1284
    const-string/jumbo v0, "SvlteModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SMC]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-void
.end method

.method public static make(Landroid/content/Context;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    .line 178
    const-string/jumbo v2, "SvlteRatController.make() should only be called once"

    .line 177
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 180
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .line 181
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private onC2kCardTypeReady()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->blockBySimSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    const-string/jumbo v0, "[onC2kCardTypeReady] Switching now, pended"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 255
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 254
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    .line 248
    :goto_0
    return-void

    .line 257
    :cond_1
    const-string/jumbo v0, "[onC2kCardTypeReady] Start switch"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 259
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 258
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    .line 260
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    .line 261
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiGsmDone:Z

    .line 262
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mConfgiC2kDone:Z

    .line 263
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSwitchInAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->calculateCardMode()[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 265
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setupSvlteSystemProp([I)V

    .line 266
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->calculateCardMode(Z)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setupSvlteActualSystemProp([I)V

    .line 268
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->doSwitchRadioTech()V

    goto :goto_0
.end method

.method private printRadioModes([I)V
    .locals 4
    .param p1, "cardModes"    # [I

    .prologue
    .line 609
    array-length v2, p1

    if-nez v2, :cond_0

    .line 610
    const-string/jumbo v2, "[printRadioModes] error cardModes."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 611
    return-void

    .line 613
    :cond_0
    const/4 v1, 0x0

    .local v1, "slot":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 614
    aget v2, p1, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 615
    const-string/jumbo v0, "RADIO_TECH_MODE_CSFB"

    .line 616
    .local v0, "mode":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[printRadioModes] slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : mCardTypes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 617
    const-string/jumbo v3, ", mode = "

    .line 616
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    .end local v0    # "mode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "RADIO_TECH_MODE_SVLTE"

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 608
    .end local v0    # "mode":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private sendBroadcast(Landroid/content/Intent;I)V
    .locals 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 679
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 680
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 681
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move/from16 v13, p2

    .line 679
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    return-void

    .line 682
    :catch_0
    move-exception v14

    .line 683
    .local v14, "ex":Landroid/os/RemoteException;
    const-string/jumbo v0, "SvlteModeController"

    const-string/jumbo v1, "Error while calling sendBroadcast"

    invoke-static {v0, v1, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setCdmaSocketSlotId(I)V
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 756
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    if-eq v0, p0, :cond_0

    .line 757
    sput p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    .line 758
    const-string/jumbo v0, "persist.radio.cdma_slot"

    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[setCdmaSocketSlotId] slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 755
    :cond_0
    return-void
.end method

.method private setSvlteModeProperties()V
    .locals 3

    .prologue
    .line 862
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 863
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 864
    const-string/jumbo v1, "[setSvlteModeProperties] svlte"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 865
    const-string/jumbo v1, "persist.radio.svlte.mode"

    const-string/jumbo v2, "svlte"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    return-void

    .line 862
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 869
    :cond_1
    const-string/jumbo v1, "[setSvlteModeProperties] csfb"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 870
    const-string/jumbo v1, "persist.radio.svlte.mode"

    const-string/jumbo v2, "csfb"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method private setupSvlteActualSystemProp([I)V
    .locals 4
    .param p1, "cardModes"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 535
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 537
    const-string/jumbo v0, "persist.radio.actual.svlte_slot"

    aget v1, p1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_0
    return-void

    .line 539
    :cond_0
    const-string/jumbo v0, "persist.radio.actual.svlte_slot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupSvlteSystemProp([I)V
    .locals 4
    .param p1, "cardModes"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 525
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 527
    const-string/jumbo v0, "persist.radio.svlte_slot"

    aget v1, p1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :goto_0
    return-void

    .line 529
    :cond_0
    const-string/jumbo v0, "persist.radio.svlte_slot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSwitchMode()V
    .locals 3

    .prologue
    .line 640
    const-string/jumbo v1, "Broadcast startSwitchMode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 643
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 645
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sendBroadcast(Landroid/content/Intent;I)V

    .line 639
    return-void
.end method

.method private switchRadioTechnology(I)V
    .locals 14
    .param p1, "slotId"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 400
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[switchRadioTechnology] Switch slotId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 401
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    aget v9, v9, p1

    if-ne v9, v12, :cond_0

    const-string/jumbo v9, " SVLTE"

    .line 400
    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 402
    const-string/jumbo v10, " -->"

    .line 400
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 402
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v9, v9, p1

    if-ne v9, v12, :cond_1

    const-string/jumbo v9, " SVLTE"

    .line 400
    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 403
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, p1

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v1

    .line 404
    .local v1, "is4GCdmaCard":Z
    const-string/jumbo v9, "ro.mtk_lte_support"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v13, :cond_2

    const/4 v2, 0x1

    .line 405
    .local v2, "isLteSupport":Z
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[switchRadioTechnology][is4GCdmaCard]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 406
    const-string/jumbo v10, ", [isLteSupport]: "

    .line 405
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 408
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 409
    .local v3, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v8

    .line 410
    .local v8, "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    const/16 v4, 0x8

    .line 411
    .local v4, "netWorkType":I
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v9, v9, p1

    if-ne v9, v12, :cond_4

    .line 412
    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    if-eqz v9, :cond_3

    .line 413
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->connectRilSocket()V

    .line 414
    return-void

    .line 401
    .end local v1    # "is4GCdmaCard":Z
    .end local v2    # "isLteSupport":Z
    .end local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v4    # "netWorkType":I
    .end local v8    # "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_0
    const-string/jumbo v9, " CSFB"

    goto :goto_0

    .line 402
    :cond_1
    const-string/jumbo v9, " CSFB"

    goto :goto_1

    .line 404
    .restart local v1    # "is4GCdmaCard":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isLteSupport":Z
    goto :goto_2

    .line 417
    .restart local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .restart local v4    # "netWorkType":I
    .restart local v8    # "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_3
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSubId()I

    move-result v7

    .line 418
    .local v7, "subId":I
    if-gez v7, :cond_5

    .line 419
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aput-boolean v13, v9, p1

    .line 423
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[switchRadioTechnology][needReSwitch][slotId]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 424
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aget-boolean v10, v10, p1

    .line 423
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 424
    const-string/jumbo v10, " subId = "

    .line 423
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 426
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 427
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getCdmaRatModeKey(I)Ljava/lang/String;

    move-result-object v10

    .line 428
    sget-object v11, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v11

    .line 426
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 429
    .local v6, "ratMode":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getRatMode ratMode= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v9

    .line 430
    aget-object v5, v9, v6

    .line 434
    .local v5, "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    const-string/jumbo v9, "persist.radio.simswitch"

    const-string/jumbo v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 433
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 435
    .local v0, "capabilityPhoneId":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[switchRadioTechnology] capabilityPhoneId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 436
    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 437
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v9, :cond_6

    .line 438
    const/16 v4, 0xc0

    .line 451
    :goto_4
    if-eq p1, v0, :cond_4

    .line 452
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 451
    if-eq v5, v9, :cond_4

    .line 453
    and-int/lit8 v4, v4, -0x41

    .line 485
    .end local v0    # "capabilityPhoneId":I
    .end local v5    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .end local v6    # "ratMode":I
    .end local v7    # "subId":I
    :cond_4
    :goto_5
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->configModemStatus()V

    .line 486
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[switchRadioTechnology][netWorkType]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 487
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    .line 488
    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechnology(ILandroid/os/Message;)Z

    .line 399
    return-void

    .line 421
    .restart local v7    # "subId":I
    :cond_5
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aput-boolean v11, v9, p1

    goto/16 :goto_3

    .line 440
    .restart local v0    # "capabilityPhoneId":I
    .restart local v5    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .restart local v6    # "ratMode":I
    :cond_6
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v9, :cond_7

    .line 441
    const/16 v4, 0xb0

    goto :goto_4

    .line 445
    :cond_7
    const/16 v4, 0xf0

    goto :goto_4

    .line 457
    :cond_8
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, p1

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isUsimOnlyCard(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 460
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v9, :cond_9

    .line 461
    const/16 v4, 0xc0

    .line 474
    :goto_6
    if-eq p1, v0, :cond_4

    .line 475
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 474
    if-eq v5, v9, :cond_4

    .line 476
    and-int/lit8 v4, v4, -0x41

    goto :goto_5

    .line 463
    :cond_9
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v9, :cond_a

    .line 464
    const/16 v4, 0xb0

    goto :goto_6

    .line 468
    :cond_a
    const/16 v4, 0xf0

    goto :goto_6

    .line 479
    :cond_b
    const/16 v4, 0xb0

    goto :goto_5
.end method

.method private unregisterForRilConnected()V
    .locals 2

    .prologue
    .line 891
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterForRilConnected, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 893
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 895
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    .line 890
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 209
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForC2KWPCardTypeReady(Landroid/os/Handler;)V

    .line 210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    .line 214
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 215
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    .line 216
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRilConnected()V

    .line 217
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 218
    const-string/jumbo v0, "dispose!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public getNeedReSwitch(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getNetWorkTypeBySlotId(I)I
    .locals 10
    .param p1, "slotId"    # I

    .prologue
    .line 332
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, p1

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v1

    .line 333
    .local v1, "is4GCdmaCard":Z
    const/16 v3, 0x8

    .line 334
    .local v3, "netWorkType":I
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v7, v7, p1

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 335
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 336
    .local v2, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSubId()I

    move-result v6

    .line 337
    .local v6, "subId":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 338
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getCdmaRatModeKey(I)Ljava/lang/String;

    move-result-object v8

    .line 339
    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v9

    .line 337
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 340
    .local v5, "ratMode":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getRatMode ratMode= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v7

    .line 341
    aget-object v4, v7, v5

    .line 344
    .local v4, "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    const-string/jumbo v7, "persist.radio.simswitch"

    const-string/jumbo v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 343
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 345
    .local v0, "capabilityPhoneId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[switchRadioTechnology] capabilityPhoneId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 347
    if-eqz v1, :cond_3

    .line 348
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v4, v7, :cond_1

    .line 349
    const/16 v3, 0xc0

    .line 362
    :goto_0
    if-eq p1, v0, :cond_0

    .line 363
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 362
    if-eq v4, v7, :cond_0

    .line 364
    and-int/lit8 v3, v3, -0x41

    .line 396
    .end local v0    # "capabilityPhoneId":I
    .end local v2    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v4    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .end local v5    # "ratMode":I
    .end local v6    # "subId":I
    :cond_0
    :goto_1
    return v3

    .line 351
    .restart local v0    # "capabilityPhoneId":I
    .restart local v2    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .restart local v4    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .restart local v5    # "ratMode":I
    .restart local v6    # "subId":I
    :cond_1
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v4, v7, :cond_2

    .line 352
    const/16 v3, 0xb0

    goto :goto_0

    .line 356
    :cond_2
    const/16 v3, 0xf0

    goto :goto_0

    .line 368
    :cond_3
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v7, v7, p1

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isUsimOnlyCard(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 371
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v4, v7, :cond_4

    .line 372
    const/16 v3, 0xc0

    .line 385
    :goto_2
    if-eq p1, v0, :cond_0

    .line 386
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 385
    if-eq v4, v7, :cond_0

    .line 387
    and-int/lit8 v3, v3, -0x41

    goto :goto_1

    .line 374
    :cond_4
    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v4, v7, :cond_5

    .line 375
    const/16 v3, 0xb0

    goto :goto_2

    .line 379
    :cond_5
    const/16 v3, 0xf0

    goto :goto_2

    .line 390
    :cond_6
    const/16 v3, 0xb0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 223
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 224
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 243
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 226
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->onC2kCardTypeReady()V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 230
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EVENT_RIL_CONNECTED, mWaitingRilSocketConnect ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 236
    :goto_2
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setCdmaSocketSlotId(I)V

    .line 238
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    .line 239
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRilConnected()V

    goto :goto_0

    .line 230
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 234
    :cond_2
    const-string/jumbo v1, "Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_2

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSvlteModeSwitching()Z
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
