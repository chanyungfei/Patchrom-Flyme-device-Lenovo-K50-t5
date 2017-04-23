.class public Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "SoftwareRevisionString.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mSoftwareRevision:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A28"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->mSoftwareRevision:[B

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 84
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->setSoftwareRevision(Ljava/lang/String;)Z

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "softwareRevision"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->mSoftwareRevision:[B

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->setSoftwareRevision(Ljava/lang/String;)Z

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "softwareRevision"    # Ljava/lang/String;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->mSoftwareRevision:[B

    .line 128
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->setSoftwareRevision(Ljava/lang/String;)Z

    .line 127
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->mSoftwareRevision:[B

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->setValue([B)Z

    .line 92
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->mSoftwareRevision:[B

    .line 104
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->setValue([B)Z

    .line 103
    return-void
.end method


# virtual methods
.method public getSoftwareRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->mSoftwareRevision:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->utf8sToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 164
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 166
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->isSupportSoftwareRevision()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->mSoftwareRevision:[B

    array-length v1, v3

    .line 168
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->mSoftwareRevision:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 169
    add-int/lit8 v0, v1, 0x0

    .line 172
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportSoftwareRevision()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->isSupportSoftwareRevision()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->mSoftwareRevision:[B

    array-length v0, v0

    .line 142
    :goto_0
    return v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSoftwareRevision(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->stringToUtf8s(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->mSoftwareRevision:[B

    .line 214
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->updateGattCharacteristic()V

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->isSupportSoftwareRevision()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    array-length v2, p1

    add-int/lit8 v2, v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->mSoftwareRevision:[B

    .line 187
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->mSoftwareRevision:[B

    array-length v0, v2

    .line 188
    .local v0, "fieldLen":I
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->mSoftwareRevision:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 189
    add-int/lit8 v1, v0, 0x0

    .line 192
    .end local v0    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;->updateGattCharacteristic()V

    .line 193
    const/4 v2, 0x1

    return v2
.end method
