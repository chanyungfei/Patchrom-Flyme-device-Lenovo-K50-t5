.class public Lcom/mediatek/bluetoothgatt/service/Dis;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Dis.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "180A"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 69
    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Dis;->GATT_UUID:Ljava/util/UUID;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method addFirmwareRevisionString()V
    .locals 6

    .prologue
    .line 165
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    .line 168
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;->getValue()[B

    move-result-object v5

    .line 164
    const/4 v1, 0x0

    .line 166
    const/4 v3, 0x2

    .line 167
    const/4 v4, 0x1

    move-object v0, p0

    .line 163
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 161
    return-void
.end method

.method addHardwareRevisionString()V
    .locals 6

    .prologue
    .line 150
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HARDWARE_REVISION_STRING:Ljava/util/UUID;

    .line 153
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;->getValue()[B

    move-result-object v5

    .line 149
    const/4 v1, 0x0

    .line 151
    const/4 v3, 0x2

    .line 152
    const/4 v4, 0x1

    move-object v0, p0

    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 146
    return-void
.end method

.method addManufacturerNameString()V
    .locals 6

    .prologue
    .line 105
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    .line 108
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;->getValue()[B

    move-result-object v5

    .line 104
    const/4 v1, 0x0

    .line 106
    const/4 v3, 0x2

    .line 107
    const/4 v4, 0x1

    move-object v0, p0

    .line 103
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 101
    return-void
.end method

.method addModelNumberString()V
    .locals 6

    .prologue
    .line 120
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    .line 123
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;->getValue()[B

    move-result-object v5

    .line 119
    const/4 v1, 0x0

    .line 121
    const/4 v3, 0x2

    .line 122
    const/4 v4, 0x1

    move-object v0, p0

    .line 118
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 116
    return-void
.end method

.method addPnpId()V
    .locals 6

    .prologue
    .line 225
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_PNP_ID:Ljava/util/UUID;

    .line 228
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->getValue()[B

    move-result-object v5

    .line 224
    const/4 v1, 0x0

    .line 226
    const/4 v3, 0x2

    .line 227
    const/4 v4, 0x1

    move-object v0, p0

    .line 223
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 221
    return-void
.end method

.method addRegCertDataList()V
    .locals 6

    .prologue
    .line 210
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REG_CERT_DATA_LIST:Ljava/util/UUID;

    .line 213
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;->getValue()[B

    move-result-object v5

    .line 209
    const/4 v1, 0x0

    .line 211
    const/4 v3, 0x2

    .line 212
    const/4 v4, 0x1

    move-object v0, p0

    .line 208
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 206
    return-void
.end method

.method addSerialNumberString()V
    .locals 6

    .prologue
    .line 135
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SERIAL_NUMBER_STRING:Ljava/util/UUID;

    .line 138
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;->getValue()[B

    move-result-object v5

    .line 134
    const/4 v1, 0x0

    .line 136
    const/4 v3, 0x2

    .line 137
    const/4 v4, 0x1

    move-object v0, p0

    .line 133
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 131
    return-void
.end method

.method addSoftwareRevisionString()V
    .locals 6

    .prologue
    .line 180
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    .line 183
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->getValue()[B

    move-result-object v5

    .line 179
    const/4 v1, 0x0

    .line 181
    const/4 v3, 0x2

    .line 182
    const/4 v4, 0x1

    move-object v0, p0

    .line 178
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 176
    return-void
.end method

.method addSystemId()V
    .locals 6

    .prologue
    .line 195
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SYSTEM_ID:Ljava/util/UUID;

    .line 198
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->getValue()[B

    move-result-object v5

    .line 194
    const/4 v1, 0x0

    .line 196
    const/4 v3, 0x2

    .line 197
    const/4 v4, 0x1

    move-object v0, p0

    .line 193
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Dis;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 191
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Dis;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addManufacturerNameString()V

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addModelNumberString()V

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addSerialNumberString()V

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addHardwareRevisionString()V

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addFirmwareRevisionString()V

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addSoftwareRevisionString()V

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addSystemId()V

    .line 94
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addRegCertDataList()V

    .line 95
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Dis;->addPnpId()V

    .line 86
    return-void
.end method
