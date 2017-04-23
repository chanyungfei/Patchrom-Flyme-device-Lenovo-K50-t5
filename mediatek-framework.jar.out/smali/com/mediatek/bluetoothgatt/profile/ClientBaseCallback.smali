.class public Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "ClientBaseCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ClientBaseCallback"


# instance fields
.field protected mProfileClient:Lcom/mediatek/bluetoothgatt/profile/ClientBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->mProfileClient:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    .line 48
    return-void
.end method


# virtual methods
.method dispatchCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 104
    return-void
.end method

.method dispatchCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 96
    return-void
.end method

.method dispatchCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 100
    return-void
.end method

.method dispatchDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 108
    return-void
.end method

.method dispatchDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 112
    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->dispatchCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 71
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->dispatchCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 59
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->dispatchCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 65
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->dispatchDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 77
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->dispatchDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 83
    return-void
.end method

.method public onServicesVerified(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 92
    return-void
.end method

.method setProfileClient(Lcom/mediatek/bluetoothgatt/profile/ClientBase;)V
    .locals 0
    .param p1, "client"    # Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->mProfileClient:Lcom/mediatek/bluetoothgatt/profile/ClientBase;

    .line 53
    return-void
.end method
