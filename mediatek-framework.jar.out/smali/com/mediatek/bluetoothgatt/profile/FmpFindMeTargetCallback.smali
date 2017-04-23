.class public Lcom/mediatek/bluetoothgatt/profile/FmpFindMeTargetCallback;
.super Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;
.source "FmpFindMeTargetCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "FmpFindMeTargetCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 65
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 66
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 71
    .local v1, "srvcUuid":Ljava/util/UUID;
    const/4 v2, 0x2

    invoke-virtual {p0, p1, p2, v2}, Lcom/mediatek/bluetoothgatt/profile/FmpFindMeTargetCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 64
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
    .line 78
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    .line 79
    .local v9, "charUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v10

    .line 82
    .local v10, "srvcUuid":Ljava/util/UUID;
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_IAS:Ljava/util/UUID;

    invoke-virtual {v10, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_LEVEL:Ljava/util/UUID;

    invoke-virtual {v9, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v8, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-direct {v8, v0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .local v8, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    move-object v3, v8

    .line 86
    check-cast v3, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 85
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/bluetoothgatt/profile/FmpFindMeTargetCallback;->onIasAlertLevelWriteRequest(Landroid/bluetooth/BluetoothDevice;ILcom/mediatek/bluetoothgatt/characteristic/AlertLevel;ZZI[B)V

    .line 88
    return-void

    .line 92
    .end local v8    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/bluetoothgatt/profile/FmpFindMeTargetCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 77
    return-void
.end method

.method dispatchDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 98
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 99
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 100
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 104
    .local v1, "descrUuid":Ljava/util/UUID;
    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/FmpFindMeTargetCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 97
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
    .line 111
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 112
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 113
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 117
    .local v1, "descrUuid":Ljava/util/UUID;
    const/4 v3, 0x3

    invoke-virtual {p0, p1, p2, v3}, Lcom/mediatek/bluetoothgatt/profile/FmpFindMeTargetCallback;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 110
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
    .line 140
    const-string/jumbo v0, "FmpFindMeTargetCallback"

    const-string/jumbo v1, "onIasAlertLevelWriteRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz p4, :cond_1

    .line 144
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/FmpFindMeTargetCallback;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 145
    if-eqz p5, :cond_0

    .line 146
    invoke-virtual {p0, p1, p2, p6, p7}, Lcom/mediatek/bluetoothgatt/profile/FmpFindMeTargetCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 148
    :cond_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p3, p6, p7}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setValue(I[B)Z

    .line 152
    if-eqz p5, :cond_2

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p6, v0}, Lcom/mediatek/bluetoothgatt/profile/FmpFindMeTargetCallback;->sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V

    .line 138
    :cond_2
    return-void
.end method
