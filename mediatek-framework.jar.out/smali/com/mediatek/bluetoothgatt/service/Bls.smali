.class public Lcom/mediatek/bluetoothgatt/service/Bls;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Bls.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "1810"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 64
    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Bls;->GATT_UUID:Ljava/util/UUID;

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
.method addBloodPressureFeature()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 136
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BLOOD_PRESSURE_FEATURE:Ljava/util/UUID;

    .line 139
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureFeature;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureFeature;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureFeature;->getValue()[B

    move-result-object v5

    .line 137
    const/4 v3, 0x2

    move-object v0, p0

    move v4, v1

    .line 134
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Bls;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 132
    return-void
.end method

.method addBloodPressureMeasurement()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 94
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BLOOD_PRESSURE_MEASUREMENT:Ljava/util/UUID;

    .line 97
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureMeasurement;->getValue()[B

    move-result-object v5

    .line 95
    const/16 v3, 0x20

    .line 96
    const/4 v4, 0x0

    move-object v0, p0

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Bls;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 102
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 103
    const/16 v2, 0x11

    .line 100
    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Bls;->addDescriptor(ZLjava/util/UUID;I)V

    .line 90
    return-void
.end method

.method addIntermediateCuffPressure()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 115
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_INTERMEDIATE_CUFF_PRESSURE:Ljava/util/UUID;

    .line 118
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/IntermediateCuffPressure;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/IntermediateCuffPressure;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/IntermediateCuffPressure;->getValue()[B

    move-result-object v5

    .line 116
    const/16 v3, 0x10

    move-object v0, p0

    move v4, v1

    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Bls;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 123
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 122
    const/4 v1, 0x1

    .line 124
    const/16 v2, 0x11

    .line 121
    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Bls;->addDescriptor(ZLjava/util/UUID;I)V

    .line 111
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Bls;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Bls;->addBloodPressureMeasurement()V

    .line 83
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Bls;->addIntermediateCuffPressure()V

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Bls;->addBloodPressureFeature()V

    .line 81
    return-void
.end method
