.class public Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "TimeUpdateControlPoint.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final TIME_UPDATE_CP_CANCEL_REFERENCE_UPDATE:I = 0x2

.field public static final TIME_UPDATE_CP_GET_REFERENCE_UPDATE:I = 0x1


# instance fields
.field private mTimeUpdateControlPoint:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A16"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->mTimeUpdateControlPoint:[B

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->setTimeUpdateControlPoint(I)Z

    .line 90
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeUpdateControlPoint"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->mTimeUpdateControlPoint:[B

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->setTimeUpdateControlPoint(I)Z

    .line 122
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "timeUpdateControlPoint"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->mTimeUpdateControlPoint:[B

    .line 136
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->setTimeUpdateControlPoint(I)Z

    .line 135
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->mTimeUpdateControlPoint:[B

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->setValue([B)Z

    .line 100
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->mTimeUpdateControlPoint:[B

    .line 112
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->setValue([B)Z

    .line 111
    return-void
.end method


# virtual methods
.method public getTimeUpdateControlPoint()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->mTimeUpdateControlPoint:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 172
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 174
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->isSupportTimeUpdateControlPoint()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->mTimeUpdateControlPoint:[B

    array-length v1, v3

    .line 176
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->mTimeUpdateControlPoint:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 177
    add-int/lit8 v0, v1, 0x0

    .line 180
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportTimeUpdateControlPoint()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->isSupportTimeUpdateControlPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->mTimeUpdateControlPoint:[B

    array-length v0, v0

    .line 150
    :goto_0
    return v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTimeUpdateControlPoint(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 225
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->mTimeUpdateControlPoint:[B

    .line 229
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->updateGattCharacteristic()V

    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->isSupportTimeUpdateControlPoint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->mTimeUpdateControlPoint:[B

    array-length v0, v2

    .line 196
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    return v3

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->mTimeUpdateControlPoint:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 201
    add-int/lit8 v1, v0, 0x0

    .line 204
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateControlPoint;->updateGattCharacteristic()V

    .line 205
    const/4 v2, 0x1

    return v2
.end method
