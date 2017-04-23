.class public Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "DstOffset.java"


# static fields
.field public static final DST_DAYLIGHT_TIME:I = 0x4

.field public static final DST_DOUBLE_DAYLIGHT_TIME:I = 0x8

.field public static final DST_HALF_AN_HOUR_DAYLIGHT_TIME:I = 0x2

.field public static final DST_IS_NOT_KNOWN:I = 0xff

.field public static final DST_STANDARD_TIME:I

.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mDstOffset:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A0D"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->mDstOffset:[B

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setDstOffset(I)Z

    .line 86
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "dstOffset"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->mDstOffset:[B

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setDstOffset(I)Z

    .line 118
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "dstOffset"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->mDstOffset:[B

    .line 132
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setDstOffset(I)Z

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 3
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->mDstOffset:[B

    .line 144
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 146
    const/16 v0, 0xff

    .line 147
    .local v0, "dst":I
    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    const v2, 0xdbba0

    div-int v0, v1, v2

    .line 149
    if-ltz v0, :cond_0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 150
    :cond_0
    const/16 v0, 0xff

    .line 153
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setDstOffset(I)Z

    .line 143
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->mDstOffset:[B

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setValue([B)Z

    .line 96
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->mDstOffset:[B

    .line 108
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setValue([B)Z

    .line 107
    return-void
.end method


# virtual methods
.method public getDstOffset()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->mDstOffset:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 185
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 187
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->isSupportDstOffset()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->mDstOffset:[B

    array-length v1, v3

    .line 189
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->mDstOffset:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 190
    add-int/lit8 v0, v1, 0x0

    .line 193
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportDstOffset()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->isSupportDstOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->mDstOffset:[B

    array-length v0, v0

    .line 163
    :goto_0
    return v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDstOffset(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 238
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    return v0

    .line 241
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->mDstOffset:[B

    .line 242
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->updateGattCharacteristic()V

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 204
    const/4 v1, 0x0

    .line 206
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->isSupportDstOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->mDstOffset:[B

    array-length v0, v2

    .line 209
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    return v3

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->mDstOffset:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 214
    add-int/lit8 v1, v0, 0x0

    .line 217
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->updateGattCharacteristic()V

    .line 218
    const/4 v2, 0x1

    return v2
.end method
