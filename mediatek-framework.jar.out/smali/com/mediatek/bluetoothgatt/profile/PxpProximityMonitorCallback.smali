.class public Lcom/mediatek/bluetoothgatt/profile/PxpProximityMonitorCallback;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;
.source "PxpProximityMonitorCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PxpProximityMonitorCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 139
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 140
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 146
    .local v1, "srvcUuid":Ljava/util/UUID;
    const-string/jumbo v2, "PxpProximityMonitorCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown Characteristic UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method dispatchCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 66
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 69
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_LLS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_LEVEL:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;-><init>()V

    .line 72
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 73
    if-nez p3, :cond_0

    .line 74
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 77
    :cond_0
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    .line 76
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityMonitorCallback;->onLlsAlertLevelReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;I)V

    .line 78
    return-void

    .line 81
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_TPS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TX_POWER_LEVEL:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;-><init>()V

    .line 84
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 85
    if-nez p3, :cond_2

    .line 86
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 89
    :cond_2
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;

    .line 88
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityMonitorCallback;->onTpsTxPowerLevelReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;I)V

    .line 90
    return-void

    .line 95
    :cond_3
    const-string/jumbo v3, "PxpProximityMonitorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown Characteristic UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method dispatchCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 103
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 106
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_LLS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_LEVEL:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;-><init>()V

    .line 109
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 110
    if-nez p3, :cond_0

    .line 111
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 114
    :cond_0
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    .line 113
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityMonitorCallback;->onLlsAlertLevelWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;I)V

    .line 115
    return-void

    .line 118
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_IAS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_LEVEL:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;-><init>()V

    .line 121
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 122
    if-nez p3, :cond_2

    .line 123
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 126
    :cond_2
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    .line 125
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityMonitorCallback;->onIasAlertLevelWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;I)V

    .line 127
    return-void

    .line 132
    :cond_3
    const-string/jumbo v3, "PxpProximityMonitorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown Characteristic UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method dispatchDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 154
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 155
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 160
    .local v1, "descrUuid":Ljava/util/UUID;
    const-string/jumbo v3, "PxpProximityMonitorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown Descriptor UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method dispatchDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 168
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 169
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 174
    .local v1, "descrUuid":Ljava/util/UUID;
    const-string/jumbo v3, "PxpProximityMonitorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown Descriptor UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public onIasAlertLevelWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;I)V
    .locals 0
    .param p1, "alertLevel"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;
    .param p2, "status"    # I

    .prologue
    .line 228
    return-void
.end method

.method public onLlsAlertLevelReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;I)V
    .locals 0
    .param p1, "alertLevel"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;
    .param p2, "status"    # I

    .prologue
    .line 188
    return-void
.end method

.method public onLlsAlertLevelWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;I)V
    .locals 0
    .param p1, "alertLevel"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;
    .param p2, "status"    # I

    .prologue
    .line 215
    return-void
.end method

.method public onTpsTxPowerLevelReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;I)V
    .locals 0
    .param p1, "txPowerLevel"    # Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;
    .param p2, "status"    # I

    .prologue
    .line 201
    return-void
.end method
