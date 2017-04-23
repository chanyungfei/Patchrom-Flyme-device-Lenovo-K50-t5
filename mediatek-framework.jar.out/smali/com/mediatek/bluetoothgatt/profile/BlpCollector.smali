.class public Lcom/mediatek/bluetoothgatt/profile/BlpCollector;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBase;
.source "BlpCollector.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BlpCollector"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;-><init>(Landroid/content/Context;)V

    .line 71
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "BlpCollector()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method


# virtual methods
.method protected handleServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)Z
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 79
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BLS:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBlsBloodPressureFeature()Z
    .locals 2

    .prologue
    .line 90
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "readBlsBloodPressureFeature()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BLS:Ljava/util/UUID;

    .line 94
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BLOOD_PRESSURE_FEATURE:Ljava/util/UUID;

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readBlsBloodPressureMeasurementCccd()Z
    .locals 3

    .prologue
    .line 243
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "readBlsBloodPressureMeasurementCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BLS:Ljava/util/UUID;

    .line 247
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BLOOD_PRESSURE_MEASUREMENT:Ljava/util/UUID;

    .line 248
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 245
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readBlsIntermediateCuffPressureCccd()Z
    .locals 3

    .prologue
    .line 259
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "readBlsIntermediateCuffPressureCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BLS:Ljava/util/UUID;

    .line 263
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_INTERMEDIATE_CUFF_PRESSURE:Ljava/util/UUID;

    .line 264
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 261
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisFirmwareRevisionString()Z
    .locals 2

    .prologue
    .line 165
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "readDisFirmwareRevisionString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 169
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    .line 167
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisHardwareRevisionString()Z
    .locals 2

    .prologue
    .line 150
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "readDisHardwareRevisionString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 154
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HARDWARE_REVISION_STRING:Ljava/util/UUID;

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisManufacturerNameString()Z
    .locals 2

    .prologue
    .line 105
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "readDisManufacturerNameString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 109
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisModelNumberString()Z
    .locals 2

    .prologue
    .line 120
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "readDisModelNumberString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 124
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisPnpId()Z
    .locals 2

    .prologue
    .line 225
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "readDisPnpId()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 229
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_PNP_ID:Ljava/util/UUID;

    .line 227
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisRegCertDataList()Z
    .locals 2

    .prologue
    .line 210
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "readDisRegCertDataList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 214
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REG_CERT_DATA_LIST:Ljava/util/UUID;

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisSerialNumberString()Z
    .locals 2

    .prologue
    .line 135
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "readDisSerialNumberString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 139
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SERIAL_NUMBER_STRING:Ljava/util/UUID;

    .line 137
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisSoftwareRevisionString()Z
    .locals 2

    .prologue
    .line 180
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "readDisSoftwareRevisionString()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 184
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    .line 182
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readDisSystemId()Z
    .locals 2

    .prologue
    .line 195
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "readDisSystemId()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    .line 199
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SYSTEM_ID:Ljava/util/UUID;

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public writeBlsBloodPressureMeasurementCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 277
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "writeBlsBloodPressureMeasurementCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BLS:Ljava/util/UUID;

    .line 281
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BLOOD_PRESSURE_MEASUREMENT:Ljava/util/UUID;

    .line 282
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 279
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method

.method public writeBlsIntermediateCuffPressureCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 295
    const-string/jumbo v0, "BlpCollector"

    const-string/jumbo v1, "writeBlsIntermediateCuffPressureCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BLS:Ljava/util/UUID;

    .line 299
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_INTERMEDIATE_CUFF_PRESSURE:Ljava/util/UUID;

    .line 300
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 297
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/BlpCollector;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method
