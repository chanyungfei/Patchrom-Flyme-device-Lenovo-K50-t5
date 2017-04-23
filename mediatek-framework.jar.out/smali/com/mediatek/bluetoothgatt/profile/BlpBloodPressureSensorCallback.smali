.class public Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;
.source "BlpBloodPressureSensorCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BlpBloodPressureSensorCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 74
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 75
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 78
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BLS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BLOOD_PRESSURE_FEATURE:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureFeature;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureFeature;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 82
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureFeature;

    .line 81
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onBlsBloodPressureFeatureReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/BloodPressureFeature;)V

    .line 83
    return-void

    .line 86
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 87
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 90
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    .line 89
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onDisManufacturerNameStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;)V

    .line 91
    return-void

    .line 92
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 95
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    .line 94
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onDisModelNumberStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;)V

    .line 96
    return-void

    .line 97
    :cond_2
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SERIAL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 100
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    .line 99
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onDisSerialNumberStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;)V

    .line 101
    return-void

    .line 102
    :cond_3
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HARDWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 105
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    .line 104
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onDisHardwareRevisionStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;)V

    .line 106
    return-void

    .line 107
    :cond_4
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 108
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 110
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    .line 109
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onDisFirmwareRevisionStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;)V

    .line 111
    return-void

    .line 112
    :cond_5
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 113
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 115
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    .line 114
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onDisSoftwareRevisionStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;)V

    .line 116
    return-void

    .line 117
    :cond_6
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SYSTEM_ID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 118
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 120
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    .line 119
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onDisSystemIdReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/SystemId;)V

    .line 121
    return-void

    .line 122
    :cond_7
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REG_CERT_DATA_LIST:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 123
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 125
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    .line 124
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onDisRegCertDataListReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;)V

    .line 126
    return-void

    .line 127
    :cond_8
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_PNP_ID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 128
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 130
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    .line 129
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onDisPnpIdReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/PnpId;)V

    .line 131
    return-void

    .line 135
    :cond_9
    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 73
    return-void
.end method

.method dispatchCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 142
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 143
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 148
    .local v1, "srvcUuid":Ljava/util/UUID;
    const/4 v2, 0x3

    invoke-virtual {p0, p1, p2, v2}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 141
    return-void
.end method

.method dispatchDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 154
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 155
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 156
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 158
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BLS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BLOOD_PRESSURE_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 159
    if-eqz v3, :cond_0

    .line 161
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onBlsBloodPressureMeasurementCccdReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V

    .line 163
    return-void

    .line 164
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_INTERMEDIATE_CUFF_PRESSURE:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 164
    if-eqz v3, :cond_1

    .line 166
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onBlsIntermediateCuffPressureCccdReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V

    .line 168
    return-void

    .line 172
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 153
    return-void
.end method

.method dispatchDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 179
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 180
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 181
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 183
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_BLS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BLOOD_PRESSURE_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 184
    if-eqz v3, :cond_0

    .line 186
    invoke-virtual/range {p0 .. p7}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onBlsBloodPressureMeasurementCccdWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V

    .line 189
    return-void

    .line 190
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_INTERMEDIATE_CUFF_PRESSURE:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 190
    if-eqz v3, :cond_1

    .line 192
    invoke-virtual/range {p0 .. p7}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->onBlsIntermediateCuffPressureCccdWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V

    .line 195
    return-void

    .line 199
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 178
    return-void
.end method

.method public onBlsBloodPressureFeatureReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/BloodPressureFeature;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "bloodPressureFeature"    # Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureFeature;

    .prologue
    .line 215
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBlsBloodPressureFeatureReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/BloodPressureFeature;->getValue(I)[B

    move-result-object v0

    .line 218
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 213
    return-void
.end method

.method public onBlsBloodPressureMeasurementCccdReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 417
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    const-string/jumbo v1, "onBlsBloodPressureMeasurementCccdReadRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 415
    return-void
.end method

.method public onBlsBloodPressureMeasurementCccdWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 459
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    const-string/jumbo v1, "onBlsBloodPressureMeasurementCccdWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-eqz p4, :cond_1

    .line 463
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 464
    if-eqz p5, :cond_0

    .line 465
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 467
    :cond_0
    return-void

    .line 470
    :cond_1
    invoke-virtual {p0, p1, p3, p7}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->updateCccd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattDescriptor;[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 471
    if-eqz p5, :cond_2

    .line 472
    const/16 v0, 0x101

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 474
    :cond_2
    return-void

    .line 477
    :cond_3
    invoke-virtual {p3, p7}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 478
    if-eqz p5, :cond_4

    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 457
    :cond_4
    return-void
.end method

.method public onBlsIntermediateCuffPressureCccdReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 435
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    const-string/jumbo v1, "onBlsIntermediateCuffPressureCccdReadRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 433
    return-void
.end method

.method public onBlsIntermediateCuffPressureCccdWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 500
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    const-string/jumbo v1, "onBlsIntermediateCuffPressureCccdWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    if-eqz p4, :cond_1

    .line 504
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 505
    if-eqz p5, :cond_0

    .line 506
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 508
    :cond_0
    return-void

    .line 511
    :cond_1
    invoke-virtual {p0, p1, p3, p7}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->updateCccd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattDescriptor;[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 512
    if-eqz p5, :cond_2

    .line 513
    const/16 v0, 0x101

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 515
    :cond_2
    return-void

    .line 518
    :cond_3
    invoke-virtual {p3, p7}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 519
    if-eqz p5, :cond_4

    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 498
    :cond_4
    return-void
.end method

.method public onDisFirmwareRevisionStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "firmwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    .prologue
    .line 315
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisFirmwareRevisionStringReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;->getValue(I)[B

    move-result-object v0

    .line 318
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 313
    return-void
.end method

.method public onDisHardwareRevisionStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "hardwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    .prologue
    .line 295
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisHardwareRevisionStringReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;->getValue(I)[B

    move-result-object v0

    .line 298
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 293
    return-void
.end method

.method public onDisManufacturerNameStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "manufacturerNameString"    # Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    .prologue
    .line 235
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisManufacturerNameStringReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;->getValue(I)[B

    move-result-object v0

    .line 238
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 233
    return-void
.end method

.method public onDisModelNumberStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "modelNumberString"    # Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    .prologue
    .line 255
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisModelNumberStringReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;->getValue(I)[B

    move-result-object v0

    .line 258
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 253
    return-void
.end method

.method public onDisPnpIdReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/PnpId;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "pnpId"    # Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    .prologue
    .line 395
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisPnpIdReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->getValue(I)[B

    move-result-object v0

    .line 398
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 393
    return-void
.end method

.method public onDisRegCertDataListReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "regCertDataList"    # Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    .prologue
    .line 375
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisRegCertDataListReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;->getValue(I)[B

    move-result-object v0

    .line 378
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 373
    return-void
.end method

.method public onDisSerialNumberStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "serialNumberString"    # Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    .prologue
    .line 275
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisSerialNumberStringReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;->getValue(I)[B

    move-result-object v0

    .line 278
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 273
    return-void
.end method

.method public onDisSoftwareRevisionStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "softwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    .prologue
    .line 335
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisSoftwareRevisionStringReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->getValue(I)[B

    move-result-object v0

    .line 338
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 333
    return-void
.end method

.method public onDisSystemIdReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/SystemId;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "systemId"    # Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    .prologue
    .line 355
    const-string/jumbo v0, "BlpBloodPressureSensorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisSystemIdReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->getValue(I)[B

    move-result-object v0

    .line 358
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/BlpBloodPressureSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 353
    return-void
.end method
