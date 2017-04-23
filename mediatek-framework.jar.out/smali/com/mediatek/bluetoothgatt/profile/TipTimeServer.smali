.class public Lcom/mediatek/bluetoothgatt/profile/TipTimeServer;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBase;
.source "TipTimeServer.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "TipTimeServer"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;-><init>(Landroid/content/Context;)V

    .line 74
    const-string/jumbo v0, "TipTimeServer"

    const-string/jumbo v1, "TipTimeServer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method


# virtual methods
.method protected loadServicesConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Cts;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Cts;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServer;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 81
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Ndcs;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Ndcs;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServer;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 82
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Rtus;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Rtus;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServer;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 83
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServer;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 84
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_NDCS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServer;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 85
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RTUS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServer;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 79
    return-void
.end method

.method public notifyCtsCurrentTime(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 97
    const-string/jumbo v0, "TipTimeServer"

    const-string/jumbo v1, "notifyCtsCurrentTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    .line 101
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

    .line 102
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 100
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServer;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 95
    return-void
.end method
