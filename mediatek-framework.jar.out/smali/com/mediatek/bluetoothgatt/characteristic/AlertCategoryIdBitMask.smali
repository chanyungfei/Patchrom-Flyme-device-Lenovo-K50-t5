.class public Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "AlertCategoryIdBitMask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;,
        Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;
    }
.end annotation


# static fields
.field public static final CATEGORY_BM_CALL:I = 0x8

.field public static final CATEGORY_BM_EMAIL:I = 0x2

.field public static final CATEGORY_BM_HIGH_PRIORITIZED_ALERT:I = 0x100

.field public static final CATEGORY_BM_INSTANT_MESSAGE:I = 0x200

.field public static final CATEGORY_BM_MISSED_CALL:I = 0x10

.field public static final CATEGORY_BM_NEWS:I = 0x4

.field public static final CATEGORY_BM_SCHEDULE:I = 0x80

.field public static final CATEGORY_BM_SIMPLE_ALERT:I = 0x1

.field public static final CATEGORY_BM_SMS_MMS:I = 0x20

.field public static final CATEGORY_BM_VOICE_MAIL:I = 0x40

.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

.field private mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A42"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    .line 91
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 99
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCategoryIdBitMask0(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;)Z

    .line 100
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCategoryIdBitMask1(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;)Z

    .line 97
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "categoryIdBitMask"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 160
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    new-instance v2, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    invoke-direct {v2, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    iput-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    .line 91
    new-instance v2, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    invoke-direct {v2, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    iput-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    .line 161
    and-int/lit16 v2, p1, 0xff

    int-to-byte v0, v2

    .line 162
    .local v0, "bitMask0":B
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 164
    .local v1, "bitMask1":B
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 165
    new-instance v2, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    new-array v3, v5, [B

    aput-byte v0, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;[B)V

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCategoryIdBitMask0(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;)Z

    .line 166
    new-instance v2, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    new-array v3, v5, [B

    aput-byte v1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;[B)V

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCategoryIdBitMask1(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;)Z

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;)V
    .locals 1
    .param p1, "categoryIdBitMask0"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;
    .param p2, "categoryIdBitMask1"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    .line 91
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCategoryIdBitMask0(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;)Z

    .line 135
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCategoryIdBitMask1(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;)Z

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "categoryIdBitMask0"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;
    .param p2, "categoryIdBitMask1"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    .line 91
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    .line 149
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCategoryIdBitMask0(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;)Z

    .line 151
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCategoryIdBitMask1(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;)Z

    .line 148
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    .line 91
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setValue([B)Z

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

    .line 84
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    .line 91
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    .line 120
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setValue([B)Z

    .line 119
    return-void
.end method


# virtual methods
.method public getCategoryIdBitMask0()Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    return-object v0
.end method

.method public getCategoryIdBitMask1()Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 200
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 202
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->isSupportCategoryIdBitMask0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->length()I

    move-result v1

    .line 204
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 205
    add-int/lit8 v0, v1, 0x0

    .line 208
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->isSupportCategoryIdBitMask1()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->length()I

    move-result v1

    .line 210
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 211
    add-int/2addr v0, v1

    .line 214
    .end local v1    # "fieldLen":I
    :cond_1
    return-object v2
.end method

.method public isSupportCategoryIdBitMask0()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportCategoryIdBitMask1()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->isSupportCategoryIdBitMask0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->length()I

    move-result v0

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->isSupportCategoryIdBitMask1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->length()I

    move-result v1

    .line 176
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 177
    goto :goto_0
.end method

.method public setCategoryIdBitMask0(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    .line 279
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->updateGattCharacteristic()V

    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public setCategoryIdBitMask1(Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    .line 310
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->updateGattCharacteristic()V

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 225
    const/4 v2, 0x0

    .line 227
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->isSupportCategoryIdBitMask0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->length()I

    move-result v1

    .line 230
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    return v4

    .line 234
    :cond_0
    new-array v0, v1, [B

    .line 236
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 237
    add-int/lit8 v2, v1, 0x0

    .line 239
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask0:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask0;->setByteArray([B)V

    .line 242
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->isSupportCategoryIdBitMask1()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 243
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->length()I

    move-result v1

    .line 245
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 246
    return v4

    .line 249
    :cond_2
    new-array v0, v1, [B

    .line 251
    .restart local v0    # "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 252
    add-int/2addr v2, v1

    .line 254
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->mCategoryIdBitMask1:Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask$BfCategoryIdBitMask1;->setByteArray([B)V

    .line 257
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertCategoryIdBitMask;->updateGattCharacteristic()V

    .line 258
    const/4 v3, 0x1

    return v3
.end method
