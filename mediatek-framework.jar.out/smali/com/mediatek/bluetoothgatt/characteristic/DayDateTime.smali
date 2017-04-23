.class public Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "DayDateTime.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

.field private mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "2A0A"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 64
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->GATT_UUID:Ljava/util/UUID;

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

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;)V
    .locals 1
    .param p1, "dateTime"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .param p2, "dayOfWeek"    # Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setDateTime(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 126
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setDayOfWeek(Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;)Z

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "dateTime"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .param p2, "dayOfWeek"    # Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    .line 140
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setDateTime(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 142
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setDayOfWeek(Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;)Z

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    .line 153
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 154
    if-eqz p1, :cond_0

    .line 155
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-direct {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setDateTime(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z

    .line 156
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-direct {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setDayOfWeek(Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;)Z

    .line 152
    :cond_0
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

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setValue([B)Z

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

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .line 83
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    .line 111
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setValue([B)Z

    .line 110
    return-void
.end method


# virtual methods
.method public getDateTime()Lcom/mediatek/bluetoothgatt/characteristic/DateTime;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    return-object v0
.end method

.method public getDayOfWeek()Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 191
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 193
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->isSupportDateTime()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 195
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 196
    add-int/lit8 v0, v1, 0x0

    .line 199
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->isSupportDayOfWeek()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->length()I

    move-result v1

    .line 201
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 202
    add-int/2addr v0, v1

    .line 205
    .end local v1    # "fieldLen":I
    :cond_1
    return-object v2
.end method

.method public isSupportDateTime()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDayOfWeek()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->isSupportDateTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v0

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->isSupportDayOfWeek()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->length()I

    move-result v1

    .line 167
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 168
    goto :goto_0
.end method

.method public setDateTime(Lcom/mediatek/bluetoothgatt/characteristic/DateTime;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x0

    return v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->updateGattCharacteristic()V

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public setDateTime([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->updateGattCharacteristic()V

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public setDayOfWeek(Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x0

    return v0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->updateGattCharacteristic()V

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public setDayOfWeek([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x0

    return v0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->updateGattCharacteristic()V

    .line 321
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 216
    const/4 v2, 0x0

    .line 218
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->isSupportDateTime()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->length()I

    move-result v1

    .line 221
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    return v4

    .line 225
    :cond_0
    new-array v0, v1, [B

    .line 227
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 228
    add-int/lit8 v2, v1, 0x0

    .line 230
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDateTime:Lcom/mediatek/bluetoothgatt/characteristic/DateTime;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DateTime;->setValue([B)Z

    .line 233
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->isSupportDayOfWeek()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->length()I

    move-result v1

    .line 236
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 237
    return v4

    .line 240
    :cond_2
    new-array v0, v1, [B

    .line 242
    .restart local v0    # "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 243
    add-int/2addr v2, v1

    .line 245
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->mDayOfWeek:Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DayOfWeek;->setValue([B)Z

    .line 248
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/DayDateTime;->updateGattCharacteristic()V

    .line 249
    const/4 v3, 0x1

    return v3
.end method
