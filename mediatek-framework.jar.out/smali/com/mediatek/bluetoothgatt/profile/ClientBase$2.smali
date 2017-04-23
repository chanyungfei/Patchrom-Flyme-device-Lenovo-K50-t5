.class Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "ClientBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/profile/ClientBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetoothgatt/profile/ClientBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 151
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCharacteristicChanged() - UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 152
    const-string/jumbo v3, ", value="

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 152
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCharacteristicChanged() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 121
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCharacteristicRead() - UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 122
    const-string/jumbo v3, ", status="

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCharacteristicRead() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 136
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCharacteristicWrite() - UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 137
    const-string/jumbo v3, ", status="

    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCharacteristicWrite() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 81
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnectionStateChange() - status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 82
    const-string/jumbo v3, ", newState="

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-nez p2, :cond_0

    .line 86
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    invoke-static {v1}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->-get1(Lcom/mediatek/bluetoothgatt/profile/ClientBase;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    invoke-static {v2}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->-get2(Lcom/mediatek/bluetoothgatt/profile/ClientBase;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ClientBase"

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

    goto :goto_0
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 166
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDescriptorRead() - UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 167
    const-string/jumbo v3, ", status="

    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDescriptorRead() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 181
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDescriptorWrite() - descriptor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 182
    const-string/jumbo v3, ", status="

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDescriptorWrite() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "mtu"    # I
    .param p3, "status"    # I

    .prologue
    .line 221
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMtuChanged() - mtu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMtuChanged() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 208
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadRemoteRssi() - rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadRemoteRssi() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 195
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReliableWriteCompleted() - status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    iget-object v1, v1, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "ClientBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReliableWriteCompleted() - NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 100
    const-string/jumbo v2, "ClientBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServicesDiscovered() - status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    iget-object v2, v2, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 106
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->handleServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)Z

    move-result v1

    .line 107
    .local v1, "isVerified":Z
    if-eqz v1, :cond_0

    .line 108
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    iget-object v2, v2, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->onServicesVerified(I)V

    .line 98
    .end local v1    # "isVerified":Z
    :goto_0
    return-void

    .line 110
    .restart local v1    # "isVerified":Z
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    iget-object v2, v2, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    const/16 v3, 0x101

    invoke-virtual {v2, v3}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->onServicesVerified(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v1    # "isVerified":Z
    :catch_0
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "ClientBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServicesDiscovered() - NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
