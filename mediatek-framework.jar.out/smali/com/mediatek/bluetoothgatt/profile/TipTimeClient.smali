.class public Lcom/mediatek/bluetoothgatt/profile/TipTimeClient;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBase;
.source "TipTimeClient.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "TipTimeClient"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;-><init>(Landroid/content/Context;)V

    .line 72
    const-string/jumbo v0, "TipTimeClient"

    const-string/jumbo v1, "TipTimeClient()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method


# virtual methods
.method protected handleServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)Z
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readCtsCurrentTime()Z
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "TipTimeClient"

    const-string/jumbo v1, "readCtsCurrentTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    .line 95
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClient;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readCtsCurrentTimeCccd()Z
    .locals 3

    .prologue
    .line 216
    const-string/jumbo v0, "TipTimeClient"

    const-string/jumbo v1, "readCtsCurrentTimeCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    .line 220
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

    .line 221
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 218
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClient;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readCtsLocalTimeInformation()Z
    .locals 2

    .prologue
    .line 106
    const-string/jumbo v0, "TipTimeClient"

    const-string/jumbo v1, "readCtsLocalTimeInformation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    .line 110
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_LOCAL_TIME_INFORMATION:Ljava/util/UUID;

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClient;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readCtsReferenceTimeInformation()Z
    .locals 2

    .prologue
    .line 121
    const-string/jumbo v0, "TipTimeClient"

    const-string/jumbo v1, "readCtsReferenceTimeInformation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    .line 125
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REFERENCE_TIME_INFORMATION:Ljava/util/UUID;

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClient;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readNdcsTimeWithDst()Z
    .locals 2

    .prologue
    .line 136
    const-string/jumbo v0, "TipTimeClient"

    const-string/jumbo v1, "readNdcsTimeWithDst()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_NDCS:Ljava/util/UUID;

    .line 140
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TIME_WITH_DST:Ljava/util/UUID;

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClient;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public readRtusTimeUpdateState()Z
    .locals 2

    .prologue
    .line 151
    const-string/jumbo v0, "TipTimeClient"

    const-string/jumbo v1, "readRtusTimeUpdateState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RTUS:Ljava/util/UUID;

    .line 155
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TIME_UPDATE_STATE:Ljava/util/UUID;

    .line 153
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClient;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public writeCtsCurrentTime(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z
    .locals 2
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 168
    const-string/jumbo v0, "TipTimeClient"

    const-string/jumbo v1, "writeCtsCurrentTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    .line 170
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClient;->writeCharacteristic(Ljava/util/UUID;Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z

    move-result v0

    return v0
.end method

.method public writeCtsCurrentTimeCccd([B)Z
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 234
    const-string/jumbo v0, "TipTimeClient"

    const-string/jumbo v1, "writeCtsCurrentTimeCccd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    .line 238
    sget-object v1, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

    .line 239
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 236
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClient;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method

.method public writeCtsLocalTimeInformation(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z
    .locals 2
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 184
    const-string/jumbo v0, "TipTimeClient"

    const-string/jumbo v1, "writeCtsLocalTimeInformation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_CTS:Ljava/util/UUID;

    .line 186
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClient;->writeCharacteristic(Ljava/util/UUID;Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z

    move-result v0

    return v0
.end method

.method public writeRtusTimeUpdateControlPoint(Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z
    .locals 2
    .param p1, "characteristic"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 200
    const-string/jumbo v0, "TipTimeClient"

    const-string/jumbo v1, "writeRtusTimeUpdateControlPoint()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_RTUS:Ljava/util/UUID;

    .line 202
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/bluetoothgatt/profile/TipTimeClient;->writeCharacteristic(Ljava/util/UUID;Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z

    move-result v0

    return v0
.end method
