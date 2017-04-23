.class public Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "UnreadAlertStatus.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

.field private mUnreadCount:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A45"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mUnreadCount:[B

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setUnreadCount(I)Z

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;I)V
    .locals 1
    .param p1, "categoryId"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;
    .param p2, "unreadCount"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mUnreadCount:[B

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setCategoryId(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;)Z

    .line 126
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setUnreadCount(I)Z

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "categoryId"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;
    .param p2, "unreadCount"    # I
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mUnreadCount:[B

    .line 140
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setCategoryId(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;)Z

    .line 142
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setUnreadCount(I)Z

    .line 139
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mUnreadCount:[B

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setValue([B)Z

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

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mUnreadCount:[B

    .line 111
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setValue([B)Z

    .line 110
    return-void
.end method


# virtual methods
.method public getCategoryId()Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mUnreadCount:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 179
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 181
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->isSupportCategoryId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->length()I

    move-result v1

    .line 183
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 184
    add-int/lit8 v0, v1, 0x0

    .line 187
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->isSupportUnreadCount()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mUnreadCount:[B

    array-length v1, v3

    .line 189
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mUnreadCount:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 190
    add-int/2addr v0, v1

    .line 193
    .end local v1    # "fieldLen":I
    :cond_1
    return-object v2
.end method

.method public isSupportCategoryId()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUnreadCount()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->isSupportCategoryId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->length()I

    move-result v0

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->isSupportUnreadCount()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mUnreadCount:[B

    array-length v1, v1

    .line 155
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 156
    goto :goto_0
.end method

.method public setCategoryId(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->updateGattCharacteristic()V

    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public setCategoryId([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const/4 v0, 0x0

    return v0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->updateGattCharacteristic()V

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public setUnreadCount(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 301
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x0

    return v0

    .line 304
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mUnreadCount:[B

    .line 305
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->updateGattCharacteristic()V

    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 204
    const/4 v2, 0x0

    .line 206
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->isSupportCategoryId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->length()I

    move-result v1

    .line 209
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    return v4

    .line 213
    :cond_0
    new-array v0, v1, [B

    .line 215
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 216
    add-int/lit8 v2, v1, 0x0

    .line 218
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setValue([B)Z

    .line 221
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->isSupportUnreadCount()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mUnreadCount:[B

    array-length v1, v3

    .line 224
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 225
    return v4

    .line 228
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->mUnreadCount:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 229
    add-int/2addr v2, v1

    .line 232
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->updateGattCharacteristic()V

    .line 233
    const/4 v3, 0x1

    return v3
.end method
