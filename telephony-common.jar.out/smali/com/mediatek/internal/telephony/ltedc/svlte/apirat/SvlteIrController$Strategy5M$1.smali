.class Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;
.super Ljava/lang/Object;
.source "SvlteIrController.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoamingModeChange(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 1
    .param p1, "preMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p2, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-set1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1428
    return-void
.end method

.method public onSvlteEctModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V
    .locals 0
    .param p1, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "newMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    .line 1406
    return-void
.end method

.method public onSvlteRatModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V
    .locals 3
    .param p1, "preMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSvlteRatModeChangeDone() preMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1413
    const-string/jumbo v2, " curMode"

    .line 1412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->getIfEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->-wrap0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1411
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->-wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;)Z

    move-result v0

    .line 1414
    if-eqz v0, :cond_0

    .line 1417
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne p1, v0, :cond_0

    .line 1418
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p2, v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v0, v1, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    const-string/jumbo v1, "force to switch to Home mode"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->switchForNoService(Z)Z

    .line 1423
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->updateWatchdog()V

    goto :goto_0
.end method

.method public onSvlteRatModeChangeStarted(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V
    .locals 3
    .param p1, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "newMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSvlteRatModeChangeStarted() curMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1402
    const-string/jumbo v2, " newMode"

    .line 1401
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;->-wrap3(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy5M;Ljava/lang/String;)V

    .line 1400
    return-void
.end method
