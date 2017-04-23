.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController$1;
.super Ljava/lang/Object;
.source "SvlteRoamingController.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoamingModeChange(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 0
    .param p1, "preMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p2, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 241
    return-void
.end method

.method public onSvlteEctModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V
    .locals 0
    .param p1, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "newMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    .line 226
    return-void
.end method

.method public onSvlteRatModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V
    .locals 3
    .param p1, "preMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    .line 232
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne p1, v0, :cond_0

    .line 233
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p2, v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSvlteRatModeChangeDone, preMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    const-string/jumbo v2, " curMode="

    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->logdForController(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->registerGmss()V

    .line 231
    :cond_0
    return-void
.end method

.method public onSvlteRatModeChangeStarted(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V
    .locals 3
    .param p1, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "newMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    .line 213
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p1, v0, :cond_1

    .line 214
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne p2, v0, :cond_1

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSvlteRatModeChangeStarted, curMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string/jumbo v2, " newMode="

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->logdForController(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController$1;->this$1:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;->unregisterGmss()V

    .line 212
    :cond_0
    return-void

    .line 215
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne p1, v0, :cond_0

    .line 216
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p2, v0, :cond_0

    goto :goto_0
.end method
