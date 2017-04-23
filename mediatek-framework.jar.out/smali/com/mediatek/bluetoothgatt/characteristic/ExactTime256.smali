.class public Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "ExactTime256.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

.field private mFractions256:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "2A0C"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 64
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->GATT_UUID:Ljava/util/UUID;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mFractions256:[B

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setFractions256(I)Z

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;I)V
    .locals 1
    .param p1, "dayDateTime"    # Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;
    .param p2, "fractions256"    # I

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mFractions256:[B

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setDayDateTime(Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;)Z

    .line 127
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setFractions256(I)Z

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "dayDateTime"    # Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;
    .param p2, "fractions256"    # I
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mFractions256:[B

    .line 141
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setDayDateTime(Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;)Z

    .line 143
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setFractions256(I)Z

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mFractions256:[B

    .line 154
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 155
    if-nez p1, :cond_0

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setFractions256(I)Z

    .line 153
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-direct {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setDayDateTime(Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;)Z

    .line 159
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setFractions256(I)Z

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mFractions256:[B

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setValue([B)Z

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

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mFractions256:[B

    .line 112
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setValue([B)Z

    .line 111
    return-void
.end method


# virtual methods
.method public getDayDateTime()Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    return-object v0
.end method

.method public getFractions256()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mFractions256:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 194
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 196
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->isSupportDayDateTime()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->length()I

    move-result v1

    .line 198
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 199
    add-int/lit8 v0, v1, 0x0

    .line 202
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->isSupportFractions256()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mFractions256:[B

    array-length v1, v3

    .line 204
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mFractions256:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 205
    add-int/2addr v0, v1

    .line 208
    .end local v1    # "fieldLen":I
    :cond_1
    return-object v2
.end method

.method public isSupportDayDateTime()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportFractions256()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->isSupportDayDateTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->length()I

    move-result v0

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->isSupportFractions256()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mFractions256:[B

    array-length v1, v1

    .line 170
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 171
    goto :goto_0
.end method

.method public setDayDateTime(Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    return v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->updateGattCharacteristic()V

    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public setDayDateTime([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->updateGattCharacteristic()V

    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public setFractions256(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 316
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    return v0

    .line 319
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mFractions256:[B

    .line 320
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->updateGattCharacteristic()V

    .line 321
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 219
    const/4 v2, 0x0

    .line 221
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->isSupportDayDateTime()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->length()I

    move-result v1

    .line 224
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    return v4

    .line 228
    :cond_0
    new-array v0, v1, [B

    .line 230
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 231
    add-int/lit8 v2, v1, 0x0

    .line 233
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mDayDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setValue([B)Z

    .line 236
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->isSupportFractions256()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mFractions256:[B

    array-length v1, v3

    .line 239
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 240
    return v4

    .line 243
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->mFractions256:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 244
    add-int/2addr v2, v1

    .line 247
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->updateGattCharacteristic()V

    .line 248
    const/4 v3, 0x1

    return v3
.end method
