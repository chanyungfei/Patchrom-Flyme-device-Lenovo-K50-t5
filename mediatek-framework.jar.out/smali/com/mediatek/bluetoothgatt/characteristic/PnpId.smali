.class public Lcom/mediatek/bluetoothgatt/characteristic/PnpId;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "PnpId.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mProductId:[B

.field private mProductVersion:[B

.field private mVendorId:[B

.field private mVendorIdSource:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A50"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorIdSource:[B

    .line 84
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorId:[B

    .line 92
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductId:[B

    .line 100
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductVersion:[B

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 108
    invoke-virtual {p0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setVendorIdSource(I)Z

    .line 109
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setVendorId(I)Z

    .line 110
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setProductId(I)Z

    .line 111
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setProductVersion(I)Z

    .line 106
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "vendorIdSource"    # I
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "productVersion"    # I

    .prologue
    const/4 v1, 0x2

    .line 143
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorIdSource:[B

    .line 84
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorId:[B

    .line 92
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductId:[B

    .line 100
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductVersion:[B

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setVendorIdSource(I)Z

    .line 150
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setVendorId(I)Z

    .line 151
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setProductId(I)Z

    .line 152
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setProductVersion(I)Z

    .line 147
    return-void
.end method

.method public constructor <init>(IIIILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "vendorIdSource"    # I
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "productVersion"    # I
    .param p5, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x2

    .line 164
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorIdSource:[B

    .line 84
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorId:[B

    .line 92
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductId:[B

    .line 100
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductVersion:[B

    .line 170
    invoke-virtual {p0, p5}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 171
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setVendorIdSource(I)Z

    .line 172
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setVendorId(I)Z

    .line 173
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setProductId(I)Z

    .line 174
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setProductVersion(I)Z

    .line 169
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x2

    .line 119
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorIdSource:[B

    .line 84
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorId:[B

    .line 92
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductId:[B

    .line 100
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductVersion:[B

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setValue([B)Z

    .line 119
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x2

    .line 130
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorIdSource:[B

    .line 84
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorId:[B

    .line 92
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductId:[B

    .line 100
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductVersion:[B

    .line 131
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setValue([B)Z

    .line 130
    return-void
.end method


# virtual methods
.method public getProductId()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductId:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getProductVersion()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductVersion:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 215
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 217
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->isSupportVendorIdSource()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorIdSource:[B

    array-length v1, v3

    .line 219
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorIdSource:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 220
    add-int/lit8 v0, v1, 0x0

    .line 223
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->isSupportVendorId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorId:[B

    array-length v1, v3

    .line 225
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorId:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 226
    add-int/2addr v0, v1

    .line 229
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->isSupportProductId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductId:[B

    array-length v1, v3

    .line 231
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductId:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 232
    add-int/2addr v0, v1

    .line 235
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->isSupportProductVersion()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 236
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductVersion:[B

    array-length v1, v3

    .line 237
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductVersion:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 238
    add-int/2addr v0, v1

    .line 241
    .end local v1    # "fieldLen":I
    :cond_3
    return-object v2
.end method

.method public getVendorId()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorId:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16ToInt([B)I

    move-result v0

    return v0
.end method

.method public getVendorIdSource()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorIdSource:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public isSupportProductId()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportProductVersion()Z
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportVendorId()Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportVendorIdSource()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->isSupportVendorIdSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorIdSource:[B

    array-length v0, v0

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->isSupportVendorId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorId:[B

    array-length v2, v2

    .line 187
    :goto_1
    add-int/2addr v2, v0

    .line 191
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->isSupportProductId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductId:[B

    array-length v0, v0

    .line 187
    :goto_2
    add-int/2addr v0, v2

    .line 193
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->isSupportProductVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductVersion:[B

    array-length v1, v1

    .line 187
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 188
    goto :goto_0

    :cond_2
    move v2, v1

    .line 190
    goto :goto_1

    :cond_3
    move v0, v1

    .line 192
    goto :goto_2
.end method

.method public setProductId(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 387
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    const/4 v0, 0x0

    return v0

    .line 390
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductId:[B

    .line 391
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->updateGattCharacteristic()V

    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method public setProductVersion(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 421
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    return v0

    .line 424
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductVersion:[B

    .line 425
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->updateGattCharacteristic()V

    .line 426
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 252
    const/4 v1, 0x0

    .line 254
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->isSupportVendorIdSource()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorIdSource:[B

    array-length v0, v2

    .line 257
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    return v3

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorIdSource:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 262
    add-int/lit8 v1, v0, 0x0

    .line 265
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->isSupportVendorId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 266
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorId:[B

    array-length v0, v2

    .line 268
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_2

    .line 269
    return v3

    .line 272
    :cond_2
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorId:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 273
    add-int/2addr v1, v0

    .line 276
    .end local v0    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->isSupportProductId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 277
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductId:[B

    array-length v0, v2

    .line 279
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_4

    .line 280
    return v3

    .line 283
    :cond_4
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductId:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 284
    add-int/2addr v1, v0

    .line 287
    .end local v0    # "fieldLen":I
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->isSupportProductVersion()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 288
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductVersion:[B

    array-length v0, v2

    .line 290
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_6

    .line 291
    return v3

    .line 294
    :cond_6
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mProductVersion:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 295
    add-int/2addr v1, v0

    .line 298
    .end local v0    # "fieldLen":I
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->updateGattCharacteristic()V

    .line 299
    const/4 v2, 0x1

    return v2
.end method

.method public setVendorId(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 353
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint16RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x0

    return v0

    .line 356
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint16(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorId:[B

    .line 357
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->updateGattCharacteristic()V

    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method public setVendorIdSource(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 319
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x0

    return v0

    .line 322
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->mVendorIdSource:[B

    .line 323
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;->updateGattCharacteristic()V

    .line 324
    const/4 v0, 0x1

    return v0
.end method
