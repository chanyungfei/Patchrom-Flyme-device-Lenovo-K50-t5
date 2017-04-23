.class abstract Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;
.super Ljava/lang/Object;
.source "SvlteRoamingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "IrSwitchingController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController$1;
    }
.end annotation


# static fields
.field private static final MCC_CN_MACCO:Ljava/lang/String; = "455"

.field private static final MCC_CN_MAINLAND:Ljava/lang/String; = "460"

.field private static final MCC_JP:Ljava/lang/String; = "440"

.field private static final MCC_KR:Ljava/lang/String; = "450"

.field private static final TAG:Ljava/lang/String; = "IrSwitchingController"


# instance fields
.field protected mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field protected mPhoneProxyIndex:I

.field private mRatModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;I)V
    .locals 1
    .param p1, "lteDcPhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .param p2, "phoneProxyIndex"    # I

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;)V

    .line 209
    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->mRatModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 117
    const-string/jumbo v0, "constructor"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->logdForController(Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 119
    iput p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->mPhoneProxyIndex:I

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->init()V

    .line 116
    return-void
.end method

.method private getRoamingModeByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 3
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 186
    .local v0, "roamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    if-eqz p1, :cond_3

    .line 187
    const-string/jumbo v1, "ro.mtk_svlte_lcg_support"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const-string/jumbo v1, "checking JPKR roaming mode"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->logdForController(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v1, "440"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "450"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_JPKR_CDMA:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 194
    :cond_1
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v0, v1, :cond_3

    .line 195
    const-string/jumbo v1, "checking normal roaming mode"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->logdForController(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v1, "460"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "455"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    :cond_2
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 204
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRoamingModeByMcc, mcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " roamingMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->logdForController(Ljava/lang/String;)V

    .line 206
    return-object v0

    .line 199
    :cond_4
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    goto :goto_0
.end method


# virtual methods
.method protected init()V
    .locals 2

    .prologue
    .line 143
    const-string/jumbo v0, "init"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->logdForController(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->mRatModeChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 144
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->registerSvlteRatModeChangedListener(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;)V

    .line 142
    return-void
.end method

.method protected logdForController(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IrSwitchingController "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->-wrap0(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method protected processEgmssResult(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    .line 153
    check-cast v0, Landroid/os/AsyncResult;

    .line 154
    .local v0, "asyncRet":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 155
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 156
    .local v2, "urcResults":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processEgmssResult, urcResults="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->logdForController(Ljava/lang/String;)V

    .line 157
    if-eqz v2, :cond_0

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processEgmssResult, urcResults.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    array-length v4, v2

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->logdForController(Ljava/lang/String;)V

    .line 160
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->getRoamingModeByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v1

    .line 162
    .local v1, "targetMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processEgmssResult, GMSS report code urcResults[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 163
    const/4 v4, 0x0

    aget v4, v2, v4

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 164
    const-string/jumbo v4, ", urcResult[1]="

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 164
    aget v4, v2, v6

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 165
    const-string/jumbo v4, ", urcResults[2]="

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 165
    const/4 v4, 0x2

    aget v4, v2, v4

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 166
    const-string/jumbo v4, ", targetMode="

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->logdForController(Ljava/lang/String;)V

    .line 167
    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v1, v3, :cond_0

    .line 168
    invoke-virtual {p0, v1, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)V

    .line 152
    .end local v1    # "targetMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .end local v2    # "urcResults":[I
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processEgmssResult, asyncRet.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 174
    const-string/jumbo v4, " asyncRet.result="

    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 174
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->logdForController(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract registerGmss()V
.end method

.method protected setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)V
    .locals 1
    .param p1, "targetMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    .line 181
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteIrController()Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->roamingModeChanged(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 178
    return-void
.end method

.method protected abstract unregisterGmss()V
.end method
