.class public Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "SupportedNewAlertCategory.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A47"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V
    .locals 1
    .param p1, "categoryIdBitMask"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->setCategoryIdBitMask(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)Z

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "categoryIdBitMask"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    .line 127
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->setCategoryIdBitMask(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)Z

    .line 126
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->setValue([B)Z

    .line 91
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    .line 103
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->setValue([B)Z

    .line 102
    return-void
.end method


# virtual methods
.method public getCategoryIdBitMask()Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 163
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 165
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->isSupportCategoryIdBitMask()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->length()I

    move-result v1

    .line 167
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 168
    add-int/lit8 v0, v1, 0x0

    .line 171
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportCategoryIdBitMask()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->isSupportCategoryIdBitMask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->length()I

    move-result v0

    .line 141
    :goto_0
    return v0

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCategoryIdBitMask(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    return v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->updateGattCharacteristic()V

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public setCategoryIdBitMask([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->updateGattCharacteristic()V

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->isSupportCategoryIdBitMask()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->length()I

    move-result v1

    .line 187
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    return v4

    .line 191
    :cond_0
    new-array v0, v1, [B

    .line 193
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 194
    add-int/lit8 v2, v1, 0x0

    .line 196
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->mCategoryIdBitMask:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setValue([B)Z

    .line 199
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->updateGattCharacteristic()V

    .line 200
    const/4 v3, 0x1

    return v3
.end method
