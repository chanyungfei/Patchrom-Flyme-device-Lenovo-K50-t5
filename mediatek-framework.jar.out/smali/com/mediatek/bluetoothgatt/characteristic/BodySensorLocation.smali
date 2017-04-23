.class public Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "BodySensorLocation.java"


# static fields
.field public static final BSL_CHEST:I = 0x1

.field public static final BSL_EAR_LOBE:I = 0x5

.field public static final BSL_FINGER:I = 0x3

.field public static final BSL_FOOT:I = 0x6

.field public static final BSL_HAND:I = 0x4

.field public static final BSL_OTHER:I = 0x0

.field public static final BSL_WRIST:I = 0x2

.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mBodySensorLocation:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A38"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->mBodySensorLocation:[B

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->setBodySensorLocation(I)Z

    .line 91
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bodySensorLocation"    # I

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->mBodySensorLocation:[B

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->setBodySensorLocation(I)Z

    .line 123
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "bodySensorLocation"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->mBodySensorLocation:[B

    .line 137
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->setBodySensorLocation(I)Z

    .line 136
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->mBodySensorLocation:[B

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->setValue([B)Z

    .line 101
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->mBodySensorLocation:[B

    .line 113
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->setValue([B)Z

    .line 112
    return-void
.end method


# virtual methods
.method public getBodySensorLocation()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->mBodySensorLocation:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->bit8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 173
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 175
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->isSupportBodySensorLocation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->mBodySensorLocation:[B

    array-length v1, v3

    .line 177
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->mBodySensorLocation:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 178
    add-int/lit8 v0, v1, 0x0

    .line 181
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportBodySensorLocation()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->isSupportBodySensorLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->mBodySensorLocation:[B

    array-length v0, v0

    .line 151
    :goto_0
    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBodySensorLocation(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 226
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->bit8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    return v0

    .line 229
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToBit8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->mBodySensorLocation:[B

    .line 230
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->updateGattCharacteristic()V

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 192
    const/4 v1, 0x0

    .line 194
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->isSupportBodySensorLocation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->mBodySensorLocation:[B

    array-length v0, v2

    .line 197
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    return v3

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->mBodySensorLocation:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 202
    add-int/lit8 v1, v0, 0x0

    .line 205
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;->updateGattCharacteristic()V

    .line 206
    const/4 v2, 0x1

    return v2
.end method
