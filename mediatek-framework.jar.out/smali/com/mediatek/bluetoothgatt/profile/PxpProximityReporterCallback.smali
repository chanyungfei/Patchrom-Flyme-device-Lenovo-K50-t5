.class public Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;
.source "PxpProximityReporterCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PxpProximityReporterCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
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
    .line 66
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 67
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 70
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_LLS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_LEVEL:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 74
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    .line 73
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->onLlsAlertLevelReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/AlertLevel;)V

    .line 75
    return-void

    .line 78
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_TPS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TX_POWER_LEVEL:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 82
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;

    .line 81
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->onTpsTxPowerLevelReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;)V

    .line 83
    return-void

    .line 87
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 65
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
    .line 94
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    .line 95
    .local v9, "charUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v10

    .line 98
    .local v10, "srvcUuid":Ljava/util/UUID;
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_LLS:Ljava/util/UUID;

    invoke-virtual {v10, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_LEVEL:Ljava/util/UUID;

    invoke-virtual {v9, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v8, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-direct {v8, v0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .local v8, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    move-object v3, v8

    .line 102
    check-cast v3, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 101
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->onLlsAlertLevelWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/AlertLevel;ZZI[B)V

    .line 104
    return-void

    .line 107
    .end local v8    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    :cond_0
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_IAS:Ljava/util/UUID;

    invoke-virtual {v10, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_LEVEL:Ljava/util/UUID;

    invoke-virtual {v9, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    new-instance v8, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-direct {v8, v0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .restart local v8    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    move-object v3, v8

    .line 111
    check-cast v3, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 110
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->onIasAlertLevelWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/AlertLevel;ZZI[B)V

    .line 113
    return-void

    .line 117
    .end local v8    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 93
    return-void
.end method

.method dispatchDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 123
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 124
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 125
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 129
    .local v1, "descrUuid":Ljava/util/UUID;
    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 122
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
    .line 136
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 137
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 138
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 142
    .local v1, "descrUuid":Ljava/util/UUID;
    const/4 v3, 0x3

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 135
    return-void
.end method

.method public onIasAlertLevelWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/AlertLevel;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "alertLevel"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 239
    const-string/jumbo v0, "PxpProximityReporterCallback"

    const-string/jumbo v1, "onIasAlertLevelWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-eqz p4, :cond_1

    .line 243
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 244
    if-eqz p5, :cond_0

    .line 245
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 247
    :cond_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p3, p6, p7}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setValue(I[B)Z

    .line 251
    if-eqz p5, :cond_2

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 237
    :cond_2
    return-void
.end method

.method public onLlsAlertLevelReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/AlertLevel;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "alertLevel"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    .prologue
    .line 158
    const-string/jumbo v0, "PxpProximityReporterCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLlsAlertLevelReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->getValue(I)[B

    move-result-object v0

    .line 161
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 156
    return-void
.end method

.method public onLlsAlertLevelWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/AlertLevel;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "alertLevel"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 204
    const-string/jumbo v0, "PxpProximityReporterCallback"

    const-string/jumbo v1, "onLlsAlertLevelWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz p4, :cond_1

    .line 208
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 209
    if-eqz p5, :cond_0

    .line 210
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 212
    :cond_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {p3, p6, p7}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setValue(I[B)Z

    .line 216
    if-eqz p5, :cond_2

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 202
    :cond_2
    return-void
.end method

.method public onTpsTxPowerLevelReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "txPowerLevel"    # Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;

    .prologue
    .line 178
    const-string/jumbo v0, "PxpProximityReporterCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTpsTxPowerLevelReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->getValue(I)[B

    move-result-object v0

    .line 181
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityReporterCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 176
    return-void
.end method
