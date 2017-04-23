.class public Lcom/mediatek/datashaping/GateOpenState;
.super Lcom/mediatek/datashaping/DataShapingState;
.source "GateOpenState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GateOpenState"


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

.method private turnStateFromOpenToClose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingUtils;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/datashaping/DataShapingUtils;->setClosingDelayForMusic(Z)V

    .line 89
    const-string/jumbo v0, "GateOpenState"

    const-string/jumbo v1, "[turnStateFromOpenToClose] music active, so still in open state!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingUtils;->getClosingDelayForMusic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/datashaping/DataShapingUtils;->setClosingDelayStartTime(J)V

    .line 96
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, v4}, Lcom/mediatek/datashaping/DataShapingUtils;->setClosingDelayForMusic(Z)V

    .line 97
    const-string/jumbo v0, "GateOpenState"

    const-string/jumbo v1, "[turnStateFromOpenToClose] mIsClosingDelayForMusic is true, so still in open state!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 103
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v2}, Lcom/mediatek/datashaping/DataShapingUtils;->getClosingDelayStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 104
    const-wide/16 v2, 0x1388

    .line 103
    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 105
    const-string/jumbo v0, "GateOpenState"

    const-string/jumbo v1, "[turnStateFromOpenToClose] close delay < buffer time, so still in open state!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/datashaping/DataShapingUtils;->setClosingDelayStartTime(J)V

    .line 112
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->registerListener()Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    const-string/jumbo v0, "GateOpenState"

    const-string/jumbo v1, "[turnStateFromOpenToClose] registerListener Failed so still in open state!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    .line 118
    const v1, 0x927c0

    .line 117
    invoke-virtual {v0, v4, v1}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteUplinkDataTransfer(ZI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->startCloseExpiredAlarm()V

    .line 85
    :goto_0
    return-void

    .line 123
    :cond_4
    const-string/jumbo v0, "GateOpenState"

    const-string/jumbo v1, "[turnStateFromOpenToClose] fail!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private turnStateFromOpenToOpenLocked()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 81
    return-void
.end method


# virtual methods
.method public onAPPStandbyStateChanged(Z)V
    .locals 3
    .param p1, "isParoleOn"    # Z

    .prologue
    .line 74
    const-string/jumbo v0, "GateOpenState"

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

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenState;->turnStateFromOpenToOpenLocked()V

    .line 73
    :cond_0
    return-void
.end method

.method public onBTStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isBTStateOn(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenState;->turnStateFromOpenToOpenLocked()V

    .line 58
    :cond_0
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 67
    const-string/jumbo v0, "GateOpenState"

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

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenState;->turnStateFromOpenToOpenLocked()V

    .line 66
    :cond_0
    return-void
.end method

.method public onLteAccessStratumStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isLteAccessStratumConnected(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenState;->turnStateFromOpenToClose()V

    .line 16
    :cond_0
    return-void
.end method

.method public onNetworkTypeChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isNetworkTypeLte(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenState;->turnStateFromOpenToOpenLocked()V

    .line 23
    :cond_0
    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenState;->turnStateFromOpenToOpenLocked()V

    .line 37
    :cond_0
    return-void
.end method

.method public onSharedDefaultApnStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isSharedDefaultApnEstablished(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenState;->turnStateFromOpenToOpenLocked()V

    .line 30
    :cond_0
    return-void
.end method

.method public onUsbConnectionChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isUsbConnected(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenState;->turnStateFromOpenToOpenLocked()V

    .line 51
    :cond_0
    return-void
.end method

.method public onWifiTetherStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/datashaping/GateOpenState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->isWifiTetheringEnabled(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/mediatek/datashaping/GateOpenState;->turnStateFromOpenToOpenLocked()V

    .line 44
    :cond_0
    return-void
.end method
