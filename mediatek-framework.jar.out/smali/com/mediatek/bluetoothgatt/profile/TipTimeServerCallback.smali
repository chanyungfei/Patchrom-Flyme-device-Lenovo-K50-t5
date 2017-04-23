.class public Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;
.source "TipTimeServerCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "TipTimeServerCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
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
    .line 70
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 71
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 74
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 78
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    .line 77
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->onCtsCurrentTimeReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/CurrentTime;)V

    .line 79
    return-void

    .line 80
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_LOCAL_TIME_INFORMATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 83
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;

    .line 82
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->onCtsLocalTimeInformationReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;)V

    .line 84
    return-void

    .line 85
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REFERENCE_TIME_INFORMATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 88
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;

    .line 87
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->onCtsReferenceTimeInformationReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;)V

    .line 89
    return-void

    .line 92
    :cond_2
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_NDCS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TIME_WITH_DST:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 96
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;

    .line 95
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->onNdcsTimeWithDstReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;)V

    .line 97
    return-void

    .line 100
    :cond_3
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RTUS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TIME_UPDATE_STATE:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p4}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 104
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;

    .line 103
    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->onRtusTimeUpdateStateReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;)V

    .line 105
    return-void

    .line 109
    :cond_4
    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 69
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
    .line 116
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    .line 117
    .local v9, "charUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v10

    .line 120
    .local v10, "srvcUuid":Ljava/util/UUID;
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    invoke-virtual {v10, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

    invoke-virtual {v9, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v8, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-direct {v8, v0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .local v8, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    move-object v3, v8

    .line 124
    check-cast v3, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 123
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->onCtsCurrentTimeWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/CurrentTime;ZZI[B)V

    .line 126
    return-void

    .line 127
    .end local v8    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    :cond_0
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_LOCAL_TIME_INFORMATION:Ljava/util/UUID;

    invoke-virtual {v9, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v8, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-direct {v8, v0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .restart local v8    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    move-object v3, v8

    .line 130
    check-cast v3, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 129
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->onCtsLocalTimeInformationWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;ZZI[B)V

    .line 132
    return-void

    .line 135
    .end local v8    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    :cond_1
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RTUS:Ljava/util/UUID;

    invoke-virtual {v10, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TIME_UPDATE_CONTROL_POINT:Ljava/util/UUID;

    invoke-virtual {v9, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    new-instance v8, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-direct {v8, v0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .restart local v8    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    move-object v3, v8

    .line 139
    check-cast v3, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 138
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->onRtusTimeUpdateControlPointWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;ZZI[B)V

    .line 141
    return-void

    .line 145
    .end local v8    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 115
    return-void
.end method

.method dispatchDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 151
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 152
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 153
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 155
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

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
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->onCtsCurrentTimeCccdReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V

    .line 160
    return-void

    .line 164
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 150
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
    .line 171
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 172
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 173
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 175
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 176
    if-eqz v3, :cond_0

    .line 178
    invoke-virtual/range {p0 .. p7}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->onCtsCurrentTimeCccdWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V

    .line 181
    return-void

    .line 185
    :cond_0
    const/4 v3, 0x3

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 170
    return-void
.end method

.method public onCtsCurrentTimeCccdReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 407
    const-string/jumbo v0, "TipTimeServerCallback"

    const-string/jumbo v1, "onCtsCurrentTimeCccdReadRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 405
    return-void
.end method

.method public onCtsCurrentTimeCccdWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 431
    const-string/jumbo v0, "TipTimeServerCallback"

    const-string/jumbo v1, "onCtsCurrentTimeCccdWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    if-eqz p4, :cond_1

    .line 435
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 436
    if-eqz p5, :cond_0

    .line 437
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 439
    :cond_0
    return-void

    .line 442
    :cond_1
    invoke-virtual {p0, p1, p3, p7}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->updateCccd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattDescriptor;[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 443
    if-eqz p5, :cond_2

    .line 444
    const/16 v0, 0x101

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 446
    :cond_2
    return-void

    .line 449
    :cond_3
    invoke-virtual {p3, p7}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 450
    if-eqz p5, :cond_4

    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 429
    :cond_4
    return-void
.end method

.method public onCtsCurrentTimeReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/CurrentTime;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "currentTime"    # Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    .prologue
    .line 201
    const-string/jumbo v0, "TipTimeServerCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCtsCurrentTimeReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->getValue(I)[B

    move-result-object v0

    .line 204
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 199
    return-void
.end method

.method public onCtsCurrentTimeWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/CurrentTime;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "currentTime"    # Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 307
    const-string/jumbo v0, "TipTimeServerCallback"

    const-string/jumbo v1, "onCtsCurrentTimeWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-eqz p4, :cond_1

    .line 311
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 312
    if-eqz p5, :cond_0

    .line 313
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 315
    :cond_0
    return-void

    .line 318
    :cond_1
    invoke-virtual {p3, p6, p7}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setValue(I[B)Z

    .line 319
    if-eqz p5, :cond_2

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 305
    :cond_2
    return-void
.end method

.method public onCtsLocalTimeInformationReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "localTimeInformation"    # Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;

    .prologue
    .line 221
    const-string/jumbo v0, "TipTimeServerCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCtsLocalTimeInformationReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->getValue(I)[B

    move-result-object v0

    .line 224
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 219
    return-void
.end method

.method public onCtsLocalTimeInformationWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "localTimeInformation"    # Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 342
    const-string/jumbo v0, "TipTimeServerCallback"

    const-string/jumbo v1, "onCtsLocalTimeInformationWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz p4, :cond_1

    .line 346
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 347
    if-eqz p5, :cond_0

    .line 348
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 350
    :cond_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p3, p6, p7}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setValue(I[B)Z

    .line 354
    if-eqz p5, :cond_2

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 340
    :cond_2
    return-void
.end method

.method public onCtsReferenceTimeInformationReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "referenceTimeInformation"    # Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;

    .prologue
    .line 241
    const-string/jumbo v0, "TipTimeServerCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCtsReferenceTimeInformationReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->getValue(I)[B

    move-result-object v0

    .line 244
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 239
    return-void
.end method

.method public onNdcsTimeWithDstReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "timeWithDst"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;

    .prologue
    .line 261
    const-string/jumbo v0, "TipTimeServerCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNdcsTimeWithDstReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->getValue(I)[B

    move-result-object v0

    .line 264
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 259
    return-void
.end method

.method public onRtusTimeUpdateControlPointWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "timeUpdateControlPoint"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 377
    const-string/jumbo v0, "TipTimeServerCallback"

    const-string/jumbo v1, "onRtusTimeUpdateControlPointWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz p4, :cond_1

    .line 381
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 382
    if-eqz p5, :cond_0

    .line 383
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 385
    :cond_0
    return-void

    .line 388
    :cond_1
    invoke-virtual {p3, p6, p7}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->setValue(I[B)Z

    .line 389
    if-eqz p5, :cond_2

    .line 390
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 375
    :cond_2
    return-void
.end method

.method public onRtusTimeUpdateStateReadRequest(Landroid/bluetooth/BluetoothDevice;IILcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "timeUpdateState"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;

    .prologue
    .line 281
    const-string/jumbo v0, "TipTimeServerCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRtusTimeUpdateStateReadRequest(): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p4, p3}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->getValue(I)[B

    move-result-object v0

    .line 284
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/bluetoothgatt/profile/TipTimeServerCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 279
    return-void
.end method
