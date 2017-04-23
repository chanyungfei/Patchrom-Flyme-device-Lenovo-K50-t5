.class public Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClientCallback;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;
.source "PaspPhoneAlertClientCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PaspPhoneAlertClientCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 125
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 126
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 129
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_STATUS:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 133
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    .line 132
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClientCallback;->onPassAlertStatusNotify(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;)V

    .line 134
    return-void

    .line 135
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_SETTING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 138
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;

    .line 137
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClientCallback;->onPassRingerSettingNotify(Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;)V

    .line 139
    return-void

    .line 144
    :cond_1
    const-string/jumbo v3, "PaspPhoneAlertClientCallback"

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

    .line 124
    return-void
.end method

.method dispatchCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 67
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 70
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_STATUS:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;-><init>()V

    .line 73
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 74
    if-nez p3, :cond_0

    .line 75
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 78
    :cond_0
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    .line 77
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClientCallback;->onPassAlertStatusReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;I)V

    .line 79
    return-void

    .line 80
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_SETTING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;-><init>()V

    .line 82
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 83
    if-nez p3, :cond_2

    .line 84
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 87
    :cond_2
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;

    .line 86
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClientCallback;->onPassRingerSettingReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;I)V

    .line 88
    return-void

    .line 93
    :cond_3
    const-string/jumbo v3, "PaspPhoneAlertClientCallback"

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

    .line 65
    return-void
.end method

.method dispatchCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 101
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 104
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_CONTROL_POINT:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;-><init>()V

    .line 107
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 108
    if-nez p3, :cond_0

    .line 109
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 112
    :cond_0
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;

    .line 111
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClientCallback;->onPassRingerControlPointWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;I)V

    .line 113
    return-void

    .line 118
    :cond_1
    const-string/jumbo v3, "PaspPhoneAlertClientCallback"

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

    .line 99
    return-void
.end method

.method dispatchDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 151
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 152
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 153
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 155
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_STATUS:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 156
    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClientCallback;->onPassAlertStatusCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 159
    return-void

    .line 160
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_SETTING:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 160
    if-eqz v3, :cond_1

    .line 162
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClientCallback;->onPassRingerSettingCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 163
    return-void

    .line 168
    :cond_1
    const-string/jumbo v3, "PaspPhoneAlertClientCallback"

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

    .line 150
    return-void
.end method

.method dispatchDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 175
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 176
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 177
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 179
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_STATUS:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 180
    if-eqz v3, :cond_0

    .line 182
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClientCallback;->onPassAlertStatusCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 183
    return-void

    .line 184
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_SETTING:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 184
    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertClientCallback;->onPassRingerSettingCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 187
    return-void

    .line 192
    :cond_1
    const-string/jumbo v3, "PaspPhoneAlertClientCallback"

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

    .line 174
    return-void
.end method

.method public onPassAlertStatusCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 247
    return-void
.end method

.method public onPassAlertStatusCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 274
    return-void
.end method

.method public onPassAlertStatusNotify(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;)V
    .locals 0
    .param p1, "alertStatus"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    .prologue
    .line 299
    return-void
.end method

.method public onPassAlertStatusReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;I)V
    .locals 0
    .param p1, "alertStatus"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;
    .param p2, "status"    # I

    .prologue
    .line 206
    return-void
.end method

.method public onPassRingerControlPointWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;I)V
    .locals 0
    .param p1, "ringerControlPoint"    # Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;
    .param p2, "status"    # I

    .prologue
    .line 233
    return-void
.end method

.method public onPassRingerSettingCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 260
    return-void
.end method

.method public onPassRingerSettingCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 287
    return-void
.end method

.method public onPassRingerSettingNotify(Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;)V
    .locals 0
    .param p1, "ringerSetting"    # Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;

    .prologue
    .line 310
    return-void
.end method

.method public onPassRingerSettingReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;I)V
    .locals 0
    .param p1, "ringerSetting"    # Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;
    .param p2, "status"    # I

    .prologue
    .line 219
    return-void
.end method
