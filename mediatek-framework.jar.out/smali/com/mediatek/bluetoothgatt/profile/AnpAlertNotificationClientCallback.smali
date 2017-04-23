.class public Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationClientCallback;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;
.source "AnpAlertNotificationClientCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AnpAlertNotificationClientCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 128
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 131
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_ANS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_NEW_ALERT:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 135
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;

    .line 134
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationClientCallback;->onAnsNewAlertNotify(Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;)V

    .line 136
    return-void

    .line 137
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_UNREAD_ALERT_STATUS:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 140
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;

    .line 139
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationClientCallback;->onAnsUnreadAlertStatusNotify(Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;)V

    .line 141
    return-void

    .line 146
    :cond_1
    const-string/jumbo v3, "AnpAlertNotificationClientCallback"

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

    .line 126
    return-void
.end method

.method dispatchCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 69
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 72
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_ANS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SUPPORTED_NEW_ALERT_CATEGORY:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;-><init>()V

    .line 75
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 76
    if-nez p3, :cond_0

    .line 77
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 80
    :cond_0
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;

    .line 79
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationClientCallback;->onAnsSupportedNewAlertCategoryReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;I)V

    .line 81
    return-void

    .line 82
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SUPPORTED_UNREAD_ALERT_CATEGORY:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedUnreadAlertCategory;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedUnreadAlertCategory;-><init>()V

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
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedUnreadAlertCategory;

    .line 88
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationClientCallback;->onAnsSupportedUnreadAlertCategoryReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SupportedUnreadAlertCategory;I)V

    .line 90
    return-void

    .line 95
    :cond_3
    const-string/jumbo v3, "AnpAlertNotificationClientCallback"

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

    .line 67
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
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_ANS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_NOTIFICATION_CONTROL_POINT:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;-><init>()V

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
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;

    .line 113
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationClientCallback;->onAnsAlertNotificationControlPointWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;I)V

    .line 115
    return-void

    .line 120
    :cond_1
    const-string/jumbo v3, "AnpAlertNotificationClientCallback"

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

    .line 157
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_ANS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_NEW_ALERT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 158
    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationClientCallback;->onAnsNewAlertCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 161
    return-void

    .line 162
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_UNREAD_ALERT_STATUS:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 162
    if-eqz v3, :cond_1

    .line 164
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationClientCallback;->onAnsUnreadAlertStatusCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 165
    return-void

    .line 170
    :cond_1
    const-string/jumbo v3, "AnpAlertNotificationClientCallback"

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
    .line 177
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 178
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 179
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 181
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_ANS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_NEW_ALERT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 182
    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationClientCallback;->onAnsNewAlertCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 185
    return-void

    .line 186
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_UNREAD_ALERT_STATUS:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 186
    if-eqz v3, :cond_1

    .line 188
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/AnpAlertNotificationClientCallback;->onAnsUnreadAlertStatusCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 189
    return-void

    .line 194
    :cond_1
    const-string/jumbo v3, "AnpAlertNotificationClientCallback"

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

    .line 176
    return-void
.end method

.method public onAnsAlertNotificationControlPointWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;I)V
    .locals 0
    .param p1, "alertNotificationControlPoint"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;
    .param p2, "status"    # I

    .prologue
    .line 235
    return-void
.end method

.method public onAnsNewAlertCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 249
    return-void
.end method

.method public onAnsNewAlertCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 276
    return-void
.end method

.method public onAnsNewAlertNotify(Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;)V
    .locals 0
    .param p1, "newAlert"    # Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;

    .prologue
    .line 301
    return-void
.end method

.method public onAnsSupportedNewAlertCategoryReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;I)V
    .locals 0
    .param p1, "supportedNewAlertCategory"    # Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;
    .param p2, "status"    # I

    .prologue
    .line 208
    return-void
.end method

.method public onAnsSupportedUnreadAlertCategoryReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SupportedUnreadAlertCategory;I)V
    .locals 0
    .param p1, "supportedUnreadAlertCategory"    # Lcom/mediatek/bluetoothgatt/characteristic/SupportedUnreadAlertCategory;
    .param p2, "status"    # I

    .prologue
    .line 221
    return-void
.end method

.method public onAnsUnreadAlertStatusCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 262
    return-void
.end method

.method public onAnsUnreadAlertStatusCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 289
    return-void
.end method

.method public onAnsUnreadAlertStatusNotify(Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;)V
    .locals 0
    .param p1, "unreadAlertStatus"    # Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;

    .prologue
    .line 312
    return-void
.end method
