.class public Lcom/mediatek/bluetoothgatt/service/Hts;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Hts.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "1809"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 65
    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Hts;->GATT_UUID:Ljava/util/UUID;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method addIntermediateTemperature()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 132
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_INTERMEDIATE_TEMPERATURE:Ljava/util/UUID;

    .line 135
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/IntermediateTemperature;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/IntermediateTemperature;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/IntermediateTemperature;->getValue()[B

    move-result-object v5

    .line 133
    const/16 v3, 0x10

    move-object v0, p0

    move v4, v1

    .line 130
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Hts;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 140
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 139
    const/4 v1, 0x1

    .line 141
    const/16 v2, 0x11

    .line 138
    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Hts;->addDescriptor(ZLjava/util/UUID;I)V

    .line 128
    return-void
.end method

.method addMeasurementInterval()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 153
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MEASUREMENT_INTERVAL:Ljava/util/UUID;

    .line 156
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;->getValue()[B

    move-result-object v5

    .line 154
    const/4 v3, 0x2

    move-object v0, p0

    .line 151
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Hts;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 161
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 162
    const/16 v2, 0x11

    .line 159
    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Hts;->addDescriptor(ZLjava/util/UUID;I)V

    .line 168
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_VALID_RANGE:Ljava/util/UUID;

    .line 166
    invoke-virtual {p0, v1, v0, v4}, Lcom/mediatek/bluetoothgatt/service/Hts;->addDescriptor(ZLjava/util/UUID;I)V

    .line 149
    return-void
.end method

.method addTemperatureMeasurement()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 96
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TEMPERATURE_MEASUREMENT:Ljava/util/UUID;

    .line 99
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;->getValue()[B

    move-result-object v5

    .line 97
    const/16 v3, 0x20

    .line 98
    const/4 v4, 0x0

    move-object v0, p0

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Hts;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 104
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 105
    const/16 v2, 0x11

    .line 102
    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Hts;->addDescriptor(ZLjava/util/UUID;I)V

    .line 92
    return-void
.end method

.method addTemperatureType()V
    .locals 6

    .prologue
    .line 117
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TEMPERATURE_TYPE:Ljava/util/UUID;

    .line 120
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->getValue()[B

    move-result-object v5

    .line 116
    const/4 v1, 0x0

    .line 118
    const/4 v3, 0x2

    .line 119
    const/4 v4, 0x1

    move-object v0, p0

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Hts;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 113
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Hts;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Hts;->addTemperatureMeasurement()V

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Hts;->addTemperatureType()V

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Hts;->addIntermediateTemperature()V

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Hts;->addMeasurementInterval()V

    .line 82
    return-void
.end method
