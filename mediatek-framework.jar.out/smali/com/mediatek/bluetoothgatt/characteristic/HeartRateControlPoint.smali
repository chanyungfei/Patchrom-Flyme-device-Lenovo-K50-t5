.class public Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "HeartRateControlPoint.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final HRCP_RESERVED:I = 0x0

.field public static final HRCP_REST_ENERGY_EXPENDED:I = 0x1


# instance fields
.field private mHeartRateControlPoint:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A39"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 86
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->mHeartRateControlPoint:[B

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->setHeartRateControlPoint(I)Z

    .line 92
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "heartRateControlPoint"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->mHeartRateControlPoint:[B

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->setHeartRateControlPoint(I)Z

    .line 124
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "heartRateControlPoint"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->mHeartRateControlPoint:[B

    .line 138
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->setHeartRateControlPoint(I)Z

    .line 137
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->mHeartRateControlPoint:[B

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->setValue([B)Z

    .line 102
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->mHeartRateControlPoint:[B

    .line 114
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->setValue([B)Z

    .line 113
    return-void
.end method


# virtual methods
.method public getHeartRateControlPoint()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->mHeartRateControlPoint:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->bit8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 174
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 176
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->isSupportHeartRateControlPoint()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->mHeartRateControlPoint:[B

    array-length v1, v3

    .line 178
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->mHeartRateControlPoint:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 179
    add-int/lit8 v0, v1, 0x0

    .line 182
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportHeartRateControlPoint()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->isSupportHeartRateControlPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->mHeartRateControlPoint:[B

    array-length v0, v0

    .line 152
    :goto_0
    return v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHeartRateControlPoint(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 227
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->bit8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    return v0

    .line 230
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToBit8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->mHeartRateControlPoint:[B

    .line 231
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->updateGattCharacteristic()V

    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 193
    const/4 v1, 0x0

    .line 195
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->isSupportHeartRateControlPoint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->mHeartRateControlPoint:[B

    array-length v0, v2

    .line 198
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    return v3

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->mHeartRateControlPoint:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 203
    add-int/lit8 v1, v0, 0x0

    .line 206
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;->updateGattCharacteristic()V

    .line 207
    const/4 v2, 0x1

    return v2
.end method
