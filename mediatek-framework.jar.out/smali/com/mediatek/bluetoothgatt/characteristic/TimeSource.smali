.class public Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "TimeSource.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final TIME_SOURCE_ATOMIC_CLOCK:I = 0x5

.field public static final TIME_SOURCE_CELLULAR_NETWORK:I = 0x6

.field public static final TIME_SOURCE_GPS:I = 0x2

.field public static final TIME_SOURCE_MANUAL:I = 0x4

.field public static final TIME_SOURCE_NTP:I = 0x1

.field public static final TIME_SOURCE_RADIO:I = 0x3

.field public static final TIME_SOURCE_UNKNOWN:I


# instance fields
.field private mTimeSource:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A13"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->mTimeSource:[B

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setTimeSource(I)Z

    .line 88
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeSource"    # I

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->mTimeSource:[B

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setTimeSource(I)Z

    .line 120
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "timeSource"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->mTimeSource:[B

    .line 134
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setTimeSource(I)Z

    .line 133
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->mTimeSource:[B

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setValue([B)Z

    .line 98
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->mTimeSource:[B

    .line 110
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setValue([B)Z

    .line 109
    return-void
.end method


# virtual methods
.method public getTimeSource()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->mTimeSource:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->bit8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 170
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 172
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->isSupportTimeSource()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->mTimeSource:[B

    array-length v1, v3

    .line 174
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->mTimeSource:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 175
    add-int/lit8 v0, v1, 0x0

    .line 178
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportTimeSource()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->isSupportTimeSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->mTimeSource:[B

    array-length v0, v0

    .line 148
    :goto_0
    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTimeSource(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 223
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->bit8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    return v0

    .line 226
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToBit8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->mTimeSource:[B

    .line 227
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->updateGattCharacteristic()V

    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 189
    const/4 v1, 0x0

    .line 191
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->isSupportTimeSource()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->mTimeSource:[B

    array-length v0, v2

    .line 194
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    return v3

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->mTimeSource:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 199
    add-int/lit8 v1, v0, 0x0

    .line 202
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->updateGattCharacteristic()V

    .line 203
    const/4 v2, 0x1

    return v2
.end method
