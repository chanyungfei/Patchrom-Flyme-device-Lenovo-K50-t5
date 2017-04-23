.class Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;
.super Ljava/lang/Object;
.source "SvlteIrController.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoamingModeChange(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 1
    .param p1, "preMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p2, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-set1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 132
    return-void
.end method

.method public onSvlteEctModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V
    .locals 3
    .param p1, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "newMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSvlteEctModeChangeDone() curMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " newMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    const-string/jumbo v1, "onSvlteEctModeChangeDone()  not CT 4G or 3G dual mode return"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 97
    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne p2, v0, :cond_1

    .line 100
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p1, v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->setIfEnabled(Z)V

    .line 93
    :cond_1
    return-void
.end method

.method public onSvlteRatModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V
    .locals 5
    .param p1, "preMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSvlteRatModeChangeDone() preMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " curMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    const-string/jumbo v1, "onSvlteRatModeChangeDone()  not CT 4G or 3G dual mode return"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 110
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-set0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Z)Z

    .line 115
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne p2, v0, :cond_3

    .line 116
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p1, v0, :cond_3

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->setIfEnabled(Z)V

    .line 121
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p2, v0, :cond_2

    .line 122
    const-string/jumbo v0, "ro.mtk_c2k_om_nw_sel_type"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setIfEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setIfEnabled(Z)V

    .line 106
    :goto_1
    return-void

    .line 117
    :cond_3
    const-string/jumbo v0, "ro.mtk_c2k_om_nw_sel_type"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setIfEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setIfEnabled(Z)V

    goto :goto_1
.end method

.method public onSvlteRatModeChangeStarted(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V
    .locals 5
    .param p1, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "newMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSvlteRatModeChangeStarted() curMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " newMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    const-string/jumbo v1, "onSvlteRatModeChangeStarted() not CT 4G or 3G dual mode return"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 65
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p1, v0, :cond_4

    .line 68
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne p2, v0, :cond_4

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->isCt3gCardType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->setIfEnabled(Z)V

    .line 77
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p2, v0, :cond_2

    .line 78
    const-string/jumbo v0, "ro.mtk_c2k_om_nw_sel_type"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setIfEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setIfEnabled(Z)V

    .line 86
    :goto_1
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p1, v0, :cond_3

    .line 87
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne p2, v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-set0(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Z)Z

    .line 61
    :cond_3
    return-void

    .line 69
    :cond_4
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne p1, v0, :cond_1

    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 82
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get2(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setIfEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$CdmaController;->setIfEnabled(Z)V

    goto :goto_1
.end method
