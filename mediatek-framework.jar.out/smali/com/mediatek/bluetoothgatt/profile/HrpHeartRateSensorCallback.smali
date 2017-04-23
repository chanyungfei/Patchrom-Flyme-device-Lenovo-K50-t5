.class public Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;
.source "HrpHeartRateSensorCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "HrpHeartRateSensorCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
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
    .line 75
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 76
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 79
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HRS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BODY_SENSOR_LOCATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 83
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;

    .line 82
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->onHrsBodySensorLocationReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;)V

    .line 84
    return-void

    .line 87
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 88
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 91
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    .line 90
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->onDisManufacturerNameStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;)V

    .line 92
    return-void

    .line 93
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 96
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    .line 95
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->onDisModelNumberStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;)V

    .line 97
    return-void

    .line 98
    :cond_2
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SERIAL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 101
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    .line 100
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->onDisSerialNumberStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;)V

    .line 102
    return-void

    .line 103
    :cond_3
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HARDWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 106
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    .line 105
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->onDisHardwareRevisionStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;)V

    .line 107
    return-void

    .line 108
    :cond_4
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 109
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 111
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    .line 110
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->onDisFirmwareRevisionStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;)V

    .line 112
    return-void

    .line 113
    :cond_5
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 116
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    .line 115
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->onDisSoftwareRevisionStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;)V

    .line 117
    return-void

    .line 118
    :cond_6
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SYSTEM_ID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 119
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 121
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    .line 120
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->onDisSystemIdReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/SystemId;)V

    .line 122
    return-void

    .line 123
    :cond_7
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REG_CERT_DATA_LIST:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 124
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 126
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    .line 125
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->onDisRegCertDataListReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;)V

    .line 127
    return-void

    .line 128
    :cond_8
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_PNP_ID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 129
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 131
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    .line 130
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->onDisPnpIdReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/PnpId;)V

    .line 132
    return-void

    .line 136
    :cond_9
    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 74
    return-void
.end method

.method dispatchCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 11
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 143
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    .line 144
    .local v9, "charUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v10

    .line 147
    .local v10, "srvcUuid":Ljava/util/UUID;
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HRS:Ljava/util/UUID;

    invoke-virtual {v10, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HEART_RATE_CONTROL_POINT:Ljava/util/UUID;

    invoke-virtual {v9, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v8, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-direct {v8, v0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .local v8, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    move-object v3, v8

    .line 151
    check-cast v3, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 150
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->onHrsHeartRateControlPointWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;ZZI[B)V

    .line 153
    return-void

    .line 157
    .end local v8    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 142
    return-void
.end method

.method dispatchDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 163
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 164
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 165
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 167
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HRS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HEART_RATE_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 168
    if-eqz v3, :cond_0

    .line 170
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->onHrsHeartRateMeasurementCccdReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V

    .line 172
    return-void

    .line 176
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 162
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
    .line 183
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 184
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 185
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 187
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HRS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HEART_RATE_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 188
    if-eqz v3, :cond_0

    .line 190
    invoke-virtual/range {p0 .. p7}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->onHrsHeartRateMeasurementCccdWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V

    .line 193
    return-void

    .line 197
    :cond_0
    const/4 v3, 0x3

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 182
    return-void
.end method

.method public onDisFirmwareRevisionStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "firmwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    .prologue
    .line 313
    const-string/jumbo v0, "HrpHeartRateSensorCallback"

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

    .line 317
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;->getValue(I)[B

    move-result-object v0

    .line 316
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 311
    return-void
.end method

.method public onDisHardwareRevisionStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "hardwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    .prologue
    .line 293
    const-string/jumbo v0, "HrpHeartRateSensorCallback"

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

    .line 297
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;->getValue(I)[B

    move-result-object v0

    .line 296
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 291
    return-void
.end method

.method public onDisManufacturerNameStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "manufacturerNameString"    # Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    .prologue
    .line 233
    const-string/jumbo v0, "HrpHeartRateSensorCallback"

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

    .line 237
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;->getValue(I)[B

    move-result-object v0

    .line 236
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 231
    return-void
.end method

.method public onDisModelNumberStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "modelNumberString"    # Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    .prologue
    .line 253
    const-string/jumbo v0, "HrpHeartRateSensorCallback"

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

    .line 257
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;->getValue(I)[B

    move-result-object v0

    .line 256
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 251
    return-void
.end method

.method public onDisPnpIdReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/PnpId;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "pnpId"    # Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    .prologue
    .line 393
    const-string/jumbo v0, "HrpHeartRateSensorCallback"

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

    .line 397
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->getValue(I)[B

    move-result-object v0

    .line 396
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 391
    return-void
.end method

.method public onDisRegCertDataListReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "regCertDataList"    # Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    .prologue
    .line 373
    const-string/jumbo v0, "HrpHeartRateSensorCallback"

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

    .line 377
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;->getValue(I)[B

    move-result-object v0

    .line 376
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 371
    return-void
.end method

.method public onDisSerialNumberStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "serialNumberString"    # Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    .prologue
    .line 273
    const-string/jumbo v0, "HrpHeartRateSensorCallback"

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

    .line 277
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;->getValue(I)[B

    move-result-object v0

    .line 276
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 271
    return-void
.end method

.method public onDisSoftwareRevisionStringReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "softwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    .prologue
    .line 333
    const-string/jumbo v0, "HrpHeartRateSensorCallback"

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

    .line 337
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->getValue(I)[B

    move-result-object v0

    .line 336
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 331
    return-void
.end method

.method public onDisSystemIdReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/SystemId;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "systemId"    # Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    .prologue
    .line 353
    const-string/jumbo v0, "HrpHeartRateSensorCallback"

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

    .line 357
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->getValue(I)[B

    move-result-object v0

    .line 356
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 351
    return-void
.end method

.method public onHrsBodySensorLocationReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "bodySensorLocation"    # Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;

    .prologue
    .line 213
    const-string/jumbo v0, "HrpHeartRateSensorCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHrsBodySensorLocationReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->getValue(I)[B

    move-result-object v0

    .line 216
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 211
    return-void
.end method

.method public onHrsHeartRateControlPointWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "heartRateControlPoint"    # Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 419
    const-string/jumbo v0, "HrpHeartRateSensorCallback"

    const-string/jumbo v1, "onHrsHeartRateControlPointWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-eqz p4, :cond_1

    .line 423
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 424
    if-eqz p5, :cond_0

    .line 425
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 427
    :cond_0
    return-void

    .line 430
    :cond_1
    invoke-virtual {p3, p6, p7}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->setValue(I[B)Z

    .line 431
    if-eqz p5, :cond_2

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 417
    :cond_2
    return-void
.end method

.method public onHrsHeartRateMeasurementCccdReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 449
    const-string/jumbo v0, "HrpHeartRateSensorCallback"

    const-string/jumbo v1, "onHrsHeartRateMeasurementCccdReadRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 447
    return-void
.end method

.method public onHrsHeartRateMeasurementCccdWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 473
    const-string/jumbo v0, "HrpHeartRateSensorCallback"

    const-string/jumbo v1, "onHrsHeartRateMeasurementCccdWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    if-eqz p4, :cond_1

    .line 477
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 478
    if-eqz p5, :cond_0

    .line 479
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 481
    :cond_0
    return-void

    .line 484
    :cond_1
    invoke-virtual {p0, p1, p3, p7}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->updateCccd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattDescriptor;[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 485
    if-eqz p5, :cond_2

    .line 486
    const/16 v0, 0x101

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 488
    :cond_2
    return-void

    .line 491
    :cond_3
    invoke-virtual {p3, p7}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 492
    if-eqz p5, :cond_4

    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpHeartRateSensorCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 471
    :cond_4
    return-void
.end method
