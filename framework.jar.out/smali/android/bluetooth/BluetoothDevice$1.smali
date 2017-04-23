.class final Landroid/bluetooth/BluetoothDevice$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 644
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->-get1()Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 645
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->-set0(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 647
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->-get1()Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 642
    return-void
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 1
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->-get1()Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 634
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->-get0()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-nez v0, :cond_0

    .line 635
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->-set0(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 638
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->-get1()Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 631
    return-void
.end method

.method public onBrEdrDown()V
    .locals 2

    .prologue
    .line 652
    const-string/jumbo v0, "BluetoothDevice"

    const-string/jumbo v1, "onBrEdrDown: reached BLE ON state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void
.end method
