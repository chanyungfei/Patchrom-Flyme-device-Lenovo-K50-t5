.class public Lcom/mediatek/datashaping/GateOpenLockedState;
.super Lcom/mediatek/datashaping/DataShapingState;
.source "GateOpenLockedState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GateOpenLockedState"


# direct methods
.method public constructor <init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "dataShapingServiceImpl"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/mediatek/datashaping/DataShapingState;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method private setStateFromLockedToOpen()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingUtils;->canTurnFromLockedToOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    move-result v0

    .line 74
    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 73
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string/jumbo v0, "GateOpenLockedState"

    const-string/jumbo v1, "Still stay in Open Locked state!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onAPPStandbyStateChanged(Z)V
    .locals 3
    .param p1, "isParoleOn"    # Z

    .prologue
    .line 67
    const-string/jumbo v0, "GateOpenLockedState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[onAPPStandbyStateChanged] APPStandby parole state is ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-nez p1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 66
    :cond_0
    return-void
.end method

.method public onBTStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isBTStateOn(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 51
    :cond_0
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 60
    const-string/jumbo v0, "GateOpenLockedState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[onDeviceIdleStateChanged] DeviceIdle enable is ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-nez p1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 59
    :cond_0
    return-void
.end method

.method public onNetworkTypeChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isNetworkTypeLte(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 16
    :cond_0
    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 30
    :cond_0
    return-void
.end method

.method public onSharedDefaultApnStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isSharedDefaultApnEstablished(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 23
    :cond_0
    return-void
.end method

.method public onUsbConnectionChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isUsbConnected(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 44
    :cond_0
    return-void
.end method

.method public onWifiTetherStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenLockedState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isWifiTetheringEnabled(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenLockedState;->setStateFromLockedToOpen()V

    .line 37
    :cond_0
    return-void
.end method
