.class public Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "TimeZone.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final TIME_ZONE_IS_NOT_KNOWN:I = -0x80

.field public static final UTC_000:I = 0x0

.field public static final UTC_100:I = 0x4

.field public static final UTC_1000:I = 0x28

.field public static final UTC_1030:I = 0x2a

.field public static final UTC_1100:I = 0x2c

.field public static final UTC_1130:I = 0x2e

.field public static final UTC_1200:I = 0x30

.field public static final UTC_1245:I = 0x33

.field public static final UTC_1300:I = 0x34

.field public static final UTC_1400:I = 0x38

.field public static final UTC_200:I = 0x8

.field public static final UTC_300:I = 0xc

.field public static final UTC_330:I = 0xe

.field public static final UTC_400:I = 0x10

.field public static final UTC_430:I = 0x12

.field public static final UTC_500:I = 0x14

.field public static final UTC_530:I = 0x16

.field public static final UTC_545:I = 0x17

.field public static final UTC_600:I = 0x18

.field public static final UTC_630:I = 0x1a

.field public static final UTC_700:I = 0x1c

.field public static final UTC_800:I = 0x20

.field public static final UTC_845:I = 0x23

.field public static final UTC_900:I = 0x24

.field public static final UTC_930:I = 0x26

.field public static final UTC_N_100:I = -0x4

.field public static final UTC_N_1000:I = -0x28

.field public static final UTC_N_1100:I = -0x2c

.field public static final UTC_N_1200:I = -0x30

.field public static final UTC_N_200:I = -0x8

.field public static final UTC_N_300:I = -0xc

.field public static final UTC_N_330:I = -0xe

.field public static final UTC_N_400:I = -0x10

.field public static final UTC_N_430:I = -0x12

.field public static final UTC_N_500:I = -0x14

.field public static final UTC_N_600:I = -0x18

.field public static final UTC_N_700:I = -0x1c

.field public static final UTC_N_800:I = -0x20

.field public static final UTC_N_900:I = -0x24

.field public static final UTC_N_930:I = -0x26


# instance fields
.field private mTimeZone:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A0E"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->mTimeZone:[B

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 124
    const/16 v0, -0x30

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setTimeZone(I)Z

    .line 122
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeZone"    # I

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->mTimeZone:[B

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setTimeZone(I)Z

    .line 154
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "timeZone"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->mTimeZone:[B

    .line 168
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setTimeZone(I)Z

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 3
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 116
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->mTimeZone:[B

    .line 180
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 182
    const/16 v0, -0x80

    .line 183
    .local v0, "zone":I
    if-eqz p1, :cond_1

    .line 184
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v2, 0xdbba0

    div-int v0, v1, v2

    .line 185
    const/16 v1, -0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x38

    if-le v0, v1, :cond_1

    .line 186
    :cond_0
    const/16 v0, -0x80

    .line 189
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setTimeZone(I)Z

    .line 179
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->mTimeZone:[B

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setValue([B)Z

    .line 132
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->mTimeZone:[B

    .line 144
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setValue([B)Z

    .line 143
    return-void
.end method


# virtual methods
.method public getTimeZone()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->mTimeZone:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 222
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 224
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->isSupportTimeZone()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->mTimeZone:[B

    array-length v1, v3

    .line 226
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->mTimeZone:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 227
    add-int/lit8 v0, v1, 0x0

    .line 230
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportTimeZone()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->isSupportTimeZone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->mTimeZone:[B

    array-length v0, v0

    .line 200
    :goto_0
    return v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTimeZone(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 275
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x0

    return v0

    .line 278
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->mTimeZone:[B

    .line 279
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->updateGattCharacteristic()V

    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 241
    const/4 v1, 0x0

    .line 243
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->isSupportTimeZone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->mTimeZone:[B

    array-length v0, v2

    .line 246
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    return v3

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->mTimeZone:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 251
    add-int/lit8 v1, v0, 0x0

    .line 254
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->updateGattCharacteristic()V

    .line 255
    const/4 v2, 0x1

    return v2
.end method
