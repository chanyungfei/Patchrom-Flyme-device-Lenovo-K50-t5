.class Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;
.super Ljava/lang/Object;
.source "ClientCharacteristicConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field final mCharUuid:Ljava/util/UUID;

.field final mDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "[B>;"
        }
    .end annotation
.end field

.field final mSrvcUuid:Ljava/util/UUID;

.field final synthetic this$0:Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;
    .param p2, "srvcUuid"    # Ljava/util/UUID;
    .param p3, "charUuid"    # Ljava/util/UUID;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->this$0:Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mDevices:Ljava/util/Map;

    .line 113
    iput-object p2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mSrvcUuid:Ljava/util/UUID;

    .line 114
    iput-object p3, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mCharUuid:Ljava/util/UUID;

    .line 112
    return-void
.end method


# virtual methods
.method getValue(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 121
    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    return-object v0
.end method

.method removeDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mDevices:Ljava/util/Map;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 136
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setValue(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # [B

    .prologue
    .line 126
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mDevices:Ljava/util/Map;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mDevices:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 125
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
