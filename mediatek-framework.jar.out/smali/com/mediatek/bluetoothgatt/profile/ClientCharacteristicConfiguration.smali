.class Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;
.super Ljava/lang/Object;
.source "ClientCharacteristicConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;
    }
.end annotation


# instance fields
.field private final mCccdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->mCccdList:Ljava/util/List;

    .line 55
    return-void
.end method


# virtual methods
.method add(Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 2
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->find(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->mCccdList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;-><init>(Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;Ljava/util/UUID;Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    return-void
.end method

.method find(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;
    .locals 3
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->mCccdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;

    .line 66
    .local v0, "entry":Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;
    iget-object v2, v0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mSrvcUuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mCharUuid:Ljava/util/UUID;

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    return-object v0

    .line 70
    .end local v0    # "entry":Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method getDevices(Ljava/util/UUID;Ljava/util/UUID;)Ljava/util/Map;
    .locals 3
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->mCccdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cccd$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;

    .line 91
    .local v0, "cccd":Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;
    iget-object v2, v0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mSrvcUuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mCharUuid:Ljava/util/UUID;

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, v0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->mDevices:Ljava/util/Map;

    return-object v2

    .line 95
    .end local v0    # "cccd":Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method getValue(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;)[B
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srvcUuid"    # Ljava/util/UUID;
    .param p3, "charUuid"    # Ljava/util/UUID;

    .prologue
    .line 74
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->find(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;

    move-result-object v0

    .line 75
    .local v0, "entry":Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;
    if-nez v0, :cond_0

    .line 76
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    return-object v1

    .line 78
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->getValue(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    return-object v1
.end method

.method removeDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 99
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->mCccdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cccd$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;

    .line 100
    .local v0, "cccd":Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;
    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->removeDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 98
    .end local v0    # "cccd":Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;
    :cond_0
    return-void
.end method

.method setValue(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srvcUuid"    # Ljava/util/UUID;
    .param p3, "charUuid"    # Ljava/util/UUID;
    .param p4, "value"    # [B

    .prologue
    .line 83
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration;->find(Ljava/util/UUID;Ljava/util/UUID;)Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;

    move-result-object v0

    .line 84
    .local v0, "entry":Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1, p4}, Lcom/mediatek/bluetoothgatt/profile/ClientCharacteristicConfiguration$Entry;->setValue(Landroid/bluetooth/BluetoothDevice;[B)V

    .line 82
    :cond_0
    return-void
.end method
