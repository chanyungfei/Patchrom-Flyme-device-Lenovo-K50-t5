.class Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;
.super Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;
.source "SvlteIrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Strategy5M"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$3;
    }
.end annotation


# static fields
.field private static final CHINA_TELECOM_MACCO_MCC:Ljava/lang/String; = "455"

.field private static final CHINA_TELECOM_MAINLAND_MCC:Ljava/lang/String; = "460"

.field protected static final EVENT_NO_SEERVICE_WATCHDOG:I = 0x65

.field protected static final EVENT_RETRY_PLMN_CHANGED:I = 0x66

.field protected static final EVENT_ROAMING_MODE_CHANGED:I = 0x67

.field protected static final EVENT_ROAMING_MODE_CHANGED_FORALL:I = 0x68

.field protected static final EVENT_ROAMING_MODE_CHANGED_FORCDMA:I = 0x6a

.field protected static final EVENT_ROAMING_MODE_CHANGED_FORLTE:I = 0x69

.field private static final MAX_WATCHDOG_RETRY_DELAY:I = 0x1b7740

.field private static final WATCHDOG_RETRY_DELAY_STEP:I = 0x7530


# instance fields
.field private mCdmaListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

.field protected mCdmaPlmnForCriticalArea:Ljava/lang/String;

.field protected mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field protected mCdmaServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

.field private mContinousRetryCount:I

.field protected mFailedNetworkInfoArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLteListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

.field protected mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

.field protected mNoServiceTimeStamp:J

.field protected mPlmnToSelectNetworkManually:Ljava/lang/String;

.field private mPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

.field private mRatModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

.field private mWatchdogStartTime:J

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;


# direct methods
.method static synthetic -get0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualRadioOff()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualServiceNotInService()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->cancelToRetryLwgPlmnChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;)V
    .locals 4
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
    .param p2, "controller"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
    .param p3, "lteController"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;
    .param p4, "cdmaController"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1433
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 1436
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;)V

    .line 1378
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1380
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    .line 1381
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    .line 1390
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mFailedNetworkInfoArray:Ljava/util/List;

    .line 1391
    iput-wide v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mNoServiceTimeStamp:J

    .line 1393
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    .line 1394
    iput-wide v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mWatchdogStartTime:J

    .line 1395
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlmnToSelectNetworkManually:Ljava/lang/String;

    .line 1396
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    .line 1398
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)V

    .line 1397
    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mRatModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 1862
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$2;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    .line 1947
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$3;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$3;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    .line 1438
    const-string/jumbo v0, "persist.sys.ct.ir.wd"

    .line 1439
    const v1, 0x493e0

    .line 1438
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-set2(I)I

    .line 1441
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->registerListener(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;)V

    .line 1442
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->registerListener(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;)V

    .line 1443
    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    .line 1444
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mRatModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 1443
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->registerSvlteRatModeChangedListener(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;)V

    .line 1446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mFailedNetworkInfoArray:Ljava/util/List;

    .line 1435
    return-void
.end method

.method private cancelToRetryLwgPlmnChanged()V
    .locals 1

    .prologue
    .line 1734
    const-string/jumbo v0, "cancelToRetryLwgPlmnChanged"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1735
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mFailedNetworkInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1736
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->removeMessages(I)V

    .line 1733
    return-void
.end method

.method private getRoamingModeByPlmn5M(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 2
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1475
    if-eqz p1, :cond_2

    .line 1477
    const-string/jumbo v0, "460"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1478
    const-string/jumbo v0, "455"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1477
    if-eqz v0, :cond_1

    .line 1479
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getRoamingModeByPlmn5M, plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1480
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1481
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0

    .line 1483
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getRoamingModeByPlmn5M, plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1484
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1485
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0

    .line 1488
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getRoamingModeByPlmn5M, plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1489
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1490
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method private isDualRadioOff()Z
    .locals 3

    .prologue
    .line 1501
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIsLwgRadioOn:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIsCdmaRadioOn:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1502
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDualRadioOff() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1503
    return v0

    .line 1501
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isDualServiceNotInService()Z
    .locals 3

    .prologue
    .line 1495
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-eq v1, v2, :cond_1

    .line 1496
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1497
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDualServiceNotInService() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1498
    return v0

    .line 1496
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0

    .line 1495
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isFailedNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 12
    .param p1, "oi"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 1740
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mFailedNetworkInfoArray:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 1741
    .local v0, "count":I
    const/4 v6, 0x0

    .line 1742
    .local v6, "isFailed":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 1743
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mFailedNetworkInfoArray:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    .line 1744
    .local v3, "foi":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 1745
    .local v1, "foal":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1746
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    .line 1747
    .local v2, "foas":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 1749
    .local v4, "fon":Ljava/lang/String;
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    .line 1750
    .local v7, "oal":Ljava/lang/String;
    :goto_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v8

    .line 1751
    .local v8, "oas":Ljava/lang/String;
    :goto_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 1753
    .local v9, "on":Ljava/lang/String;
    :goto_6
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1754
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "found failed op: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1755
    const/4 v6, 0x1

    .line 1759
    .end local v1    # "foal":Ljava/lang/String;
    .end local v2    # "foas":Ljava/lang/String;
    .end local v3    # "foi":Lcom/android/internal/telephony/OperatorInfo;
    .end local v4    # "fon":Ljava/lang/String;
    .end local v7    # "oal":Ljava/lang/String;
    .end local v8    # "oas":Ljava/lang/String;
    .end local v9    # "on":Ljava/lang/String;
    :cond_0
    return v6

    .line 1744
    .restart local v3    # "foi":Lcom/android/internal/telephony/OperatorInfo;
    :cond_1
    const-string/jumbo v1, ""

    .restart local v1    # "foal":Ljava/lang/String;
    goto :goto_1

    .line 1746
    :cond_2
    const-string/jumbo v2, ""

    .restart local v2    # "foas":Ljava/lang/String;
    goto :goto_2

    .line 1747
    :cond_3
    const-string/jumbo v4, ""

    .restart local v4    # "fon":Ljava/lang/String;
    goto :goto_3

    .line 1749
    :cond_4
    const-string/jumbo v7, ""

    .restart local v7    # "oal":Ljava/lang/String;
    goto :goto_4

    .line 1750
    :cond_5
    const-string/jumbo v8, ""

    .restart local v8    # "oas":Ljava/lang/String;
    goto :goto_5

    .line 1751
    :cond_6
    const-string/jumbo v9, ""

    .restart local v9    # "on":Ljava/lang/String;
    goto :goto_6

    .line 1742
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private logdForStrategy(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " [Strategy5M], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 1762
    return-void
.end method

.method private retryLwgPlmnChanged()V
    .locals 2

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlmnToSelectNetworkManually:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[LTE]retry check plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlmnToSelectNetworkManually:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1719
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlmnToSelectNetworkManually:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->onLwgPlmnChanged(Ljava/lang/String;)V

    .line 1716
    :cond_0
    return-void
.end method

.method private waitForRetryLwgPlmnChanged()V
    .locals 4

    .prologue
    const/16 v1, 0x66

    .line 1724
    const-string/jumbo v0, "[LTE]waitForRetryLwgPlmnChanged"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1726
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1727
    const-string/jumbo v0, "really wait for retry"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1728
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1729
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get5()I

    move-result v1

    int-to-long v2, v1

    .line 1728
    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1723
    :cond_0
    return-void
.end method


# virtual methods
.method protected getRoamingModeByPlmnCdma(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1506
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmn5M(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    return-object v0
.end method

.method protected getRoamingModeByPlmnLwg(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1510
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmn5M(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage, msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1452
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1454
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->triggerNoServiceWatchdog()V

    goto :goto_0

    .line 1457
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->retryLwgPlmnChanged()V

    goto :goto_0

    .line 1460
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->startNewSearchRound()V

    .line 1462
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->startNewSearchRound()V

    goto :goto_0

    .line 1463
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_2

    .line 1464
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->startNewSearchRound()V

    goto :goto_0

    .line 1465
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->startNewSearchRound()V

    goto :goto_0

    .line 1452
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected isInCriticalAreaSameWithCdmaRoamingMode(Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 4
    .param p1, "oi"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[LTE]isSameWithCdmaRatModeAndArea, oi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1667
    const-string/jumbo v1, " mCdmaPlmnForCriticalArea="

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1667
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1668
    const-string/jumbo v1, " mCdmaRoamingMode="

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1668
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-eq v0, v1, :cond_3

    .line 1670
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    const-string/jumbo v1, "455"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1670
    if-eqz v0, :cond_0

    .line 1672
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "455"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1670
    if-eqz v0, :cond_0

    .line 1675
    return v2

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmnLwg(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1677
    return v2

    .line 1678
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v0, v1, :cond_2

    .line 1679
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    .line 1680
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1679
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmnLwg(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1682
    return v2

    .line 1684
    :cond_2
    return v3

    .line 1687
    :cond_3
    return v3
.end method

.method protected isSimReady()Z
    .locals 4

    .prologue
    .line 1524
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " isSimReady, slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1525
    const-string/jumbo v3, " mLteDcPhoneProxy.getIccCard().getState()="

    .line 1524
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1526
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 1524
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 1528
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1529
    .local v0, "bSimReady":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSimReady, slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bSimReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1530
    return v0

    .line 1528
    .end local v0    # "bSimReady":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "bSimReady":Z
    goto :goto_0
.end method

.method protected onCdmaPlmnChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1833
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmnCdma(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1834
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    .line 1836
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->supportRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1839
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v0, v1, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->resumeNetwork()V

    .line 1843
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1844
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->cancelAvailableNetworks()V

    .line 1846
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1829
    :goto_0
    return-void

    .line 1847
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1848
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v0, v1, :cond_3

    .line 1850
    return-void

    .line 1852
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->resumeNetwork()V

    .line 1853
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    goto :goto_0
.end method

.method protected onLwgPlmnChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLwgPlmnChanged plmn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->supportRoaming()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1770
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmnLwg(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v1

    .line 1771
    .local v1, "targetMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    const/4 v0, 0x0

    .line 1773
    .local v0, "registerManually":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLwgPlmnChanged mCdmaRoamingMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1774
    const-string/jumbo v3, " targetMode"

    .line 1773
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1778
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v2, v3, :cond_4

    .line 1793
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 1794
    if-eqz v0, :cond_7

    .line 1797
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 1798
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->cancelAvailableNetworks()V

    .line 1800
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v2, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1802
    if-eqz v0, :cond_3

    .line 1805
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlmnToSelectNetworkManually:Ljava/lang/String;

    .line 1806
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->findAvailabeNetwork()V

    .line 1766
    .end local v0    # "registerManually":Z
    .end local v1    # "targetMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_3
    :goto_2
    return-void

    .line 1780
    .restart local v0    # "registerManually":Z
    .restart local v1    # "targetMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v2, v3, :cond_6

    .line 1781
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v1, v2, :cond_5

    .line 1782
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    const-string/jumbo v3, "455"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1783
    const-string/jumbo v2, "455"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1784
    :cond_5
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1785
    const/4 v0, 0x1

    goto :goto_0

    .line 1787
    :cond_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v2, v3, :cond_0

    .line 1788
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v1, v2, :cond_0

    .line 1789
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1790
    const/4 v0, 0x1

    goto :goto_0

    .line 1795
    :cond_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->resumeNetwork()V

    goto :goto_1

    .line 1809
    .end local v0    # "registerManually":Z
    .end local v1    # "targetMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_8
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->resumeNetwork()V

    .line 1810
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    goto :goto_2
.end method

.method protected onPreviewLwgPlmn(Ljava/lang/String;)Z
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewLwgPlmn plmn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->supportRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1817
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getRoamingModeByPlmnLwg(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    .line 1818
    .local v0, "targetMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewLwgPlmn mCdmaRoamingMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1819
    const-string/jumbo v2, " targetMode"

    .line 1818
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1820
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v1, v2, :cond_0

    .line 1821
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v0, v1, :cond_0

    .line 1822
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v1, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1823
    const/4 v1, 0x1

    return v1

    .line 1826
    .end local v0    # "targetMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected onRadioStateChanged()V
    .locals 3

    .prologue
    .line 1592
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    .line 1594
    .local v0, "roamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRadioStateChanged mIsLwgRadioOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIsLwgRadioOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1595
    const-string/jumbo v2, " mIsCdmaRadioOn: "

    .line 1594
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1595
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIsCdmaRadioOn:Z

    .line 1594
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1596
    const-string/jumbo v2, " roamingMode:"

    .line 1594
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1597
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualRadioOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1598
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1599
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    .line 1602
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->updateWatchdog()V

    .line 1591
    return-void
.end method

.method protected onSetIfEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1859
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->updateWatchdog()V

    .line 1858
    return-void
.end method

.method protected postponeNoServiceWatchdogIfNeeded()V
    .locals 11

    .prologue
    const/16 v10, 0x65

    .line 1639
    const-string/jumbo v1, "postponeNoServiceWatchdogIfNeeded"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1641
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->removeMessages(I)V

    .line 1642
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get8()I

    move-result v1

    int-to-long v4, v1

    .line 1643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mWatchdogStartTime:J

    sub-long/2addr v6, v8

    .line 1642
    sub-long v2, v4, v6

    .line 1644
    .local v2, "remainingTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1645
    const-wide/16 v2, 0x0

    .line 1647
    :cond_0
    long-to-int v1, v2

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get7()I

    move-result v4

    add-int v0, v1, v4

    .line 1648
    .local v0, "newDelay":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remainingTime = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " newDelay = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1650
    int-to-long v4, v0

    .line 1649
    invoke-virtual {p0, v1, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1638
    .end local v0    # "newDelay":I
    .end local v2    # "remainingTime":J
    :cond_1
    return-void
.end method

.method protected restartNoSerivceWatchdogIfNeeded()V
    .locals 1

    .prologue
    .line 1655
    const-string/jumbo v0, "restartNoSerivceWatchdogIfNeeded"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1656
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1657
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->stopNoServiceWatchdog()V

    .line 1658
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    if-lez v0, :cond_0

    .line 1659
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    .line 1661
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->startNoServiceWatchdog()V

    .line 1654
    :cond_1
    return-void
.end method

.method protected startNoServiceWatchdog()V
    .locals 4

    .prologue
    const v3, 0x1b7740

    const/16 v2, 0x65

    .line 1615
    const-string/jumbo v0, "startNoServiceWatchdog"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1617
    const-string/jumbo v0, "persist.sys.ct.ir.wd"

    .line 1618
    const v1, 0x493e0

    .line 1617
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-set2(I)I

    .line 1619
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get8()I

    move-result v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    mul-int/lit16 v1, v1, 0x7530

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-set2(I)I

    .line 1620
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get8()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 1621
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-set2(I)I

    .line 1623
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mWatchdogStartTime:J

    .line 1624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "really start watchdog sWatchdogDelayTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get8()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1625
    const-string/jumbo v1, " mContinousRetryCount = "

    .line 1624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1625
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    .line 1624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1626
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1627
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get8()I

    move-result v1

    int-to-long v2, v1

    .line 1626
    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1628
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    .line 1614
    :cond_1
    return-void
.end method

.method protected stopNoServiceWatchdog()V
    .locals 2

    .prologue
    .line 1633
    const-string/jumbo v0, "stopNoServiceWatchdog"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1634
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->removeMessages(I)V

    .line 1635
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mWatchdogStartTime:J

    .line 1632
    return-void
.end method

.method protected supportRoaming()Z
    .locals 4

    .prologue
    .line 1514
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " supportRoaming, slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1515
    const-string/jumbo v3, " mLteDcPhoneProxy.getIccCard().getState()="

    .line 1514
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1516
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 1514
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 1517
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;I)Z

    move-result v0

    .line 1518
    .local v0, "bSupportRoaming":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "supportRoaming, slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1519
    const-string/jumbo v2, " bSupportRoaming="

    .line 1518
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1520
    return v0
.end method

.method protected switchForNoService(Z)Z
    .locals 10
    .param p1, "forceSwitch"    # Z

    .prologue
    .line 1534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switchForNoService mLteServiceState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1535
    const-string/jumbo v7, " mCdmaServiceState: "

    .line 1534
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1535
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    .line 1534
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1536
    const/4 v5, 0x0

    .line 1537
    .local v5, "reallySwitchForNoService":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualRadioOff()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->supportRoaming()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isSimReady()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1539
    .local v0, "curTime":J
    iget-wide v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mNoServiceTimeStamp:J

    sub-long v2, v0, v6

    .line 1541
    .local v2, "duration":J
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->stopNoServiceWatchdog()V

    .line 1545
    iget-wide v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mNoServiceTimeStamp:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 1546
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get8()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 1548
    :cond_0
    const-string/jumbo v6, "switchForNoService realy siwtched"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1550
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->cancelToRetryLwgPlmnChanged()V

    .line 1551
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->cancelAvailableNetworks()V

    .line 1553
    const/16 v6, 0x67

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1554
    .local v4, "msg":Landroid/os/Message;
    const/16 v6, 0x68

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 1556
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v6, v7, :cond_3

    .line 1557
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-static {v6, v7, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    .line 1561
    :goto_0
    iput-wide v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mNoServiceTimeStamp:J

    .line 1563
    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1564
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaPlmnForCriticalArea:Ljava/lang/String;

    .line 1565
    const/4 v5, 0x1

    .line 1572
    .end local v0    # "curTime":J
    .end local v2    # "duration":J
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switchForNoService reallySwitchForNoService="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1574
    return v5

    .line 1545
    .restart local v0    # "curTime":J
    .restart local v2    # "duration":J
    :cond_2
    if-nez p1, :cond_0

    .line 1567
    const-string/jumbo v6, "switchForNoService delay switch"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1568
    const/16 v6, 0x65

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1569
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get8()I

    move-result v7

    int-to-long v8, v7

    sub-long/2addr v8, v2

    .line 1568
    invoke-virtual {p0, v6, v8, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1559
    .restart local v4    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-static {v6, v7, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected triggerNoServiceWatchdog()V
    .locals 2

    .prologue
    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "triggerNoServiceWatchdog mLteServiceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1607
    const-string/jumbo v1, " mCdmaServiceState: "

    .line 1606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1607
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    .line 1606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1608
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualServiceNotInService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->switchForNoService(Z)Z

    .line 1611
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->updateWatchdog()V

    .line 1605
    return-void
.end method

.method protected tryNetworkManually(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1693
    .local p1, "networkInfoArray":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v2, 0x0

    .line 1695
    .local v2, "matched":Z
    if-eqz p1, :cond_2

    .line 1696
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1698
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1699
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    .line 1700
    .local v3, "oi":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isInCriticalAreaSameWithCdmaRoamingMode(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isFailedNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1698
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1701
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[LTE]registerNetworkManually: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->logdForStrategy(Ljava/lang/String;)V

    .line 1702
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v4, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->registerNetworkManually(Lcom/android/internal/telephony/OperatorInfo;)V

    .line 1703
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    invoke-interface {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;->resumeNetwork()V

    .line 1704
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mFailedNetworkInfoArray:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1705
    const/4 v2, 0x1

    .line 1711
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "oi":Lcom/android/internal/telephony/OperatorInfo;
    :cond_2
    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mPlmnToSelectNetworkManually:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1712
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->waitForRetryLwgPlmnChanged()V

    .line 1691
    :cond_3
    return-void
.end method

.method protected updateWatchdog()V
    .locals 2

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mCdmaServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-eq v0, v1, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mLteServiceState:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-ne v0, v1, :cond_2

    .line 1581
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mContinousRetryCount:I

    .line 1584
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualRadioOff()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualServiceNotInService()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getIfEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1585
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->startNoServiceWatchdog()V

    .line 1577
    :goto_1
    return-void

    .line 1580
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->isDualRadioOff()Z

    move-result v0

    .line 1578
    if-eqz v0, :cond_1

    goto :goto_0

    .line 1587
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->stopNoServiceWatchdog()V

    goto :goto_1
.end method
