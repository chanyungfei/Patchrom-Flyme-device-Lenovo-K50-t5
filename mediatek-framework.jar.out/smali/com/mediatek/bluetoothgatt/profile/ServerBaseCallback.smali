.class public abstract Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;
.super Landroid/bluetooth/BluetoothGattServerCallback;
.source "ServerBaseCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ServerBaseCallback"


# instance fields
.field protected mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    .line 55
    return-void
.end method


# virtual methods
.method dispatchCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 175
    return-void
.end method

.method dispatchCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 180
    return-void
.end method

.method dispatchDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 184
    return-void
.end method

.method dispatchDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 189
    return-void
.end method

.method protected getCccd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)[B
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 229
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    if-nez v2, :cond_0

    .line 230
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    return-object v2

    .line 232
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 233
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 234
    .local v1, "srvcUuid":Ljava/util/UUID;
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    invoke-virtual {v2, p1, v1, v0}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->getCccd(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;)[B

    move-result-object v2

    return-object v2
.end method

.method protected getCccd(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "characteristicBase"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 225
    invoke-virtual {p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->getCccd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)[B

    move-result-object v0

    return-object v0
.end method

.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "ServerBaseCallback"

    const-string/jumbo v1, "mProfileServer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 72
    :cond_0
    if-eqz p3, :cond_1

    .line 74
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    array-length v0, v0

    if-le p3, v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    .line 76
    const/4 v1, 0x7

    .line 75
    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 77
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->dispatchCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 66
    return-void
.end method

.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    if-nez v0, :cond_0

    .line 89
    const-string/jumbo v0, "ServerBaseCallback"

    const-string/jumbo v1, "mProfileServer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 93
    :cond_0
    if-eqz p6, :cond_1

    if-eqz p4, :cond_2

    .line 101
    :cond_1
    invoke-virtual/range {p0 .. p7}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->dispatchCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V

    .line 87
    return-void

    .line 94
    :cond_2
    if-eqz p5, :cond_3

    .line 95
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    .line 96
    const/4 v1, 0x7

    .line 95
    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 98
    :cond_3
    return-void
.end method

.method public onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    if-nez v0, :cond_0

    .line 109
    const-string/jumbo v0, "ServerBaseCallback"

    const-string/jumbo v1, "mProfileServer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 113
    :cond_0
    if-eqz p3, :cond_1

    .line 114
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 115
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->dispatchDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V

    .line 107
    return-void
.end method

.method public onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    if-nez v0, :cond_0

    .line 126
    const-string/jumbo v0, "ServerBaseCallback"

    const-string/jumbo v1, "mProfileServer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 130
    :cond_0
    if-eqz p6, :cond_2

    .line 131
    if-eqz p5, :cond_1

    .line 132
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    .line 133
    const/4 v1, 0x7

    .line 132
    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 135
    :cond_1
    return-void

    .line 138
    :cond_2
    array-length v0, p7

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_4

    .line 139
    if-eqz p5, :cond_3

    .line 140
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    .line 141
    const/16 v1, 0xd

    .line 140
    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V

    .line 143
    :cond_3
    return-void

    .line 146
    :cond_4
    invoke-virtual/range {p0 .. p7}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->dispatchDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V

    .line 124
    return-void
.end method

.method public onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "execute"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    if-nez v0, :cond_0

    .line 153
    const-string/jumbo v0, "ServerBaseCallback"

    const-string/jumbo v1, "mProfileServer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    invoke-virtual {v0, p1, p3}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->executeWrite(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    move-object v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)V

    .line 151
    return-void
.end method

.method public onServerReady(ILandroid/bluetooth/BluetoothGattServer;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "gattServer"    # Landroid/bluetooth/BluetoothGattServer;

    .prologue
    .line 170
    return-void
.end method

.method protected prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "offset"    # I
    .param p4, "value"    # [B
    .param p5, "isDescriptor"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->prepareWrite(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;I[BZ)V

    .line 207
    return-void
.end method

.method protected sendErrorResponse(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "status"    # I

    .prologue
    const/4 v5, 0x0

    .line 200
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    if-nez v0, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)V

    .line 199
    return-void
.end method

.method protected sendResponse(Landroid/bluetooth/BluetoothDevice;II[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "value"    # [B

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    if-nez v0, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)V

    .line 192
    return-void
.end method

.method setProfileServer(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)V
    .locals 0
    .param p1, "server"    # Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    .line 60
    return-void
.end method

.method protected updateCccd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattDescriptor;[B)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "value"    # [B

    .prologue
    .line 216
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    if-nez v2, :cond_0

    .line 217
    const/4 v2, 0x0

    return v2

    .line 219
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 220
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 221
    .local v1, "srvcUuid":Ljava/util/UUID;
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->mProfileServer:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    invoke-virtual {v2, p1, v1, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->updateCccd(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v2

    return v2
.end method
