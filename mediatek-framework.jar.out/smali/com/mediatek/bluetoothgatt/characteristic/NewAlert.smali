.class public Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "NewAlert.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

.field private mNumberOfNewAlert:[B

.field private mTextStringInformation:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A46"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mNumberOfNewAlert:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mTextStringInformation:[B

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setNumberOfNewAlert(I)Z

    .line 100
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setTextStringInformation(Ljava/lang/String;)Z

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;ILjava/lang/String;)V
    .locals 1
    .param p1, "categoryId"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;
    .param p2, "numberOfNewAlert"    # I
    .param p3, "textStringInformation"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mNumberOfNewAlert:[B

    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mTextStringInformation:[B

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setCategoryId(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;)Z

    .line 137
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setNumberOfNewAlert(I)Z

    .line 138
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setTextStringInformation(Ljava/lang/String;)Z

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;ILjava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "categoryId"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;
    .param p2, "numberOfNewAlert"    # I
    .param p3, "textStringInformation"    # Ljava/lang/String;
    .param p4, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mNumberOfNewAlert:[B

    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mTextStringInformation:[B

    .line 154
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setCategoryId(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;)Z

    .line 156
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setNumberOfNewAlert(I)Z

    .line 157
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setTextStringInformation(Ljava/lang/String;)Z

    .line 153
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mNumberOfNewAlert:[B

    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mTextStringInformation:[B

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setValue([B)Z

    .line 108
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mNumberOfNewAlert:[B

    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mTextStringInformation:[B

    .line 120
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setValue([B)Z

    .line 119
    return-void
.end method


# virtual methods
.method public getCategoryId()Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    return-object v0
.end method

.method public getNumberOfNewAlert()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mNumberOfNewAlert:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getTextStringInformation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mTextStringInformation:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->utf8sToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 196
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 198
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->isSupportCategoryId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->length()I

    move-result v1

    .line 200
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 201
    add-int/lit8 v0, v1, 0x0

    .line 204
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->isSupportNumberOfNewAlert()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mNumberOfNewAlert:[B

    array-length v1, v3

    .line 206
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mNumberOfNewAlert:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 207
    add-int/2addr v0, v1

    .line 210
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->isSupportTextStringInformation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mTextStringInformation:[B

    array-length v1, v3

    .line 212
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mTextStringInformation:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 213
    add-int/2addr v0, v1

    .line 216
    .end local v1    # "fieldLen":I
    :cond_2
    return-object v2
.end method

.method public isSupportCategoryId()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportNumberOfNewAlert()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportTextStringInformation()Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->isSupportCategoryId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->length()I

    move-result v0

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->isSupportNumberOfNewAlert()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mNumberOfNewAlert:[B

    array-length v2, v2

    .line 170
    :goto_1
    add-int/2addr v0, v2

    .line 174
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->isSupportTextStringInformation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mTextStringInformation:[B

    array-length v1, v1

    .line 170
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 171
    goto :goto_0

    :cond_2
    move v2, v1

    .line 173
    goto :goto_1
.end method

.method public setCategoryId(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    return v0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->updateGattCharacteristic()V

    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public setCategoryId([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    return v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->updateGattCharacteristic()V

    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public setNumberOfNewAlert(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 331
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mNumberOfNewAlert:[B

    .line 335
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->updateGattCharacteristic()V

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public setTextStringInformation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->stringToUtf8s(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mTextStringInformation:[B

    .line 366
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->updateGattCharacteristic()V

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 227
    const/4 v2, 0x0

    .line 229
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->isSupportCategoryId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->length()I

    move-result v1

    .line 232
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 233
    return v4

    .line 236
    :cond_0
    new-array v0, v1, [B

    .line 238
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 239
    add-int/lit8 v2, v1, 0x0

    .line 241
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mCategoryId:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setValue([B)Z

    .line 244
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->isSupportNumberOfNewAlert()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mNumberOfNewAlert:[B

    array-length v1, v3

    .line 247
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 248
    return v4

    .line 251
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mNumberOfNewAlert:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 252
    add-int/2addr v2, v1

    .line 255
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->isSupportTextStringInformation()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 256
    array-length v3, p1

    sub-int/2addr v3, v2

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mTextStringInformation:[B

    .line 257
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mTextStringInformation:[B

    array-length v1, v3

    .line 258
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->mTextStringInformation:[B

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 259
    add-int/2addr v2, v1

    .line 262
    .end local v1    # "fieldLen":I
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->updateGattCharacteristic()V

    .line 263
    const/4 v3, 0x1

    return v3
.end method
