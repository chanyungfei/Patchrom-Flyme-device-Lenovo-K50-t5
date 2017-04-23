.class public abstract Lcom/mediatek/datashaping/DataShapingState;
.super Ljava/lang/Object;
.source "DataShapingState.java"


# instance fields
.field public mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

.field public mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;


# direct methods
.method public constructor <init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V
    .locals 1
    .param p1, "dataShapingServiceImpl"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingState;->mDataShapingManager:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .line 13
    invoke-static {p2}, Lcom/mediatek/datashaping/DataShapingUtils;->getInstance(Landroid/content/Context;)Lcom/mediatek/datashaping/DataShapingUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingState;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    .line 11
    return-void
.end method


# virtual methods
.method public onAPPStandbyStateChanged(Z)V
    .locals 0
    .param p1, "isParoleOn"    # Z

    .prologue
    .line 57
    return-void
.end method

.method public onAlarmManagerTrigger()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public onBTStateChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    return-void
.end method

.method public onCloseTimeExpired()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 54
    return-void
.end method

.method public onLteAccessStratumStateChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    return-void
.end method

.method public onMediaButtonTrigger()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onNetworkTypeChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .prologue
    .line 28
    return-void
.end method

.method public onSharedDefaultApnStateChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    return-void
.end method

.method public onUsbConnectionChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    return-void
.end method

.method public onUsbTetherStateChanged()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onWifiTetherStateChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    return-void
.end method
