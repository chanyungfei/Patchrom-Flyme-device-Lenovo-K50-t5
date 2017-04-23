.class public Lcom/mediatek/bluetoothgatt/profile/HtpThermometer;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBase;
.source "HtpThermometer.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "HtpThermometer"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;-><init>(Landroid/content/Context;)V

    .line 73
    const-string/jumbo v0, "HtpThermometer"

    const-string/jumbo v1, "HtpThermometer()"

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
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Hts;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Hts;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/HtpThermometer;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Dis;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Dis;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/HtpThermometer;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 81
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/HtpThermometer;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 82
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/HtpThermometer;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 83
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpThermometer;->cfgCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 85
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpThermometer;->cfgCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 87
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SYSTEM_ID:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/HtpThermometer;->cfgCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 78
    return-void
.end method

.method public notifyHtsIntermediateTemperature(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 117
    const-string/jumbo v0, "HtpThermometer"

    const-string/jumbo v1, "notifyHtsIntermediateTemperature()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    .line 121
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_INTERMEDIATE_TEMPERATURE:Ljava/util/UUID;

    .line 122
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 120
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/HtpThermometer;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 115
    return-void
.end method

.method public notifyHtsMeasurementInterval(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 134
    const-string/jumbo v0, "HtpThermometer"

    const-string/jumbo v1, "notifyHtsMeasurementInterval()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    .line 138
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MEASUREMENT_INTERVAL:Ljava/util/UUID;

    .line 139
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 137
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/HtpThermometer;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 132
    return-void
.end method

.method public notifyHtsTemperatureMeasurement(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 100
    const-string/jumbo v0, "HtpThermometer"

    const-string/jumbo v1, "notifyHtsTemperatureMeasurement()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    .line 104
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TEMPERATURE_MEASUREMENT:Ljava/util/UUID;

    .line 105
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 103
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/HtpThermometer;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 98
    return-void
.end method
