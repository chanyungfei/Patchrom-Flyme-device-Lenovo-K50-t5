.class public Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensor;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBase;
.source "BlpBloodPressureSensor.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BlpBloodPressureSensor"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;-><init>(Landroid/content/Context;)V

    .line 73
    const-string/jumbo v0, "BlpBloodPressureSensor"

    const-string/jumbo v1, "BlpBloodPressureSensor()"

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
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Bls;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Bls;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensor;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/service/Dis;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/service/Dis;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensor;->addService(Lcom/mediatek/bluetoothgatt/service/ServiceBase;)V

    .line 81
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BLS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensor;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 82
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensor;->cfgService(Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg;

    .line 83
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensor;->cfgCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 85
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensor;->cfgCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 87
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SYSTEM_ID:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensor;->cfgCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    move-result-object v0

    .line 88
    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;->setSupport(Z)Lcom/mediatek/bluetoothgatt/service/ServiceCfg$Entry;

    .line 78
    return-void
.end method

.method public notifyBlsBloodPressureMeasurement(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 100
    const-string/jumbo v0, "BlpBloodPressureSensor"

    const-string/jumbo v1, "notifyBlsBloodPressureMeasurement()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BLS:Ljava/util/UUID;

    .line 104
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BLOOD_PRESSURE_MEASUREMENT:Ljava/util/UUID;

    .line 105
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 103
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensor;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 98
    return-void
.end method

.method public notifyBlsIntermediateCuffPressure(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)V
    .locals 3
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 117
    const-string/jumbo v0, "BlpBloodPressureSensor"

    const-string/jumbo v1, "notifyBlsIntermediateCuffPressure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BLS:Ljava/util/UUID;

    .line 121
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_INTERMEDIATE_CUFF_PRESSURE:Ljava/util/UUID;

    .line 122
    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 120
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensor;->notify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 115
    return-void
.end method
