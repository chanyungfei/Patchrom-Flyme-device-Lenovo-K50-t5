.class public Lcom/mediatek/bluetoothgatt/profile/PxpProximityMonitor;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBase;
.source "PxpProximityMonitor.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PxpProximityMonitor"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;-><init>(Landroid/content/Context;)V

    .line 72
    const-string/jumbo v0, "PxpProximityMonitor"

    const-string/jumbo v1, "PxpProximityMonitor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method


# virtual methods
.method protected handleServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)Z
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    const/4 v0, 0x0

    .line 80
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_LLS:Ljava/util/UUID;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_IAS:Ljava/util/UUID;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_TPS:Ljava/util/UUID;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 79
    :cond_0
    return v0
.end method

.method public readLlsAlertLevel()Z
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "PxpProximityMonitor"

    const-string/jumbo v1, "readLlsAlertLevel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_LLS:Ljava/util/UUID;

    .line 97
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_LEVEL:Ljava/util/UUID;

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityMonitor;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readTpsTxPowerLevel()Z
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v0, "PxpProximityMonitor"

    const-string/jumbo v1, "readTpsTxPowerLevel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_TPS:Ljava/util/UUID;

    .line 112
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TX_POWER_LEVEL:Ljava/util/UUID;

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityMonitor;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public writeIasAlertLevel(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z
    .locals 2
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 141
    const-string/jumbo v0, "PxpProximityMonitor"

    const-string/jumbo v1, "writeIasAlertLevel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_IAS:Ljava/util/UUID;

    .line 143
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityMonitor;->writeCharacteristic(Ljava/util/UUID;Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z

    move-result v0

    return v0
.end method

.method public writeLlsAlertLevel(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z
    .locals 2
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 125
    const-string/jumbo v0, "PxpProximityMonitor"

    const-string/jumbo v1, "writeLlsAlertLevel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_LLS:Ljava/util/UUID;

    .line 127
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/bluetoothgatt/profile/PxpProximityMonitor;->writeCharacteristic(Ljava/util/UUID;Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z

    move-result v0

    return v0
.end method
