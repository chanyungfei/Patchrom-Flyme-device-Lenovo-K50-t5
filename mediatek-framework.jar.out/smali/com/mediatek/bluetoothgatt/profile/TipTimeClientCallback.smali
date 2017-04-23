.class public Lcom/mediatek/bluetoothgatt/profile/TipTimeClientCallback;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;
.source "TipTimeClientCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "TipTimeClientCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 182
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 183
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 186
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 190
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    .line 189
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClientCallback;->onCtsCurrentTimeNotify(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;)V

    .line 191
    return-void

    .line 196
    :cond_0
    const-string/jumbo v3, "TipTimeClientCallback"

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

    .line 181
    return-void
.end method

.method dispatchCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 69
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 70
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 73
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;-><init>()V

    .line 76
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 77
    if-nez p3, :cond_0

    .line 78
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 81
    :cond_0
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    .line 80
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClientCallback;->onCtsCurrentTimeReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;I)V

    .line 82
    return-void

    .line 83
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_LOCAL_TIME_INFORMATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;-><init>()V

    .line 85
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 86
    if-nez p3, :cond_2

    .line 87
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 90
    :cond_2
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;

    .line 89
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClientCallback;->onCtsLocalTimeInformationReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;I)V

    .line 91
    return-void

    .line 92
    :cond_3
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REFERENCE_TIME_INFORMATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;-><init>()V

    .line 94
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 95
    if-nez p3, :cond_4

    .line 96
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 99
    :cond_4
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;

    .line 98
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClientCallback;->onCtsReferenceTimeInformationReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;I)V

    .line 100
    return-void

    .line 103
    :cond_5
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_NDCS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 104
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TIME_WITH_DST:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 105
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;-><init>()V

    .line 106
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 107
    if-nez p3, :cond_6

    .line 108
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 111
    :cond_6
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;

    .line 110
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClientCallback;->onNdcsTimeWithDstReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;I)V

    .line 112
    return-void

    .line 115
    :cond_7
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RTUS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 116
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TIME_UPDATE_STATE:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 117
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;-><init>()V

    .line 118
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 119
    if-nez p3, :cond_8

    .line 120
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 123
    :cond_8
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;

    .line 122
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClientCallback;->onRtusTimeUpdateStateReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;I)V

    .line 124
    return-void

    .line 129
    :cond_9
    const-string/jumbo v3, "TipTimeClientCallback"

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

    .line 68
    return-void
.end method

.method dispatchCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 136
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 137
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 140
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;-><init>()V

    .line 143
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 144
    if-nez p3, :cond_0

    .line 145
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 148
    :cond_0
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    .line 147
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClientCallback;->onCtsCurrentTimeWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;I)V

    .line 149
    return-void

    .line 150
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_LOCAL_TIME_INFORMATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;-><init>()V

    .line 152
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 153
    if-nez p3, :cond_2

    .line 154
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 157
    :cond_2
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;

    .line 156
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClientCallback;->onCtsLocalTimeInformationWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;I)V

    .line 158
    return-void

    .line 161
    :cond_3
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RTUS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 162
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TIME_UPDATE_CONTROL_POINT:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 163
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;-><init>()V

    .line 164
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 165
    if-nez p3, :cond_4

    .line 166
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 169
    :cond_4
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;

    .line 168
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClientCallback;->onRtusTimeUpdateControlPointWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;I)V

    .line 170
    return-void

    .line 175
    :cond_5
    const-string/jumbo v3, "TipTimeClientCallback"

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

    .line 135
    return-void
.end method

.method dispatchDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 203
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 204
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 205
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 207
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 208
    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClientCallback;->onCtsCurrentTimeCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 211
    return-void

    .line 216
    :cond_0
    const-string/jumbo v3, "TipTimeClientCallback"

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

    .line 202
    return-void
.end method

.method dispatchDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 223
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 224
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 225
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 227
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 228
    if-eqz v3, :cond_0

    .line 230
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClientCallback;->onCtsCurrentTimeCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 231
    return-void

    .line 236
    :cond_0
    const-string/jumbo v3, "TipTimeClientCallback"

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

    .line 222
    return-void
.end method

.method public onCtsCurrentTimeCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 356
    return-void
.end method

.method public onCtsCurrentTimeCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 370
    return-void
.end method

.method public onCtsCurrentTimeNotify(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;)V
    .locals 0
    .param p1, "currentTime"    # Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    .prologue
    .line 382
    return-void
.end method

.method public onCtsCurrentTimeReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;I)V
    .locals 0
    .param p1, "currentTime"    # Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;
    .param p2, "status"    # I

    .prologue
    .line 250
    return-void
.end method

.method public onCtsCurrentTimeWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;I)V
    .locals 0
    .param p1, "currentTime"    # Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;
    .param p2, "status"    # I

    .prologue
    .line 316
    return-void
.end method

.method public onCtsLocalTimeInformationReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;I)V
    .locals 0
    .param p1, "localTimeInformation"    # Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;
    .param p2, "status"    # I

    .prologue
    .line 263
    return-void
.end method

.method public onCtsLocalTimeInformationWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;I)V
    .locals 0
    .param p1, "localTimeInformation"    # Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;
    .param p2, "status"    # I

    .prologue
    .line 329
    return-void
.end method

.method public onCtsReferenceTimeInformationReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;I)V
    .locals 0
    .param p1, "referenceTimeInformation"    # Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;
    .param p2, "status"    # I

    .prologue
    .line 276
    return-void
.end method

.method public onNdcsTimeWithDstReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;I)V
    .locals 0
    .param p1, "timeWithDst"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;
    .param p2, "status"    # I

    .prologue
    .line 289
    return-void
.end method

.method public onRtusTimeUpdateControlPointWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;I)V
    .locals 0
    .param p1, "timeUpdateControlPoint"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;
    .param p2, "status"    # I

    .prologue
    .line 342
    return-void
.end method

.method public onRtusTimeUpdateStateReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;I)V
    .locals 0
    .param p1, "timeUpdateState"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;
    .param p2, "status"    # I

    .prologue
    .line 302
    return-void
.end method
