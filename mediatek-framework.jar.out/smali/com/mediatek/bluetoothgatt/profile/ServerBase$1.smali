.class Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;
.super Landroid/bluetooth/BluetoothGattServerCallback;
.source "ServerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/profile/ServerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 148
    const-string/jumbo v1, "ServerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCharacteristicReadRequest() - UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    const-string/jumbo v3, ", device="

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    const-string/jumbo v3, ", requestId="

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    const-string/jumbo v3, ", offset="

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ServerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCharacteristicReadRequest() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 166
    const-string/jumbo v0, "ServerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCharacteristicWriteRequest() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    const-string/jumbo v2, ", device="

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string/jumbo v2, ", requestId="

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    const-string/jumbo v2, ", preparedWrite="

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    const-string/jumbo v2, ", responseNeeded="

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string/jumbo v2, ", offset="

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    iget-object v0, v0, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v8

    .line 178
    .local v8, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v0, "ServerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCharacteristicWriteRequest() - NullPointerException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 95
    const-string/jumbo v1, "ServerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnectionStateChange() - device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 96
    const-string/jumbo v3, ", status="

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    const-string/jumbo v3, ", newState="

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-nez p2, :cond_1

    .line 100
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    invoke-static {v1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->-get1(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 101
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    invoke-static {v1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->-get1(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    invoke-static {v1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->-get1(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 119
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :goto_1
    return-void

    .line 105
    :cond_2
    if-nez p3, :cond_0

    .line 106
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    invoke-static {v1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->-get1(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    invoke-static {v1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->-get1(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCccd:Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;

    invoke-virtual {v1, p1}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->removeDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/NullPointerException;
    :try_start_4
    const-string/jumbo v1, "ServerBase"

    const-string/jumbo v3, "CCCD list is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 100
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    .restart local v0    # "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ServerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnectionStateChange() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 186
    const-string/jumbo v4, "ServerBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDescriptorReadRequest() - UUID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 187
    const-string/jumbo v6, ", device="

    .line 186
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 187
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 188
    const-string/jumbo v6, ", requestId="

    .line 186
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 189
    const-string/jumbo v6, ", offset="

    .line 186
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 193
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v4, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 195
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 196
    .local v3, "srvcUuid":Ljava/util/UUID;
    iget-object v4, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    iget-object v4, v4, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCccd:Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;

    invoke-virtual {v4, p1, v3, v0}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->getValue(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;)[B

    move-result-object v4

    invoke-virtual {p4, v4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 200
    .end local v0    # "charUuid":Ljava/util/UUID;
    .end local v3    # "srvcUuid":Ljava/util/UUID;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    iget-object v4, v4, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "ServerBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDescriptorReadRequest() - NullPointerException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    .prologue
    .line 211
    const-string/jumbo v1, "ServerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDescriptorWriteRequest() - UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    const-string/jumbo v3, ", device="

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 213
    const-string/jumbo v3, ", requestId="

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 214
    const-string/jumbo v3, ", preparedWrite="

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    const-string/jumbo v3, ", responseNeeded="

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    const-string/jumbo v3, ", offset="

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v10

    .line 220
    .local v10, "descrUuid":Ljava/util/UUID;
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v10, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    .line 222
    .local v9, "charUuid":Ljava/util/UUID;
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v12

    .line 223
    .local v12, "srvcUuid":Ljava/util/UUID;
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCccd:Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;

    invoke-virtual {v1, p1, v12, v9}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->getValue(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;)[B

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 227
    .end local v9    # "charUuid":Ljava/util/UUID;
    .end local v12    # "srvcUuid":Ljava/util/UUID;
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v11

    .line 230
    .local v11, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ServerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDescriptorWriteRequest() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "execute"    # Z

    .prologue
    .line 237
    const-string/jumbo v1, "ServerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onExecuteWrite() - device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    const-string/jumbo v3, ", requestId="

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    const-string/jumbo v3, ", execute="

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ServerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onExecuteWrite() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onNotificationSent(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .prologue
    .line 252
    const-string/jumbo v1, "ServerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNotificationSent() - device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    const-string/jumbo v3, ", status="

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->onNotificationSent(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ServerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNotificationSent() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "service"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 128
    const-string/jumbo v1, "ServerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceAdded() - service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 129
    const-string/jumbo v3, ", status="

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ServerBaseCallback;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    invoke-static {v1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->-get0(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 139
    :try_start_1
    const-string/jumbo v1, "ServerBase"

    const-string/jumbo v3, "notifyAll()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ServerBase$1;->this$0:Lcom/mediatek/bluetoothgatt/profile/ServerBase;

    invoke-static {v1}, Lcom/mediatek/bluetoothgatt/profile/ServerBase;->-get0(Lcom/mediatek/bluetoothgatt/profile/ServerBase;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 126
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ServerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceAdded() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
