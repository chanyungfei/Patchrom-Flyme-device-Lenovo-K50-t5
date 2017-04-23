.class public Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "AlertCategoryId.java"


# static fields
.field public static final CATEGORY_ALL:I = 0xff

.field public static final CATEGORY_CALL:I = 0x3

.field public static final CATEGORY_EMAIL:I = 0x1

.field public static final CATEGORY_HIGH_PRIORITIZED_ALERT:I = 0x8

.field public static final CATEGORY_INSTANT_MESSAGE:I = 0x9

.field public static final CATEGORY_MISSED_CALL:I = 0x4

.field public static final CATEGORY_NEWS:I = 0x2

.field public static final CATEGORY_SCHEDULE:I = 0x7

.field public static final CATEGORY_SIMPLE_ALERT:I = 0x0

.field public static final CATEGORY_SMS_MMS:I = 0x5

.field public static final CATEGORY_VOICE_MAIL:I = 0x6

.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mCategoryId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A43"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->mCategoryId:[B

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setCategoryId(I)Z

    .line 135
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "categoryId"    # I

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->mCategoryId:[B

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setCategoryId(I)Z

    .line 167
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "categoryId"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->mCategoryId:[B

    .line 181
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setCategoryId(I)Z

    .line 180
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->mCategoryId:[B

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setValue([B)Z

    .line 145
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->mCategoryId:[B

    .line 157
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setValue([B)Z

    .line 156
    return-void
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->mCategoryId:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 217
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 219
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->isSupportCategoryId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->mCategoryId:[B

    array-length v1, v3

    .line 221
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->mCategoryId:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 222
    add-int/lit8 v0, v1, 0x0

    .line 225
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportCategoryId()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->isSupportCategoryId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->mCategoryId:[B

    array-length v0, v0

    .line 195
    :goto_0
    return v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCategoryId(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 270
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    return v0

    .line 273
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->mCategoryId:[B

    .line 274
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->updateGattCharacteristic()V

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->isSupportCategoryId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->mCategoryId:[B

    array-length v0, v2

    .line 241
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    return v3

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->mCategoryId:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 246
    add-int/lit8 v1, v0, 0x0

    .line 249
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryId;->updateGattCharacteristic()V

    .line 250
    const/4 v2, 0x1

    return v2
.end method
