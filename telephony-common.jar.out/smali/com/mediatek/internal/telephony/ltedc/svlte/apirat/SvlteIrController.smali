.class public Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
.super Ljava/lang/Object;
.source "SvlteIrController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$EngineerModeHandler;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy4M;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$StrategyOM;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;
    }
.end annotation


# static fields
.field private static final FIND_NETWORK_DELAY_TIME:I = 0x7530

.field private static final NO_SEERVICE_WATCHDOG_DELAY_TIME:I = 0x493e0

.field private static final NO_SERVICE_DELAY_TIME:I = 0x3a98

.field private static final SWITCH_RESUME_DELAY_TIME:I = 0x4e20

.field private static sFindNetworkDelayTime:I

.field private static sNoServiceDelayTime:I

.field private static sSwitchModeOrResumeDelayTime:I

.field private static sWatchdogDelayTime:I


# instance fields
.field private mActivePhoneId:I

.field private mCdmaControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

.field private mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mIsEnabled:Z

.field private mIsSwitchingTo3GMode:Z

.field private mLteControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

.field private mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field private mLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field private mModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

.field private mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field private mSwitchStrategy:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;


# direct methods
.method static synthetic -get0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mActivePhoneId:I

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mCdmaControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    return-object v0
.end method

.method static synthetic -get4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mSwitchStrategy:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sFindNetworkDelayTime:I

    return v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sNoServiceDelayTime:I

    return v0
.end method

.method static synthetic -get7()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sSwitchModeOrResumeDelayTime:I

    return v0
.end method

.method static synthetic -get8()I
    .locals 1

    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sWatchdogDelayTime:I

    return v0
.end method

.method static synthetic -set0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mIsSwitchingTo3GMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object p1
.end method

.method static synthetic -set2(I)I
    .locals 0

    sput p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sWatchdogDelayTime:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getIfEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->isCtDualModeSimCard(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z
    .locals 1
    .param p1, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->setRoaming(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x3a98

    sput v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sNoServiceDelayTime:I

    .line 46
    const v0, 0x493e0

    sput v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sWatchdogDelayTime:I

    .line 47
    const/16 v0, 0x4e20

    sput v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sSwitchModeOrResumeDelayTime:I

    .line 48
    const/16 v0, 0x7530

    sput v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sFindNetworkDelayTime:I

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V
    .locals 7
    .param p1, "lteDcPhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mIsEnabled:Z

    .line 43
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mIsSwitchingTo3GMode:Z

    .line 59
    new-instance v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 202
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$EngineerModeHandler;

    invoke-direct {v0, p0, p1, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$EngineerModeHandler;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$EngineerModeHandler;)V

    .line 204
    .local v0, "emh":Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$EngineerModeHandler;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$EngineerModeHandler;->processedEngineerMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    return-void

    .line 208
    :cond_0
    const-string/jumbo v2, "persist.sys.ct.ir.switcher"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    return-void

    .line 212
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " constructor, lteDcPhoneProxy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 213
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 215
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mActivePhoneId:I

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " constructor, mActivePhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mActivePhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 219
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 220
    new-instance v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mActivePhoneId:I

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/android/internal/telephony/PhoneBase;I)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    .line 221
    new-instance v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mActivePhoneId:I

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/android/internal/telephony/PhoneBase;I)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mCdmaControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    .line 224
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v2

    .line 225
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 224
    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->registerSvlteRatModeChangedListener(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;)V

    .line 227
    const-string/jumbo v2, "persist.sys.ct.ir.mode"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "mode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " constructor, mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v2, "persist.sys.ct.ir.nsd"

    .line 233
    const/16 v3, 0x3a98

    .line 232
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sNoServiceDelayTime:I

    .line 235
    const-string/jumbo v2, "persist.sys.ct.ir.rnsd"

    .line 236
    const/16 v3, 0x4e20

    .line 235
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sSwitchModeOrResumeDelayTime:I

    .line 238
    const-string/jumbo v2, "persist.sys.ct.ir.fnd"

    .line 239
    const/16 v3, 0x7530

    .line 238
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sFindNetworkDelayTime:I

    .line 241
    const-string/jumbo v2, "ro.mtk_c2k_om_nw_sel_type"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 242
    const-string/jumbo v2, " constructor, StrategyOM"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 243
    new-instance v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$StrategyOM;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mCdmaControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$StrategyOM;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mSwitchStrategy:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;

    .line 244
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->setIfEnabled(Z)V

    .line 265
    :goto_0
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 200
    return-void

    .line 246
    :cond_2
    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    const-string/jumbo v2, "ro.mtk_svlte_lcg_support"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    const-string/jumbo v2, " constructor, Strategy4M"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 249
    new-instance v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy4M;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mCdmaControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy4M;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mSwitchStrategy:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;

    goto :goto_0

    .line 251
    :cond_3
    const-string/jumbo v2, " constructor, Strategy5M"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 252
    new-instance v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mCdmaControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mSwitchStrategy:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;

    goto :goto_0

    .line 254
    :cond_4
    const-string/jumbo v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 255
    const-string/jumbo v2, " constructor, Strategy5M"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 256
    new-instance v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mCdmaControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mSwitchStrategy:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;

    goto :goto_0

    .line 257
    :cond_5
    const-string/jumbo v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 258
    const-string/jumbo v2, " constructor, Strategy4M"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 259
    new-instance v2, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy4M;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mCdmaControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy4M;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mSwitchStrategy:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;

    goto :goto_0

    .line 261
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "SvlteIrController() no Strategy!!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private dispose()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->dispose()V

    .line 315
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mCdmaControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->dispose()V

    .line 313
    return-void
.end method

.method private getIfEnabled()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mIsEnabled:Z

    return v0
.end method

.method private getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getRoamingMode, mRoamingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method private isCtDualModeSimCard(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtDualModeSimCard(I)Z

    move-result v0

    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[IRC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mActivePhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    return-void
.end method

.method private setRoaming(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z
    .locals 3
    .param p1, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRoaming, roamingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    const-string/jumbo v2, " mIsSwitchingTo3GMode = "

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mIsSwitchingTo3GMode:Z

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mIsEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mIsSwitchingTo3GMode:Z

    if-eqz v1, :cond_2

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    move-result v0

    .line 183
    .local v0, "ret":Z
    if-eqz v0, :cond_3

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRoaming, roamingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 185
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 190
    .end local v0    # "ret":Z
    :cond_1
    :goto_0
    return v0

    .line 176
    .local v0, "ret":Z
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRoaming, roamingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", in disabled mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 178
    if-eqz p2, :cond_1

    .line 179
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 187
    .local v0, "ret":Z
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRoaming, roamingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",return false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public roamingModeChanged(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 2
    .param p1, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " roamingModeChanged, roamingMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 305
    const-string/jumbo v1, " mIsEnabled = "

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 305
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mIsEnabled:Z

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 307
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 308
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->startNewSearchRound()V

    .line 309
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mCdmaControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->startNewSearchRound()V

    .line 303
    :cond_0
    return-void
.end method

.method public setEnableIr(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->setIfEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mLteControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setIfEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mCdmaControllerObj:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setIfEnabled(Z)V

    .line 288
    return-void
.end method

.method public setIfEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " setIfEnabled, isEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V

    .line 279
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mIsEnabled:Z

    .line 280
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mSwitchStrategy:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->setIfEnabled(Z)V

    .line 277
    return-void
.end method
