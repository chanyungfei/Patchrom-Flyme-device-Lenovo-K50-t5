.class public Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;
.source "PaspPhoneAlertCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PaspPhoneAlertCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
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
    .line 67
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 68
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 71
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_STATUS:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 75
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    .line 74
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->onPassAlertStatusReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/AlertStatus;)V

    .line 76
    return-void

    .line 77
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_SETTING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 80
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;

    .line 79
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->onPassRingerSettingReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/RingerSetting;)V

    .line 81
    return-void

    .line 85
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 66
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
    .line 92
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    .line 93
    .local v9, "charUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v10

    .line 96
    .local v10, "srvcUuid":Ljava/util/UUID;
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    invoke-virtual {v10, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_CONTROL_POINT:Ljava/util/UUID;

    invoke-virtual {v9, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v8, Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-direct {v8, v0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .local v8, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    move-object v3, v8

    .line 100
    check-cast v3, Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 99
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->onPassRingerControlPointWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;ZZI[B)V

    .line 102
    return-void

    .line 106
    .end local v8    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 91
    return-void
.end method

.method dispatchDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 112
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 113
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 114
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 116
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_STATUS:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 117
    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->onPassAlertStatusCccdReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V

    .line 121
    return-void

    .line 122
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_SETTING:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 122
    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->onPassRingerSettingCccdReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V

    .line 126
    return-void

    .line 130
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 111
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
    .line 137
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 138
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 139
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 141
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_PASS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_STATUS:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 142
    if-eqz v3, :cond_0

    .line 144
    invoke-virtual/range {p0 .. p7}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->onPassAlertStatusCccdWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V

    .line 147
    return-void

    .line 148
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_SETTING:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 148
    if-eqz v3, :cond_1

    .line 150
    invoke-virtual/range {p0 .. p7}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->onPassRingerSettingCccdWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V

    .line 153
    return-void

    .line 157
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 136
    return-void
.end method

.method public onPassAlertStatusCccdReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 249
    const-string/jumbo v0, "PaspPhoneAlertCallback"

    const-string/jumbo v1, "onPassAlertStatusCccdReadRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 247
    return-void
.end method

.method public onPassAlertStatusCccdWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 291
    const-string/jumbo v0, "PaspPhoneAlertCallback"

    const-string/jumbo v1, "onPassAlertStatusCccdWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-eqz p4, :cond_1

    .line 295
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 296
    if-eqz p5, :cond_0

    .line 297
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 299
    :cond_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {p0, p1, p3, p7}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->updateCccd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattDescriptor;[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 303
    if-eqz p5, :cond_2

    .line 304
    const/16 v0, 0x101

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 306
    :cond_2
    return-void

    .line 309
    :cond_3
    invoke-virtual {p3, p7}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 310
    if-eqz p5, :cond_4

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 289
    :cond_4
    return-void
.end method

.method public onPassAlertStatusReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/AlertStatus;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "alertStatus"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    .prologue
    .line 173
    const-string/jumbo v0, "PaspPhoneAlertCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPassAlertStatusReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->getValue(I)[B

    move-result-object v0

    .line 176
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 171
    return-void
.end method

.method public onPassRingerControlPointWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "ringerControlPoint"    # Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 219
    const-string/jumbo v0, "PaspPhoneAlertCallback"

    const-string/jumbo v1, "onPassRingerControlPointWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz p4, :cond_1

    .line 223
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 224
    if-eqz p5, :cond_0

    .line 225
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 227
    :cond_0
    return-void

    .line 230
    :cond_1
    invoke-virtual {p3, p6, p7}, Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;->setValue(I[B)Z

    .line 231
    if-eqz p5, :cond_2

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 217
    :cond_2
    return-void
.end method

.method public onPassRingerSettingCccdReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 267
    const-string/jumbo v0, "PaspPhoneAlertCallback"

    const-string/jumbo v1, "onPassRingerSettingCccdReadRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 265
    return-void
.end method

.method public onPassRingerSettingCccdWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 332
    const-string/jumbo v0, "PaspPhoneAlertCallback"

    const-string/jumbo v1, "onPassRingerSettingCccdWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-eqz p4, :cond_1

    .line 336
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 337
    if-eqz p5, :cond_0

    .line 338
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 340
    :cond_0
    return-void

    .line 343
    :cond_1
    invoke-virtual {p0, p1, p3, p7}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->updateCccd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattDescriptor;[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 344
    if-eqz p5, :cond_2

    .line 345
    const/16 v0, 0x101

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 347
    :cond_2
    return-void

    .line 350
    :cond_3
    invoke-virtual {p3, p7}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 351
    if-eqz p5, :cond_4

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 330
    :cond_4
    return-void
.end method

.method public onPassRingerSettingReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/RingerSetting;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "ringerSetting"    # Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;

    .prologue
    .line 193
    const-string/jumbo v0, "PaspPhoneAlertCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPassRingerSettingReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->getValue(I)[B

    move-result-object v0

    .line 196
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/PaspPhoneAlertCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 191
    return-void
.end method
