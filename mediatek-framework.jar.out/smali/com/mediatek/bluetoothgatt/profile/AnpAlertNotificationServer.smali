.class public Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationServer;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBase;
.source "AnpAlertNotificationServer.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AnpAlertNotificationServer"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;-><init>(Landroid/content/Context;)V

    .line 72
    const-string/jumbo v0, "AnpAlertNotificationServer"

    const-string/jumbo v1, "AnpAlertNotificationServer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method


# virtual methods
.method protected loadServicesConfig()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Ans;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Ans;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationServer;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 79
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_ANS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationServer;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 77
    return-void
.end method

.method public notifyAnsNewAlert(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 91
    const-string/jumbo v0, "AnpAlertNotificationServer"

    const-string/jumbo v1, "notifyAnsNewAlert()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_ANS:Ljava/util/UUID;

    .line 95
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_NEW_ALERT:Ljava/util/UUID;

    .line 96
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 94
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationServer;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 89
    return-void
.end method

.method public notifyAnsUnreadAlertStatus(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 108
    const-string/jumbo v0, "AnpAlertNotificationServer"

    const-string/jumbo v1, "notifyAnsUnreadAlertStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_ANS:Ljava/util/UUID;

    .line 112
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_UNREAD_ALERT_STATUS:Ljava/util/UUID;

    .line 113
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 111
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationServer;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 106
    return-void
.end method
