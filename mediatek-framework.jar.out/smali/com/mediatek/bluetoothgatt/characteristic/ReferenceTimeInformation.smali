.class public Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "ReferenceTimeInformation.java"


# static fields
.field public static final DAYS_SINCE_UPDATE_255:I = 0xff

.field public static final DAYS_SINCE_UPDATE_MAX:I = 0xfe

.field public static final DAYS_SINCE_UPDATE_MIN:I = 0x0

.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final HOURS_SINCE_UPDATE_255:I = 0xff

.field public static final HOURS_SINCE_UPDATE_MAX:I = 0xfe

.field public static final HOURS_SINCE_UPDATE_MIN:I


# instance fields
.field private mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

.field private mDaysSinceUpdate:[B

.field private mHoursSinceUpdate:[B

.field private mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A14"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    .line 87
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    .line 95
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mDaysSinceUpdate:[B

    .line 103
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mHoursSinceUpdate:[B

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setDaysSinceUpdate(I)Z

    .line 112
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setHoursSinceUpdate(I)Z

    .line 109
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "source"    # I
    .param p2, "accuracy"    # I
    .param p3, "daysSinceUpdate"    # I
    .param p4, "hoursSinceUpdate"    # I

    .prologue
    const/4 v1, 0x1

    .line 188
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    .line 87
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mDaysSinceUpdate:[B

    .line 103
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mHoursSinceUpdate:[B

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 191
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-direct {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setSource(Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;)Z

    .line 192
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-direct {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setAccuracy(Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;)Z

    .line 193
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setDaysSinceUpdate(I)Z

    .line 194
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setHoursSinceUpdate(I)Z

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;II)V
    .locals 2
    .param p1, "source"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;
    .param p2, "accuracy"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;
    .param p3, "daysSinceUpdate"    # I
    .param p4, "hoursSinceUpdate"    # I

    .prologue
    const/4 v1, 0x1

    .line 144
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    .line 87
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mDaysSinceUpdate:[B

    .line 103
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mHoursSinceUpdate:[B

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setSource(Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;)Z

    .line 151
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setAccuracy(Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;)Z

    .line 152
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setDaysSinceUpdate(I)Z

    .line 153
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setHoursSinceUpdate(I)Z

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "source"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;
    .param p2, "accuracy"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;
    .param p3, "daysSinceUpdate"    # I
    .param p4, "hoursSinceUpdate"    # I
    .param p5, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x1

    .line 165
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    .line 87
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mDaysSinceUpdate:[B

    .line 103
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mHoursSinceUpdate:[B

    .line 171
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 172
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setSource(Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;)Z

    .line 173
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setAccuracy(Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;)Z

    .line 174
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setDaysSinceUpdate(I)Z

    .line 175
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setHoursSinceUpdate(I)Z

    .line 170
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    .line 87
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mDaysSinceUpdate:[B

    .line 103
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mHoursSinceUpdate:[B

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setValue([B)Z

    .line 120
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x1

    .line 131
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 80
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    .line 87
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mDaysSinceUpdate:[B

    .line 103
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mHoursSinceUpdate:[B

    .line 132
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setValue([B)Z

    .line 131
    return-void
.end method


# virtual methods
.method public getAccuracy()Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    return-object v0
.end method

.method public getDaysSinceUpdate()I
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mDaysSinceUpdate:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getHoursSinceUpdate()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mHoursSinceUpdate:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getSource()Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 232
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 234
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->isSupportSource()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->length()I

    move-result v1

    .line 236
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 237
    add-int/lit8 v0, v1, 0x0

    .line 240
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->isSupportAccuracy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->length()I

    move-result v1

    .line 242
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 243
    add-int/2addr v0, v1

    .line 246
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->isSupportDaysSinceUpdate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mDaysSinceUpdate:[B

    array-length v1, v3

    .line 248
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mDaysSinceUpdate:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 249
    add-int/2addr v0, v1

    .line 252
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->isSupportHoursSinceUpdate()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 253
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mHoursSinceUpdate:[B

    array-length v1, v3

    .line 254
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mHoursSinceUpdate:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 255
    add-int/2addr v0, v1

    .line 258
    .end local v1    # "fieldLen":I
    :cond_3
    return-object v2
.end method

.method public isSupportAccuracy()Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDaysSinceUpdate()Z
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportHoursSinceUpdate()Z
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSource()Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->isSupportSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->length()I

    move-result v0

    .line 206
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->isSupportAccuracy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-virtual {v2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->length()I

    move-result v2

    .line 204
    :goto_1
    add-int/2addr v2, v0

    .line 208
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->isSupportDaysSinceUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mDaysSinceUpdate:[B

    array-length v0, v0

    .line 204
    :goto_2
    add-int/2addr v0, v2

    .line 210
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->isSupportHoursSinceUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mHoursSinceUpdate:[B

    array-length v1, v1

    .line 204
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 205
    goto :goto_0

    :cond_2
    move v2, v1

    .line 207
    goto :goto_1

    :cond_3
    move v0, v1

    .line 209
    goto :goto_2
.end method

.method public setAccuracy(Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    return v0

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->updateGattCharacteristic()V

    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public setAccuracy([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 392
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x0

    return v0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->updateGattCharacteristic()V

    .line 396
    const/4 v0, 0x1

    return v0
.end method

.method public setDaysSinceUpdate(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 440
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    return v0

    .line 443
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mDaysSinceUpdate:[B

    .line 444
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->updateGattCharacteristic()V

    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method public setHoursSinceUpdate(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 474
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    const/4 v0, 0x0

    return v0

    .line 477
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mHoursSinceUpdate:[B

    .line 478
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->updateGattCharacteristic()V

    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public setSource(Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    return v0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->updateGattCharacteristic()V

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public setSource([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x0

    return v0

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->updateGattCharacteristic()V

    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 269
    const/4 v2, 0x0

    .line 271
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->isSupportSource()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->length()I

    move-result v1

    .line 274
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    return v4

    .line 278
    :cond_0
    new-array v0, v1, [B

    .line 280
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 281
    add-int/lit8 v2, v1, 0x0

    .line 283
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mSource:Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeSource;->setValue([B)Z

    .line 286
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->isSupportAccuracy()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->length()I

    move-result v1

    .line 289
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 290
    return v4

    .line 293
    :cond_2
    new-array v0, v1, [B

    .line 295
    .restart local v0    # "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 296
    add-int/2addr v2, v1

    .line 298
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mAccuracy:Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeAccuracy;->setValue([B)Z

    .line 301
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->isSupportDaysSinceUpdate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 302
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mDaysSinceUpdate:[B

    array-length v1, v3

    .line 304
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_4

    .line 305
    return v4

    .line 308
    :cond_4
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mDaysSinceUpdate:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 309
    add-int/2addr v2, v1

    .line 312
    .end local v1    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->isSupportHoursSinceUpdate()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 313
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mHoursSinceUpdate:[B

    array-length v1, v3

    .line 315
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_6

    .line 316
    return v4

    .line 319
    :cond_6
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->mHoursSinceUpdate:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 320
    add-int/2addr v2, v1

    .line 323
    .end local v1    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->updateGattCharacteristic()V

    .line 324
    const/4 v3, 0x1

    return v3
.end method
