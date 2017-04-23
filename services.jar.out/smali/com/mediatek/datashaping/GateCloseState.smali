.class public Lcom/mediatek/datashaping/GateCloseState;
.super Lcom/mediatek/datashaping/DataShapingState;
.source "GateCloseState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GateCloseState"


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

.method private cancelCloseTimer()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->cancelCloseExpiredAlarm()V

    .line 127
    return-void
.end method

.method private turnStateFromCloseToOpen()V
    .locals 3

    .prologue
    .line 117
    const-string/jumbo v0, "GateCloseState"

    const-string/jumbo v1, "[turnStateFromCloseToOpen]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    const/4 v1, 0x1

    .line 119
    const v2, 0x927c0

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteUplinkDataTransfer(ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 124
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->cancelCloseTimer()V

    .line 116
    return-void

    .line 122
    :cond_0
    const-string/jumbo v0, "GateCloseState"

    const-string/jumbo v1, "[turnStateFromCloseToOpen] fail!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private turnStateFromCloseToOpenLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 105
    const-string/jumbo v0, "GateCloseState"

    const-string/jumbo v1, "[turnStateFromCloseToOpenLocked]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    .line 107
    const v1, 0x927c0

    .line 106
    invoke-virtual {v0, v2, v1}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteUplinkDataTransfer(ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-virtual {v0, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 113
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->cancelCloseTimer()V

    .line 104
    return-void

    .line 111
    :cond_0
    const-string/jumbo v0, "GateCloseState"

    const-string/jumbo v1, "[turnStateFromCloseToOpenLocked] fail!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onAPPStandbyStateChanged(Z)V
    .locals 3
    .param p1, "isParoleOn"    # Z

    .prologue
    .line 98
    const-string/jumbo v0, "GateCloseState"

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

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 97
    :cond_0
    return-void
.end method

.method public onAlarmManagerTrigger()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpen()V

    .line 35
    return-void
.end method

.method public onBTStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isBTStateOn(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 82
    :cond_0
    return-void
.end method

.method public onCloseTimeExpired()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpen()V

    .line 42
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 91
    const-string/jumbo v0, "GateCloseState"

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

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 90
    :cond_0
    return-void
.end method

.method public onLteAccessStratumStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isLteAccessStratumConnected(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpen()V

    .line 16
    :cond_0
    return-void
.end method

.method public onMediaButtonTrigger()V
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "GateCloseState"

    const-string/jumbo v1, "[onMediaButtonTrigger]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpen()V

    .line 27
    return-void
.end method

.method public onNetworkTypeChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isNetworkTypeLte(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 47
    :cond_0
    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 61
    :cond_0
    return-void
.end method

.method public onSharedDefaultApnStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isSharedDefaultApnEstablished(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 54
    :cond_0
    return-void
.end method

.method public onUsbConnectionChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isUsbConnected(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 75
    :cond_0
    return-void
.end method

.method public onWifiTetherStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/datashaping/GateCloseState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isWifiTetheringEnabled(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateCloseState;->turnStateFromCloseToOpenLocked()V

    .line 68
    :cond_0
    return-void
.end method
