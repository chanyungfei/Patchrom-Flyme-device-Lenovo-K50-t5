.class public Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensor;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBase;
.source "HrpHeartRateSensor.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "HrpHeartRateSensor"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;-><init>(Landroid/content/Context;)V

    .line 73
    const-string/jumbo v0, "HrpHeartRateSensor"

    const-string/jumbo v1, "HrpHeartRateSensor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method


# virtual methods
.method protected loadServicesConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 79
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Hrs;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Hrs;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensor;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Dis;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Dis;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensor;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 81
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HRS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensor;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 82
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensor;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 83
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensor;->cfgCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 78
    return-void
.end method

.method public notifyHrsHeartRateMeasurement(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 96
    const-string/jumbo v0, "HrpHeartRateSensor"

    const-string/jumbo v1, "notifyHrsHeartRateMeasurement()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HRS:Ljava/util/UUID;

    .line 100
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HEART_RATE_MEASUREMENT:Ljava/util/UUID;

    .line 101
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 99
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensor;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 94
    return-void
.end method
