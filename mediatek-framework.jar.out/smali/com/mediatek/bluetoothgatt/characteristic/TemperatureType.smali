.class public Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "TemperatureType.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final TEMPERATURE_TYPE_ARMPIT:I = 0x1

.field public static final TEMPERATURE_TYPE_BODY:I = 0x2

.field public static final TEMPERATURE_TYPE_EAR:I = 0x3

.field public static final TEMPERATURE_TYPE_FINGER:I = 0x4

.field public static final TEMPERATURE_TYPE_GASTRO:I = 0x5

.field public static final TEMPERATURE_TYPE_MOUTH:I = 0x6

.field public static final TEMPERATURE_TYPE_RECTUM:I = 0x7

.field public static final TEMPERATURE_TYPE_TOE:I = 0x8

.field public static final TEMPERATURE_TYPE_TYMPANUM:I = 0x9


# instance fields
.field private mTemperatureTextDescription:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A1D"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 87
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->mTemperatureTextDescription:[B

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setTemperatureTextDescription(I)Z

    .line 93
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "temperatureTextDescription"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->mTemperatureTextDescription:[B

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setTemperatureTextDescription(I)Z

    .line 125
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "temperatureTextDescription"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->mTemperatureTextDescription:[B

    .line 139
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setTemperatureTextDescription(I)Z

    .line 138
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->mTemperatureTextDescription:[B

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setValue([B)Z

    .line 103
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->mTemperatureTextDescription:[B

    .line 115
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setValue([B)Z

    .line 114
    return-void
.end method


# virtual methods
.method public getTemperatureTextDescription()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->mTemperatureTextDescription:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->bit8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 175
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 177
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->isSupportTemperatureTextDescription()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->mTemperatureTextDescription:[B

    array-length v1, v3

    .line 179
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->mTemperatureTextDescription:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 180
    add-int/lit8 v0, v1, 0x0

    .line 183
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportTemperatureTextDescription()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->isSupportTemperatureTextDescription()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->mTemperatureTextDescription:[B

    array-length v0, v0

    .line 153
    :goto_0
    return v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTemperatureTextDescription(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 228
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->bit8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToBit8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->mTemperatureTextDescription:[B

    .line 232
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->updateGattCharacteristic()V

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 194
    const/4 v1, 0x0

    .line 196
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->isSupportTemperatureTextDescription()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->mTemperatureTextDescription:[B

    array-length v0, v2

    .line 199
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    return v3

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->mTemperatureTextDescription:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 204
    add-int/lit8 v1, v0, 0x0

    .line 207
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;->updateGattCharacteristic()V

    .line 208
    const/4 v2, 0x1

    return v2
.end method
