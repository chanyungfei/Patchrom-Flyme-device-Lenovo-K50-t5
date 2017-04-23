.class public Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "DateTime.java"


# static fields
.field public static final DAY_OF_MONTH_IS_NOT_KNOWN:I

.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final MONTH_IS_NOT_KNOWN:I

.field public static final YEAR_IS_NOT_KNOWN:I


# instance fields
.field private mDay:[B

.field private mHours:[B

.field private mMinutes:[B

.field private mMonth:[B

.field private mSeconds:[B

.field private mYear:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "2A08"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 64
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->GATT_UUID:Ljava/util/UUID;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mYear:[B

    .line 87
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMonth:[B

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mDay:[B

    .line 103
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mHours:[B

    .line 111
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMinutes:[B

    .line 119
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mSeconds:[B

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 127
    const/16 v0, 0x62e

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setYear(I)Z

    .line 128
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setMonth(I)Z

    .line 129
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setDay(I)Z

    .line 130
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setHours(I)Z

    .line 131
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setMinutes(I)Z

    .line 132
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setSeconds(I)Z

    .line 125
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hours"    # I
    .param p5, "minutes"    # I
    .param p6, "seconds"    # I

    .prologue
    const/4 v1, 0x1

    .line 166
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mYear:[B

    .line 87
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMonth:[B

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mDay:[B

    .line 103
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mHours:[B

    .line 111
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMinutes:[B

    .line 119
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mSeconds:[B

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setYear(I)Z

    .line 175
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setMonth(I)Z

    .line 176
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setDay(I)Z

    .line 177
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setHours(I)Z

    .line 178
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setMinutes(I)Z

    .line 179
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setSeconds(I)Z

    .line 172
    return-void
.end method

.method public constructor <init>(IIIIIILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hours"    # I
    .param p5, "minutes"    # I
    .param p6, "seconds"    # I
    .param p7, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x1

    .line 193
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mYear:[B

    .line 87
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMonth:[B

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mDay:[B

    .line 103
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mHours:[B

    .line 111
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMinutes:[B

    .line 119
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mSeconds:[B

    .line 201
    invoke-virtual {p0, p7}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setYear(I)Z

    .line 203
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setMonth(I)Z

    .line 204
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setDay(I)Z

    .line 205
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setHours(I)Z

    .line 206
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setMinutes(I)Z

    .line 207
    invoke-virtual {p0, p6}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setSeconds(I)Z

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 5
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mYear:[B

    .line 87
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMonth:[B

    .line 95
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mDay:[B

    .line 103
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mHours:[B

    .line 111
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMinutes:[B

    .line 119
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mSeconds:[B

    .line 217
    invoke-virtual {p0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 218
    if-nez p1, :cond_0

    .line 219
    invoke-virtual {p0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 220
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setYear(I)Z

    .line 221
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setMonth(I)Z

    .line 222
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setDay(I)Z

    .line 223
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setHours(I)Z

    .line 224
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setMinutes(I)Z

    .line 225
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setSeconds(I)Z

    .line 216
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setYear(I)Z

    .line 228
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setMonth(I)Z

    .line 229
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setDay(I)Z

    .line 230
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setHours(I)Z

    .line 231
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setMinutes(I)Z

    .line 232
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setSeconds(I)Z

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mYear:[B

    .line 87
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMonth:[B

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mDay:[B

    .line 103
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mHours:[B

    .line 111
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMinutes:[B

    .line 119
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mSeconds:[B

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    .line 140
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x1

    .line 151
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mYear:[B

    .line 87
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMonth:[B

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mDay:[B

    .line 103
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mHours:[B

    .line 111
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMinutes:[B

    .line 119
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mSeconds:[B

    .line 152
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    .line 151
    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mDay:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mHours:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMinutes:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMonth:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mSeconds:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 275
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 277
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportYear()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mYear:[B

    array-length v1, v3

    .line 279
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mYear:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 280
    add-int/lit8 v0, v1, 0x0

    .line 283
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportMonth()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMonth:[B

    array-length v1, v3

    .line 285
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMonth:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 286
    add-int/2addr v0, v1

    .line 289
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportDay()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mDay:[B

    array-length v1, v3

    .line 291
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mDay:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 292
    add-int/2addr v0, v1

    .line 295
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportHours()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 296
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mHours:[B

    array-length v1, v3

    .line 297
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mHours:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 298
    add-int/2addr v0, v1

    .line 301
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportMinutes()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 302
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMinutes:[B

    array-length v1, v3

    .line 303
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMinutes:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 304
    add-int/2addr v0, v1

    .line 307
    .end local v1    # "fieldLen":I
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportSeconds()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 308
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mSeconds:[B

    array-length v1, v3

    .line 309
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mSeconds:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 310
    add-int/2addr v0, v1

    .line 313
    .end local v1    # "fieldLen":I
    :cond_5
    return-object v2
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mYear:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public isSupportDay()Z
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportHours()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportMinutes()Z
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportMonth()Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSeconds()Z
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportYear()Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportYear()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mYear:[B

    array-length v0, v0

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportMonth()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMonth:[B

    array-length v2, v2

    .line 243
    :goto_1
    add-int/2addr v2, v0

    .line 247
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportDay()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mDay:[B

    array-length v0, v0

    .line 243
    :goto_2
    add-int/2addr v2, v0

    .line 249
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportHours()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mHours:[B

    array-length v0, v0

    .line 243
    :goto_3
    add-int/2addr v2, v0

    .line 251
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportMinutes()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMinutes:[B

    array-length v0, v0

    .line 243
    :goto_4
    add-int/2addr v0, v2

    .line 253
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportSeconds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mSeconds:[B

    array-length v1, v1

    .line 243
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 244
    goto :goto_0

    :cond_2
    move v2, v1

    .line 246
    goto :goto_1

    :cond_3
    move v0, v1

    .line 248
    goto :goto_2

    :cond_4
    move v0, v1

    .line 250
    goto :goto_3

    :cond_5
    move v0, v1

    .line 252
    goto :goto_4
.end method

.method public setDay(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 481
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x0

    return v0

    .line 484
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mDay:[B

    .line 485
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->updateGattCharacteristic()V

    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public setHours(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 515
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    const/4 v0, 0x0

    return v0

    .line 518
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mHours:[B

    .line 519
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->updateGattCharacteristic()V

    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public setMinutes(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 549
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    const/4 v0, 0x0

    return v0

    .line 552
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMinutes:[B

    .line 553
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->updateGattCharacteristic()V

    .line 554
    const/4 v0, 0x1

    return v0
.end method

.method public setMonth(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 447
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x0

    return v0

    .line 450
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMonth:[B

    .line 451
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->updateGattCharacteristic()V

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public setSeconds(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 583
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    const/4 v0, 0x0

    return v0

    .line 586
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mSeconds:[B

    .line 587
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->updateGattCharacteristic()V

    .line 588
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 324
    const/4 v1, 0x0

    .line 326
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportYear()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mYear:[B

    array-length v0, v2

    .line 329
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    return v3

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mYear:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 334
    add-int/lit8 v1, v0, 0x0

    .line 337
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportMonth()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMonth:[B

    array-length v0, v2

    .line 340
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_2

    .line 341
    return v3

    .line 344
    :cond_2
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMonth:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 345
    add-int/2addr v1, v0

    .line 348
    .end local v0    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportDay()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 349
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mDay:[B

    array-length v0, v2

    .line 351
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_4

    .line 352
    return v3

    .line 355
    :cond_4
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mDay:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 356
    add-int/2addr v1, v0

    .line 359
    .end local v0    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportHours()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 360
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mHours:[B

    array-length v0, v2

    .line 362
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_6

    .line 363
    return v3

    .line 366
    :cond_6
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mHours:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 367
    add-int/2addr v1, v0

    .line 370
    .end local v0    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportMinutes()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 371
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMinutes:[B

    array-length v0, v2

    .line 373
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_8

    .line 374
    return v3

    .line 377
    :cond_8
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mMinutes:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 378
    add-int/2addr v1, v0

    .line 381
    .end local v0    # "fieldLen":I
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->isSupportSeconds()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 382
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mSeconds:[B

    array-length v0, v2

    .line 384
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_a

    .line 385
    return v3

    .line 388
    :cond_a
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mSeconds:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 389
    add-int/2addr v1, v0

    .line 392
    .end local v0    # "fieldLen":I
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->updateGattCharacteristic()V

    .line 393
    const/4 v2, 0x1

    return v2
.end method

.method public setYear(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 413
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x0

    return v0

    .line 416
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->mYear:[B

    .line 417
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->updateGattCharacteristic()V

    .line 418
    const/4 v0, 0x1

    return v0
.end method
