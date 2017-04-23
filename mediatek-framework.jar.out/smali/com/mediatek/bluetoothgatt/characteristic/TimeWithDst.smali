.class public Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "TimeWithDst.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

.field private mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "2A11"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 64
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->GATT_UUID:Ljava/util/UUID;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;)V
    .locals 1
    .param p1, "dateTime"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .param p2, "dstOffset"    # Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setDateTime(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 126
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setDstOffset(Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;)Z

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "dateTime"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .param p2, "dstOffset"    # Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .line 140
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setDateTime(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 142
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setDstOffset(Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;)Z

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "c"    # Ljava/util/Calendar;
    .param p2, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 154
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setDateTime(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 155
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setDstOffset(Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;)Z

    .line 152
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setValue([B)Z

    .line 99
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .line 111
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setValue([B)Z

    .line 110
    return-void
.end method


# virtual methods
.method public getDateTime()Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    return-object v0
.end method

.method public getDstOffset()Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 189
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 191
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->isSupportDateTime()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 193
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 194
    add-int/lit8 v0, v1, 0x0

    .line 197
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->isSupportDstOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->length()I

    move-result v1

    .line 199
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 200
    add-int/2addr v0, v1

    .line 203
    .end local v1    # "fieldLen":I
    :cond_1
    return-object v2
.end method

.method public isSupportDateTime()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDstOffset()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->isSupportDateTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v0

    .line 167
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->isSupportDstOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->length()I

    move-result v1

    .line 165
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 166
    goto :goto_0
.end method

.method public setDateTime(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    return v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->updateGattCharacteristic()V

    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public setDateTime([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->updateGattCharacteristic()V

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public setDstOffset(Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x0

    return v0

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->updateGattCharacteristic()V

    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public setDstOffset([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 315
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    return v0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->updateGattCharacteristic()V

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 214
    const/4 v2, 0x0

    .line 216
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->isSupportDateTime()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 219
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 220
    return v4

    .line 223
    :cond_0
    new-array v0, v1, [B

    .line 225
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 226
    add-int/lit8 v2, v1, 0x0

    .line 228
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    .line 231
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->isSupportDstOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 232
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->length()I

    move-result v1

    .line 234
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 235
    return v4

    .line 238
    :cond_2
    new-array v0, v1, [B

    .line 240
    .restart local v0    # "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 241
    add-int/2addr v2, v1

    .line 243
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->mDstOffset:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setValue([B)Z

    .line 246
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeWithDst;->updateGattCharacteristic()V

    .line 247
    const/4 v3, 0x1

    return v3
.end method
