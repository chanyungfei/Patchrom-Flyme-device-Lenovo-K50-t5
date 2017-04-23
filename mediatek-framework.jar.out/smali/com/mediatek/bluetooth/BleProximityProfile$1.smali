.class Lcom/mediatek/bluetooth/BleProximityProfile$1;
.super Ljava/lang/Object;
.source "BleProximityProfile.java"

# interfaces
.implements Lcom/mediatek/bluetooth/IBleGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleProximityProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleProximityProfile;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleProximityProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/bluetooth/BleProximityProfile;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 125
    return-void
.end method

.method public onCharacteristicRead(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    invoke-static {v2}, Lcom/mediatek/bluetooth/BleProximityProfile;->-get0(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    move-result-object v2

    if-nez v2, :cond_0

    .line 93
    return-void

    .line 96
    :cond_0
    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "txPowerVal":I
    const/16 v2, 0x21

    .line 98
    invoke-virtual {p2, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    .line 100
    .local v0, "txPower":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 103
    :cond_1
    const-string/jumbo v2, "BleProximityProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCharacteristicRead: TxPower="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    invoke-static {v2}, Lcom/mediatek/bluetooth/BleProximityProfile;->-get0(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    move-result-object v2

    invoke-interface {p1}, Lcom/mediatek/bluetooth/IBleGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v2, p3, v1, v3}, Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;->onTxPowerRead(IILandroid/bluetooth/BluetoothDevice;)V

    .line 89
    return-void

    .line 106
    .end local v0    # "txPower":Ljava/lang/Integer;
    .end local v1    # "txPowerVal":I
    :cond_2
    return-void
.end method

.method public onCharacteristicWrite(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfile;->-get0(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfile;->-get0(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    move-result-object v0

    invoke-interface {p1}, Lcom/mediatek/bluetooth/IBleGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;->onLinkLostAlertLevelSet(ILandroid/bluetooth/BluetoothDevice;)V

    .line 112
    return-void
.end method

.method public onDescriptorRead(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 131
    return-void
.end method

.method public onDescriptorWrite(Lcom/mediatek/bluetooth/IBleGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 138
    return-void
.end method

.method public onReadRemoteRssi(Lcom/mediatek/bluetooth/IBleGatt;II)V
    .locals 2
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfile;->-get0(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfile;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfile;->-get0(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    move-result-object v0

    invoke-interface {p1}, Lcom/mediatek/bluetooth/IBleGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, p3, p2, v1}, Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;->onRssiRead(IILandroid/bluetooth/BluetoothDevice;)V

    .line 149
    return-void
.end method

.method public onReliableWriteCompleted(Lcom/mediatek/bluetooth/IBleGatt;I)V
    .locals 0
    .param p1, "gatt"    # Lcom/mediatek/bluetooth/IBleGatt;
    .param p2, "status"    # I

    .prologue
    .line 144
    return-void
.end method
