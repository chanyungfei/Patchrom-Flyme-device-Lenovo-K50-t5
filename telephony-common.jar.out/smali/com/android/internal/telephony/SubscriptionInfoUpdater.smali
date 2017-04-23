.class public Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.super Landroid/os/Handler;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;,
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;,
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;,
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;
    }
.end annotation


# static fields
.field private static final COMMON_SLOT_PROPERTY:Ljava/lang/String; = "ro.mtk_sim_hot_swap_common_slot"

.field public static final CURR_SUBID:Ljava/lang/String; = "curr_subid"

.field private static final EVENT_GET_NETWORK_SELECTION_MODE_DONE:I = 0x2

.field private static final EVENT_RADIO_AVAILABLE:I = 0x65

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x66

.field private static final EVENT_SIM_ABSENT:I = 0x4

.field private static final EVENT_SIM_IO_ERROR:I = 0x6

.field private static final EVENT_SIM_LOADED:I = 0x3

.field private static final EVENT_SIM_LOCKED:I = 0x5

.field private static final EVENT_SIM_LOCKED_QUERY_ICCID_DONE:I = 0x1

.field private static final EVENT_SIM_NO_CHANGED:I = 0x67

.field private static final EVENT_SIM_PLUG_OUT:I = 0x69

.field private static final EVENT_SIM_READY:I = 0x64

.field private static final EVENT_SIM_UNKNOWN:I = 0x7

.field private static final EVENT_TRAY_PLUG_IN:I = 0x68

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = "N/A"

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionInfoUpdater"

.field private static final MTK_C2K_SUPPORT:Z

.field private static final MTK_LTEDC_SUPPORT:Z

.field private static final PROJECT_SIM_NUM:I

.field static PROPERTY_ICCID_SIM:[Ljava/lang/String; = null

.field public static final SIM_CHANGED:I = -0x1

.field public static final SIM_NEW:I = -0x2

.field public static final SIM_NOT_CHANGE:I = 0x0

.field public static final SIM_NOT_INSERT:I = -0x63

.field public static final SIM_REPOSITION:I = -0x3

.field public static final STATUS_NO_SIM_INSERTED:I = 0x0

.field public static final STATUS_SIM1_INSERTED:I = 0x1

.field public static final STATUS_SIM2_INSERTED:I = 0x2

.field public static final STATUS_SIM3_INSERTED:I = 0x4

.field public static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mAllowShowNewSim:[Z = null

.field private static mCommonSlotResetDone:Z = false

.field private static mContext:Landroid/content/Context; = null

.field private static mDetectType:I = 0x0

.field private static mIccId:[Ljava/lang/String; = null

.field private static mInsertSimState:[I = null

.field private static mPhone:[Lcom/android/internal/telephony/Phone; = null

.field private static sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler; = null

.field private static sIsUpdateAvailable:[I = null

.field private static final sReadICCID_retry_time:I = 0x3e8


# instance fields
.field private mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentlyActiveUserId:I

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field private mOldSvlteSlotId:I

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mReadIccIdCount:I

.field private mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    return v0
.end method

.method static synthetic -get1()[Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mAllowShowNewSim:[Z

    return-object v0
.end method

.method static synthetic -get10()[I
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic -get3()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSvlteSlotId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/content/pm/IPackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/telephony/SubscriptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSvlteSlotId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->clearIccId(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->startNewSimActivityIfNeed()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubName(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 131
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccFileHandler;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 133
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    .line 134
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    .line 141
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 150
    const-string/jumbo v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    .line 151
    const-string/jumbo v1, "ril.iccid.sim2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 152
    const-string/jumbo v1, "ril.iccid.sim3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 153
    const-string/jumbo v1, "ril.iccid.sim4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 149
    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isMtkC2KSupport()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_C2K_SUPPORT:Z

    .line 157
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_LTEDC_SUPPORT:Z

    .line 162
    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    .line 165
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mDetectType:I

    .line 166
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mAllowShowNewSim:[Z

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 168
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 130
    iput-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 135
    iput-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 144
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 143
    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 146
    iput v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    .line 147
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLock:Ljava/lang/Object;

    .line 158
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActualSvlteModeSlotId()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSvlteSlotId:I

    .line 292
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 1322
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

    .line 169
    const-string/jumbo v3, "Constructor invoked"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 171
    sput-object p1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 172
    sput-object p2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 173
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 174
    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 177
    array-length v3, p3

    new-array v3, v3, [Lcom/android/internal/telephony/CommandsInterface;

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, p3, v0

    aput-object v4, v3, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v3, :cond_3

    .line 183
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    aput v7, v3, v0

    .line 184
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 185
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No SIM insert :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 187
    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_LTEDC_SUPPORT:Z

    if-eqz v3, :cond_1

    .line 188
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimSim(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    :cond_1
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIccId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_2
    const-string/jumbo v3, "CT 3G card is not ready, set iccid to null!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 191
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v6, v3, v0

    goto :goto_2

    .line 198
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 199
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->start()V

    .line 207
    :cond_4
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v3, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_LTEDC_SUPPORT:Z

    if-eqz v3, :cond_5

    .line 221
    const-string/jumbo v3, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v3, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 225
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 226
    .local v1, "index":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x66

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x65

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    const-string/jumbo v3, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 229
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x68

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForTrayPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 230
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x69

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 233
    :cond_6
    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_LTEDC_SUPPORT:Z

    if-eqz v3, :cond_7

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCis["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "svlte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " lte ci:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 236
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 235
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "svlte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " nlte ci:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 238
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "svlte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " active ci:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 240
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 239
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 224
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 244
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    new-instance v3, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .line 247
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->initializeCarrierApps()V

    .line 168
    return-void
.end method

.method private broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1273
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1280
    const-string/jumbo v1, "phoneName"

    const-string/jumbo v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1281
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1282
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1283
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1285
    const-string/jumbo v2, " reason "

    .line 1284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1286
    const-string/jumbo v2, " for mCardIndex : "

    .line 1284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1287
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    .line 1288
    const/4 v2, -0x1

    .line 1287
    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1272
    return-void
.end method

.method private checkAllIccIdReady()Z
    .locals 4

    .prologue
    .line 1336
    const-string/jumbo v1, ""

    .line 1337
    .local v1, "iccId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAllIccIdReady +, retry_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1338
    const/4 v0, 0x0

    .end local v1    # "iccId":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_4

    .line 1339
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1340
    .restart local v1    # "iccId":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No SIM insert :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1342
    sget-boolean v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_LTEDC_SUPPORT:Z

    if-eqz v2, :cond_0

    .line 1343
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1344
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimSim(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1350
    .end local v1    # "iccId":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1351
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 1345
    .restart local v1    # "iccId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "CT 3G card is not ready, set iccid to null!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1346
    const/4 v1, 0x0

    .local v1, "iccId":Ljava/lang/String;
    goto :goto_1

    .line 1353
    .end local v1    # "iccId":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iccId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1356
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private checkIsAvailable()Z
    .locals 4

    .prologue
    .line 1418
    const/4 v1, 0x1

    .line 1419
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 1420
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    aget v2, v2, v0

    if-gtz v2, :cond_1

    .line 1421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sIsUpdateAvailable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1422
    const/4 v1, 0x0

    .line 1426
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkIsAvailable result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1427
    return v1

    .line 1419
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clearIccId(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1315
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1316
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[clearIccId], slotId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1317
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 1318
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1314
    return-void

    .line 1315
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1397
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1404
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 1405
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1406
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 1414
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    .line 1407
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 1408
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1409
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1410
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private handleSimAbsent(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 942
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " absent - card state no changed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 951
    return-void

    .line 943
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " hot plug out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 955
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v1, "N/A"

    aput-object v1, v0, p1

    .line 956
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 957
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 959
    :cond_3
    const-string/jumbo v0, "ABSENT"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 941
    return-void
.end method

.method private handleSimLoaded(I)V
    .locals 29
    .param p1, "slotId"    # I

    .prologue
    .line 770
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "handleSimStateLoadedInternal: slotId: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 772
    const/4 v11, 0x0

    .line 778
    .local v11, "needUpdate":Z
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v25, v25, p1

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v15

    .line 779
    .local v15, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v15, :cond_0

    .line 780
    const-string/jumbo v25, "onRecieve: IccRecords null"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 781
    return-void

    .line 783
    :cond_0
    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_1

    .line 784
    const-string/jumbo v25, "onRecieve: IccID null"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 785
    return-void

    .line 789
    :cond_1
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v25, v25, p1

    const-string/jumbo v26, ""

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 790
    .local v7, "iccId":Ljava/lang/String;
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v25, v25, p1

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 791
    const-string/jumbo v25, "NeedUpdate"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 792
    const/4 v11, 0x1

    .line 793
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v7, v25, p1

    .line 800
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v25

    if-eqz v25, :cond_3

    if-eqz v11, :cond_3

    .line 802
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 805
    :cond_3
    const v21, 0x7fffffff

    .line 806
    .local v21, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v22

    .line 807
    .local v22, "subIds":[I
    if-eqz v22, :cond_4

    .line 808
    const/16 v25, 0x0

    aget v21, v22, v25

    .line 811
    :cond_4
    invoke-static/range {v21 .. v21}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 812
    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    .line 813
    .local v13, "operator":Ljava/lang/String;
    if-eqz v13, :cond_9

    .line 814
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v25

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 815
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v13, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 817
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 825
    :goto_0
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v24

    .line 827
    .local v24, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v8

    .line 828
    .local v8, "msisdn":Ljava/lang/String;
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 830
    .local v5, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v8, :cond_6

    .line 837
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNumber(Ljava/lang/String;I)I

    .line 841
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v23

    .line 843
    .local v23, "subInfo":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v16

    .line 844
    .local v16, "simCarrierName":Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 846
    .local v9, "name":Landroid/content/ContentValues;
    if-eqz v23, :cond_7

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v25

    .line 847
    const/16 v26, 0x2

    .line 846
    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 851
    const/16 v25, 0x0

    aget v25, v22, v25

    .line 850
    invoke-virtual/range {v24 .. v25}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForSubscription(I)Ljava/lang/String;

    move-result-object v18

    .line 852
    .local v18, "simNumeric":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v25

    .line 853
    const/16 v26, 0x0

    aget v26, v22, v26

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const/16 v28, 0x1

    .line 852
    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v28

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorNameForDisplayName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 854
    .local v17, "simMvnoName":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[handleSimLoaded]- simNumeric: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 855
    const-string/jumbo v26, ", simMvnoName: "

    .line 854
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 856
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_a

    .line 857
    move-object/from16 v10, v17

    .line 872
    .local v10, "nameToSet":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;I)I

    .line 873
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[handleSimLoaded] subId = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", sim name = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 880
    .end local v10    # "nameToSet":Ljava/lang/String;
    .end local v17    # "simMvnoName":Ljava/lang/String;
    .end local v18    # "simNumeric":Ljava/lang/String;
    :cond_7
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 881
    .local v19, "sp":Landroid/content/SharedPreferences;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "curr_subid"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 883
    .local v20, "storedSubId":I
    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 886
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v25, v25, p1

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 887
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "preferred_network_mode"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 888
    sget v27, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 886
    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 894
    .local v12, "networkType":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Possibly a new IMSI. Set sub("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ") networkType to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 898
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v25, v25, p1

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 899
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "preferred_network_mode"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 898
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 903
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v25, v25, p1

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 905
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "lte_on_cdma_rat_mode"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 906
    sget-object v27, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v27

    .line 903
    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 908
    .local v14, "ratMode":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Possibly a new IMSI. Set sub("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ") ratMode to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 909
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v25, v25, p1

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 910
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "lte_on_cdma_rat_mode"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 909
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 914
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v25, v25, p1

    .line 915
    new-instance v26, Ljava/lang/Integer;

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v27, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    .line 914
    invoke-interface/range {v25 .. v26}, Lcom/android/internal/telephony/Phone;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 918
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 919
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "curr_subid"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 920
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 927
    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "msisdn":Ljava/lang/String;
    .end local v9    # "name":Landroid/content/ContentValues;
    .end local v12    # "networkType":I
    .end local v13    # "operator":Ljava/lang/String;
    .end local v14    # "ratMode":I
    .end local v16    # "simCarrierName":Ljava/lang/String;
    .end local v19    # "sp":Landroid/content/SharedPreferences;
    .end local v20    # "storedSubId":I
    .end local v23    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v24    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    :goto_2
    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v25

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    move/from16 v28, v0

    .line 927
    invoke-static/range {v25 .. v28}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V

    .line 930
    const-string/jumbo v25, "LOADED"

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string/jumbo v25, "LOADED"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 769
    return-void

    .line 819
    .restart local v13    # "operator":Ljava/lang/String;
    :cond_9
    const-string/jumbo v25, "EVENT_RECORDS_LOADED Operator name is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 859
    .restart local v5    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v8    # "msisdn":Ljava/lang/String;
    .restart local v9    # "name":Landroid/content/ContentValues;
    .restart local v16    # "simCarrierName":Ljava/lang/String;
    .restart local v17    # "simMvnoName":Ljava/lang/String;
    .restart local v18    # "simNumeric":Ljava/lang/String;
    .restart local v23    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v24    # "tm":Landroid/telephony/TelephonyManager;
    :cond_a
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 860
    move-object/from16 v10, v16

    .restart local v10    # "nameToSet":Ljava/lang/String;
    goto/16 :goto_1

    .line 862
    .end local v10    # "nameToSet":Ljava/lang/String;
    :cond_b
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "CARD "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, p1, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "nameToSet":Ljava/lang/String;
    goto/16 :goto_1

    .line 923
    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    .end local v8    # "msisdn":Ljava/lang/String;
    .end local v9    # "name":Landroid/content/ContentValues;
    .end local v10    # "nameToSet":Ljava/lang/String;
    .end local v13    # "operator":Ljava/lang/String;
    .end local v16    # "simCarrierName":Ljava/lang/String;
    .end local v17    # "simMvnoName":Ljava/lang/String;
    .end local v18    # "simNumeric":Ljava/lang/String;
    .end local v23    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v24    # "tm":Landroid/telephony/TelephonyManager;
    :cond_c
    const-string/jumbo v25, "Invalid subId, could not update ContentResolver"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleSimLocked(ILjava/lang/String;)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 710
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 712
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, p1

    const-string/jumbo v5, "N/A"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SIM"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " hot plug in"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 714
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v3, p1

    .line 718
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v0, 0x0

    .line 721
    :goto_0
    if-eqz v0, :cond_6

    .line 722
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v3, p1

    .line 724
    .local v1, "iccId":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 732
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v5, v5, p1

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, p1

    .line 734
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, p1

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 742
    :cond_2
    const-string/jumbo v3, "Querying IccId"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 745
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    invoke-direct {v3, p2, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 744
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 743
    const/16 v5, 0x2fe2

    invoke-virtual {v0, v5, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "iccId":Ljava/lang/String;
    :goto_1
    monitor-exit v4

    .line 706
    return-void

    .line 719
    :cond_3
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .local v0, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    goto :goto_0

    .line 735
    .end local v0    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v1    # "iccId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "Use Icc ID system property for performance enhancement"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 736
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    .line 737
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    invoke-direct {v3, p2, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 738
    const/4 v5, 0x2

    .line 736
    invoke-direct {v2, p0, v3, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 739
    .local v2, "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 710
    .end local v1    # "iccId":Ljava/lang/String;
    .end local v2    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 751
    .restart local v1    # "iccId":Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NOT Querying IccId its already set sIccid["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 752
    const-string/jumbo v3, "LOCKED"

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 753
    const-string/jumbo v3, "LOCKED"

    invoke-direct {p0, p1, v3, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 756
    .end local v1    # "iccId":Ljava/lang/String;
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sFh["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] is null, ignore"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 760
    const-string/jumbo v3, "LOCKED"

    invoke-direct {p0, p1, v3, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private initializeCarrierApps()V
    .locals 5

    .prologue
    .line 255
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 257
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 258
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    .line 257
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 284
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iput v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 288
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V

    .line 250
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t get current user ID; guessing it\'s 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAllIccIdQueryDone()Z
    .locals 3

    .prologue
    .line 438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_2

    .line 440
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wait for SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IccId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 443
    const/4 v1, 0x0

    return v1

    .line 438
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_2
    const-string/jumbo v1, "All IccIds query complete"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 448
    const/4 v1, 0x1

    return v1
.end method

.method private isAllowedToShowSimDialog()Z
    .locals 3

    .prologue
    .line 1245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 1246
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mAllowShowNewSim:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[isAllowedToShowSimDialog] slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1248
    const/4 v1, 0x0

    return v1

    .line 1245
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1251
    :cond_1
    const-string/jumbo v1, "[isAllowedToShowSimDialog] all slots allowed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1252
    const/4 v1, 0x1

    return v1
.end method

.method private isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "oldIccId"    # [Ljava/lang/String;

    .prologue
    .line 1227
    const/4 v1, 0x1

    .line 1228
    .local v1, "newSim":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 1231
    if-eqz p1, :cond_1

    aget-object v2, p2, v0

    if-eqz v2, :cond_1

    .line 1232
    aget-object v2, p2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1233
    const/4 v1, 0x0

    .line 1239
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newSim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1241
    return v1

    .line 1228
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1297
    const-string/jumbo v0, "SubscriptionInfoUpdater"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    return-void
.end method

.method private setAllDefaultSub(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1307
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string/jumbo v0, "[setAllDefaultSub]+ "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1308
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mediatek/internal/telephony/DefaultSmsSimSettings;->setSmsTalkDefaultSim(Ljava/util/List;Landroid/content/Context;)V

    .line 1309
    const-string/jumbo v0, "[setSmsTalkDefaultSim]- "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1310
    invoke-static {p1}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->setVoiceCallDefaultSub(Ljava/util/List;)V

    .line 1311
    const-string/jumbo v0, "[setVoiceCallDefaultSub]- "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1306
    return-void
.end method

.method private setUpdatedData(III)Landroid/content/Intent;
    .locals 6
    .param p1, "detectedType"    # I
    .param p2, "subCount"    # I
    .param p3, "newSimStatus"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1199
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "[setUpdatedData]+ "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1203
    if-ne p1, v2, :cond_1

    .line 1204
    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1206
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1207
    const-string/jumbo v1, "newSIMSlot"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1221
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setUpdatedData]- ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1222
    return-object v0

    .line 1208
    :cond_1
    if-ne p1, v4, :cond_2

    .line 1209
    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1211
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1212
    :cond_2
    if-ne p1, v3, :cond_3

    .line 1213
    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1215
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1216
    :cond_3
    if-ne p1, v5, :cond_0

    .line 1217
    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private startNewSimActivityIfNeed()V
    .locals 5

    .prologue
    .line 1255
    sget v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mDetectType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllowedToShowSimDialog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1256
    const-string/jumbo v3, "Lenovo:startNewSimActivityIfNeed..."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1258
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1259
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.lenovo.geminisettings"

    const-string/jumbo v4, "com.lenovo.geminisettings.dialog.NewSimActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1260
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1261
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v3, -0x1

    sput v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mDetectType:I

    .line 1266
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v3, :cond_0

    .line 1267
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mAllowShowNewSim:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v1

    .line 1266
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1262
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "Lenovo:NewSimActivity no Found!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1254
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    return-void
.end method

.method private updateCarrierServices(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    .prologue
    .line 936
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 935
    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 937
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 938
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->updateForPhoneId(ILjava/lang/String;)V

    .line 934
    return-void
.end method

.method private updateSubName(I)V
    .locals 7
    .param p1, "subId"    # I

    .prologue
    .line 1432
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 1433
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_0

    .line 1434
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 1435
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v3

    .line 1437
    .local v3, "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, "carrierName":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 1439
    .local v2, "slotId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSubName, carrierName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1440
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1441
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrierEx(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1443
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    .line 1442
    invoke-virtual {v3, p1, v0, v6, v5}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1444
    .local v1, "nameToSet":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SPN found, name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1449
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v1, p1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;I)I

    .line 1430
    .end local v0    # "carrierName":Ljava/lang/String;
    .end local v1    # "nameToSet":Ljava/lang/String;
    .end local v2    # "slotId":I
    .end local v3    # "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    :cond_0
    return-void

    .line 1446
    .restart local v0    # "carrierName":Ljava/lang/String;
    .restart local v2    # "slotId":I
    .restart local v3    # "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CARD "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1447
    .restart local v1    # "nameToSet":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SPN not found, set name to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 24

    .prologue
    monitor-enter p0

    .line 968
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 970
    :try_start_1
    const-string/jumbo v20, "updateSubscriptionInfoByIccId:+ Start"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 975
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v20

    if-nez v20, :cond_0

    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 976
    return-void

    .line 980
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    .line 983
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    .line 985
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_1

    .line 986
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, 0x0

    aput v22, v20, v6

    .line 985
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 989
    :cond_1
    sget v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 990
    .local v8, "insertedSimCount":I
    const/4 v6, 0x0

    :goto_1
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_3

    .line 991
    const-string/jumbo v20, "N/A"

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 992
    add-int/lit8 v8, v8, -0x1

    .line 993
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x63

    aput v22, v20, v6

    .line 990
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 996
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "insertedSimCount = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 998
    const/4 v7, 0x0

    .line 999
    .local v7, "index":I
    const/4 v6, 0x0

    :goto_2
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_7

    .line 1000
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    const/16 v22, -0x63

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 999
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1003
    :cond_5
    const/4 v7, 0x2

    .line 1004
    add-int/lit8 v10, v6, 0x1

    .local v10, "j":I
    :goto_3
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 1005
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v10

    if-nez v20, :cond_6

    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v20, v20, v6

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v10

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1006
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, 0x1

    aput v22, v20, v6

    .line 1007
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v7, v20, v10

    .line 1008
    add-int/lit8 v7, v7, 0x1

    .line 1004
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1013
    .end local v10    # "j":I
    :cond_7
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1014
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/String;

    .line 1015
    .local v15, "oldIccId":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_4
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_d

    .line 1016
    const/16 v20, 0x0

    aput-object v20, v15, v6

    .line 1018
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v20

    .line 1019
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v22

    .line 1018
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZLjava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 1020
    .local v16, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v16, :cond_b

    .line 1021
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v15, v6

    .line 1022
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateSubscriptionInfoByIccId: oldSubId = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1023
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v20

    .line 1022
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1024
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    if-nez v20, :cond_8

    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v20, v20, v6

    aget-object v22, v15, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1027
    :cond_8
    :goto_5
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    if-eqz v20, :cond_9

    .line 1028
    new-instance v19, Landroid/content/ContentValues;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/content/ContentValues;-><init>(I)V

    .line 1029
    .local v19, "value":Landroid/content/ContentValues;
    const-string/jumbo v20, "sim_id"

    .line 1030
    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 1029
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1031
    sget-object v22, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 1032
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "_id="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1033
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 1032
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1033
    const/16 v23, 0x0

    .line 1031
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1015
    .end local v19    # "value":Landroid/content/ContentValues;
    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 1025
    :cond_a
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x1

    aput v22, v20, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 968
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "insertedSimCount":I
    .end local v15    # "oldIccId":[Ljava/lang/String;
    .end local v16    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v20

    :try_start_4
    monitor-exit v21

    throw v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v20

    monitor-exit p0

    throw v20

    .line 1036
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v6    # "i":I
    .restart local v7    # "index":I
    .restart local v8    # "insertedSimCount":I
    .restart local v15    # "oldIccId":[Ljava/lang/String;
    .restart local v16    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_b
    :try_start_5
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    if-nez v20, :cond_c

    .line 1038
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x1

    aput v22, v20, v6

    .line 1040
    :cond_c
    const-string/jumbo v20, "N/A"

    aput-object v20, v15, v6

    .line 1041
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateSubscriptionInfoByIccId: No SIM in slot "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, " last time"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_6

    .line 1045
    .end local v16    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_d
    const/4 v6, 0x0

    :goto_7
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_e

    .line 1046
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateSubscriptionInfoByIccId: oldIccId["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, "] = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v22, v15, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1047
    const-string/jumbo v22, ", sIccId["

    .line 1046
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1047
    const-string/jumbo v22, "] = "

    .line 1046
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1047
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    .line 1046
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1045
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1051
    :cond_e
    const/4 v12, 0x0

    .line 1052
    .local v12, "nNewCardCount":I
    const/4 v13, 0x0

    .line 1053
    .local v13, "nNewSimStatus":I
    const/4 v6, 0x0

    :goto_8
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_12

    .line 1054
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    const/16 v22, -0x63

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 1055
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateSubscriptionInfoByIccId: No SIM inserted in slot "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, " this time"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1053
    :cond_f
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 1057
    :cond_10
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    if-lez v20, :cond_11

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v20, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v23, v23, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1061
    sget-object v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v23, v23, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 1060
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 1062
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "SUB"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v22, v6, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, " has invalid IccId"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1066
    :goto_a
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v20, v20, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1067
    add-int/lit8 v12, v12, 0x1

    .line 1068
    packed-switch v6, :pswitch_data_0

    .line 1083
    :goto_b
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x2

    aput v22, v20, v6

    goto :goto_9

    .line 1064
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v20, v0

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_a

    .line 1070
    :pswitch_0
    or-int/lit8 v13, v13, 0x1

    .line 1071
    goto :goto_b

    .line 1073
    :pswitch_1
    or-int/lit8 v13, v13, 0x2

    .line 1074
    goto :goto_b

    .line 1076
    :pswitch_2
    or-int/lit8 v13, v13, 0x4

    .line 1077
    goto :goto_b

    .line 1088
    :cond_12
    const/4 v6, 0x0

    :goto_c
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_14

    .line 1089
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 1090
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x3

    aput v22, v20, v6

    .line 1092
    :cond_13
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateSubscriptionInfoByIccId: sInsertSimState["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, "] = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1093
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v22, v22, v6

    .line 1092
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1088
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 1096
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v17

    .line 1097
    .local v17, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v17, :cond_16

    const/4 v14, 0x0

    .line 1098
    .local v14, "nSubCount":I
    :goto_d
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateSubscriptionInfoByIccId: nSubCount = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1099
    const/4 v6, 0x0

    :goto_e
    if-ge v6, v14, :cond_17

    .line 1100
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/SubscriptionInfo;

    .line 1107
    .local v18, "temp":Landroid/telephony/SubscriptionInfo;
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v20

    .line 1108
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v22

    .line 1107
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v11

    .line 1111
    .local v11, "msisdn":Ljava/lang/String;
    if-eqz v11, :cond_15

    .line 1118
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v20

    .line 1119
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v22

    const/16 v23, 0x0

    .line 1118
    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNumber(Ljava/lang/String;IZ)I

    .line 1099
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 1097
    .end local v11    # "msisdn":Ljava/lang/String;
    .end local v14    # "nSubCount":I
    .end local v18    # "temp":Landroid/telephony/SubscriptionInfo;
    :cond_16
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v14

    .restart local v14    # "nSubCount":I
    goto :goto_d

    .line 1125
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setAllDefaultSub(Ljava/util/List;)V

    .line 1128
    const/4 v5, 0x0

    .line 1129
    .local v5, "hasSimRemoved":Z
    const/4 v6, 0x0

    :goto_f
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_1a

    .line 1130
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v20, v20, v6

    if-eqz v20, :cond_18

    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v20, v20, v6

    const-string/jumbo v22, "N/A"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 1131
    aget-object v20, v15, v6

    const-string/jumbo v22, "N/A"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 1129
    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 1132
    :cond_19
    const/4 v5, 0x1

    .line 1137
    :cond_1a
    const/4 v9, 0x0

    .line 1138
    .local v9, "intent":Landroid/content/Intent;
    if-nez v12, :cond_21

    .line 1140
    if-eqz v5, :cond_1e

    .line 1142
    const/4 v6, 0x0

    :goto_10
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_1b

    .line 1143
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    const/16 v22, -0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    .line 1144
    const-string/jumbo v20, "No new SIM detected and SIM repositioned"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1145
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    .line 1150
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_1b
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ne v6, v0, :cond_1c

    .line 1152
    const-string/jumbo v20, "No new SIM detected and SIM removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1153
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    .line 1188
    :cond_1c
    :goto_11
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged(Landroid/content/Intent;)V

    .line 1190
    const-string/jumbo v20, "updateSubscriptionInfoByIccId:- SsubscriptionInfo update complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    .line 966
    return-void

    .line 1142
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 1158
    :cond_1e
    const/4 v6, 0x0

    :goto_12
    :try_start_7
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_1f

    .line 1159
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    const/16 v22, -0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_20

    .line 1160
    const-string/jumbo v20, "No new SIM detected and SIM repositioned"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1161
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    .line 1166
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_1f
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ne v6, v0, :cond_1c

    .line 1168
    const-string/jumbo v20, "[updateSimInfoByIccId] All SIM inserted into the same slot"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1169
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    .local v9, "intent":Landroid/content/Intent;
    goto :goto_11

    .line 1158
    .local v9, "intent":Landroid/content/Intent;
    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 1174
    :cond_21
    const-string/jumbo v20, "New SIM detected"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1175
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    .line 1177
    .local v9, "intent":Landroid/content/Intent;
    const/16 v20, 0x1

    sput v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mDetectType:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_11

    .line 1068
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSubscriptionInfoIfNeed()V
    .locals 6

    .prologue
    .line 1360
    const-string/jumbo v3, "[updateSubscriptionInfoIfNeed]+"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1361
    const/4 v2, 0x0

    .line 1362
    .local v2, "needUpdate":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v3, :cond_1

    .line 1363
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1364
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1362
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1365
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[updateSubscriptionInfoIfNeed] icc id change, slot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1366
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1367
    const/4 v2, 0x1

    goto :goto_1

    .line 1371
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1372
    if-eqz v2, :cond_3

    .line 1374
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->start()V

    .line 1392
    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[updateSubscriptionInfoIfNeed]- return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1359
    return-void

    .line 1383
    :cond_3
    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_C2K_SUPPORT:Z

    if-eqz v3, :cond_2

    .line 1384
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1385
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "simDetectStatus"

    .line 1386
    const/4 v4, 0x4

    .line 1385
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1387
    const-string/jumbo v3, "Broadcast ACTION_SUBINFO_RECORD_UPDATED with nochange"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1388
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 1292
    const-string/jumbo v0, "[dispose]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1293
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1291
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1301
    const-string/jumbo v0, "SubscriptionInfoUpdater:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1300
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 475
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 637
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown msg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 477
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 478
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    .line 479
    .local v7, "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    iget v5, v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    .line 480
    .local v5, "slotId":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleMessage : <EVENT_SIM_LOCKED_QUERY_ICCID_DONE> SIM"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 481
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_4

    .line 482
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_3

    .line 483
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 486
    .local v1, "data":[B
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    array-length v10, v1

    invoke-static {v1, v12, v10}, Lcom/android/internal/telephony/uicc/IccUtils;->parseIccIdToString([BII)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 506
    .end local v1    # "data":[B
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sIccId["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 508
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 510
    :cond_1
    const-string/jumbo v9, "LOCKED"

    .line 511
    iget-object v10, v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    .line 510
    invoke-direct {p0, v5, v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string/jumbo v9, "N/A"

    sget-object v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 513
    const-string/jumbo v9, "LOCKED"

    invoke-direct {p0, v5, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 521
    :cond_2
    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    .line 522
    new-instance v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget-object v10, v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    invoke-direct {v9, v10, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 523
    const/4 v10, 0x2

    .line 521
    invoke-direct {v8, p0, v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 524
    .local v8, "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 489
    .end local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :cond_3
    const-string/jumbo v9, "Null ar"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 490
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v10, "N/A"

    aput-object v10, v9, v5

    goto :goto_1

    .line 494
    :cond_4
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v9, v9, Lcom/android/internal/telephony/CommandException;

    if-eqz v9, :cond_5

    .line 495
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v9

    .line 496
    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    .line 495
    if-ne v9, v10, :cond_5

    .line 497
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v10, ""

    aput-object v10, v9, v5

    .line 504
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Query IccId fail: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 500
    :cond_5
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v10, "N/A"

    aput-object v10, v9, v5

    goto :goto_2

    .line 530
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "slotId":I
    .end local v7    # "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v3

    .line 531
    .local v3, "index":Ljava/lang/Integer;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleMessage : <EVENT_RADIO_UNAVAILABLE> SIM"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 532
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v12, v9, v10

    .line 533
    const-string/jumbo v9, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 534
    const-string/jumbo v9, "[Common slot] reset mCommonSlotResetDone in EVENT_RADIO_UNAVAILABLE"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 535
    sput-boolean v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    goto/16 :goto_0

    .line 539
    .end local v3    # "index":Ljava/lang/Integer;
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v3

    .line 540
    .restart local v3    # "index":Ljava/lang/Integer;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleMessage : <EVENT_RADIO_AVAILABLE> SIM"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 541
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v13, v9, v10

    .line 543
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkIsAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 544
    iput v12, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    .line 545
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v9

    if-nez v9, :cond_6

    .line 546
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 548
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    goto/16 :goto_0

    .line 554
    .end local v3    # "index":Ljava/lang/Integer;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 555
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 556
    .local v6, "slotId":Ljava/lang/Integer;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_7

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_7

    .line 557
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 558
    .local v4, "modes":[I
    aget v9, v4, v12

    if-ne v9, v13, :cond_0

    .line 559
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v9, v9, v10

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 562
    .end local v4    # "modes":[I
    :cond_7
    const-string/jumbo v9, "EVENT_GET_NETWORK_SELECTION_MODE_DONE: error getting network mode."

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 575
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "slotId":Ljava/lang/Integer;
    :sswitch_4
    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    .line 576
    new-instance v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v9, v11, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 575
    invoke-direct {v8, p0, v9, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 578
    .restart local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 585
    .end local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :sswitch_5
    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    .line 586
    new-instance v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v9, v11, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 585
    invoke-direct {v8, p0, v9, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 588
    .restart local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 593
    .end local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :sswitch_6
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v10, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLocked(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 597
    :sswitch_7
    iget v9, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v10, "UNKNOWN"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 601
    :sswitch_8
    iget v9, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v10, "CARD_IO_ERROR"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 606
    :sswitch_9
    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    .line 607
    new-instance v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v9, v11, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 608
    const/4 v10, 0x3

    .line 606
    invoke-direct {v8, p0, v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 609
    .restart local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 613
    .end local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :sswitch_a
    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    .line 614
    new-instance v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v9, v11, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    .line 615
    const/4 v10, 0x4

    .line 613
    invoke-direct {v8, p0, v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 616
    .restart local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 621
    .end local v8    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :sswitch_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[Common Slot] handle EVENT_TRAY_PLUG_IN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 622
    sget-boolean v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    if-nez v9, :cond_0

    .line 623
    sput-boolean v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    .line 624
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    sget v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v9, :cond_0

    .line 625
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string/jumbo v10, ""

    aput-object v10, v9, v2

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 631
    .end local v2    # "i":I
    :sswitch_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[Common Slot] handle EVENT_SIM_PLUG_OUT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 632
    sput-boolean v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    goto/16 :goto_0

    .line 475
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_8
        0x7 -> :sswitch_7
        0x64 -> :sswitch_9
        0x65 -> :sswitch_2
        0x66 -> :sswitch_1
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x69 -> :sswitch_c
    .end sparse-switch
.end method

.method public setDisplayNameForNewSub(Ljava/lang/String;II)V
    .locals 8
    .param p1, "newSubName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "newNameSource"    # I

    .prologue
    .line 452
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 453
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_3

    .line 455
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v0

    .line 456
    .local v0, "oldNameSource":I
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 457
    .local v1, "oldSubName":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[setDisplayNameForNewSub] subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 458
    const-string/jumbo v4, ", oldSimName = "

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 458
    const-string/jumbo v4, ", oldNameSource = "

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 459
    const-string/jumbo v4, ", newSubName = "

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 459
    const-string/jumbo v4, ", newNameSource = "

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 460
    if-eqz v1, :cond_0

    .line 461
    if-nez v0, :cond_2

    .line 462
    if-eqz p1, :cond_2

    .line 465
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 466
    int-to-long v6, p3

    .line 465
    invoke-virtual {v3, p1, v4, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 451
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 463
    .restart local v0    # "oldNameSource":I
    .restart local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_1

    .line 464
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 469
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " SubInfo not created yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method
