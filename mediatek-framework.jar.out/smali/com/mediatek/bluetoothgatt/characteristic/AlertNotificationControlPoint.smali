.class public Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "AlertNotificationControlPoint.java"


# static fields
.field public static final CMD_DISABLE_NEW_ALERT_NOTIFICATION:I = 0x2

.field public static final CMD_DISABLE_UNREAD_ALERT_NOTIFICATION:I = 0x3

.field public static final CMD_ENABLE_NEW_ALERT_NOTIFICATION:I = 0x0

.field public static final CMD_ENABLE_UNREAD_ALERT_NOTIFICATION:I = 0x1

.field public static final CMD_NOTIFY_NEW_ALERT_IMMEDIATELY:I = 0x4

.field public static final CMD_NOTIFY_UNREAD_ALERT_IMMEDIATELY:I = 0x5

.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

.field private mCommandId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A44"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCommandId:[B

    .line 111
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setCommandId(I)Z

    .line 117
    return-void
.end method

.method public constructor <init>(ILcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;)V
    .locals 1
    .param p1, "commandId"    # I
    .param p2, "categoryId"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCommandId:[B

    .line 111
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setCommandId(I)Z

    .line 154
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setCategoryId(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;)Z

    .line 151
    return-void
.end method

.method public constructor <init>(ILcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "commandId"    # I
    .param p2, "categoryId"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCommandId:[B

    .line 111
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 168
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setCommandId(I)Z

    .line 170
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setCategoryId(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;)Z

    .line 167
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCommandId:[B

    .line 111
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setValue([B)Z

    .line 127
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCommandId:[B

    .line 111
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 139
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setValue([B)Z

    .line 138
    return-void
.end method


# virtual methods
.method public getCategoryId()Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    return-object v0
.end method

.method public getCommandId()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCommandId:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 207
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 209
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->isSupportCommandId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCommandId:[B

    array-length v1, v3

    .line 211
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCommandId:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 212
    add-int/lit8 v0, v1, 0x0

    .line 215
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->isSupportCategoryId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->length()I

    move-result v1

    .line 217
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 218
    add-int/2addr v0, v1

    .line 221
    .end local v1    # "fieldLen":I
    :cond_1
    return-object v2
.end method

.method public isSupportCategoryId()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportCommandId()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->isSupportCommandId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCommandId:[B

    array-length v0, v0

    .line 185
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->isSupportCategoryId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->length()I

    move-result v1

    .line 183
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 184
    goto :goto_0
.end method

.method public setCategoryId(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x0

    return v0

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->updateGattCharacteristic()V

    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public setCategoryId([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 315
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    return v0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->updateGattCharacteristic()V

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public setCommandId(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 281
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x0

    return v0

    .line 284
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCommandId:[B

    .line 285
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->updateGattCharacteristic()V

    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 232
    const/4 v2, 0x0

    .line 234
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->isSupportCommandId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCommandId:[B

    array-length v1, v3

    .line 237
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 238
    return v4

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCommandId:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 242
    add-int/lit8 v2, v1, 0x0

    .line 245
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->isSupportCategoryId()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->length()I

    move-result v1

    .line 248
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 249
    return v4

    .line 252
    :cond_2
    new-array v0, v1, [B

    .line 254
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 255
    add-int/2addr v2, v1

    .line 257
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setValue([B)Z

    .line 260
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->updateGattCharacteristic()V

    .line 261
    const/4 v3, 0x1

    return v3
.end method
