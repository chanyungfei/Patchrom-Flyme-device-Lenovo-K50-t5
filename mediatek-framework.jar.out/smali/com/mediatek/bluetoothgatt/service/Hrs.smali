.class public Lcom/mediatek/bluetoothgatt/service/Hrs;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Hrs.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "180D"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 64
    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Hrs;->GATT_UUID:Ljava/util/UUID;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method addBodySensorLocation()V
    .locals 6

    .prologue
    .line 115
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BODY_SENSOR_LOCATION:Ljava/util/UUID;

    .line 118
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->getValue()[B

    move-result-object v5

    .line 114
    const/4 v1, 0x0

    .line 116
    const/4 v3, 0x2

    .line 117
    const/4 v4, 0x1

    move-object v0, p0

    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Hrs;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 111
    return-void
.end method

.method addHeartRateControlPoint()V
    .locals 6

    .prologue
    .line 130
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HEART_RATE_CONTROL_POINT:Ljava/util/UUID;

    .line 133
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->getValue()[B

    move-result-object v5

    .line 129
    const/4 v1, 0x0

    .line 131
    const/16 v3, 0x8

    .line 132
    const/16 v4, 0x10

    move-object v0, p0

    .line 128
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Hrs;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 126
    return-void
.end method

.method addHeartRateMeasurement()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 94
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HEART_RATE_MEASUREMENT:Ljava/util/UUID;

    .line 97
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;->getValue()[B

    move-result-object v5

    .line 95
    const/16 v3, 0x10

    .line 96
    const/4 v4, 0x0

    move-object v0, p0

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Hrs;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 102
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 103
    const/16 v2, 0x11

    .line 100
    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Hrs;->addDescriptor(ZLjava/util/UUID;I)V

    .line 90
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Hrs;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Hrs;->addHeartRateMeasurement()V

    .line 83
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Hrs;->addBodySensorLocation()V

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Hrs;->addHeartRateControlPoint()V

    .line 81
    return-void
.end method
