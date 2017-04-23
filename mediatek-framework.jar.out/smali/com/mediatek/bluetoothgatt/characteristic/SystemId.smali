.class public Lcom/mediatek/bluetoothgatt/characteristic/SystemId;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "SystemId.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mManufacturerIdentifier:[B

.field private mOrganizationallyUniqueIdentifier:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A23"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mManufacturerIdentifier:[B

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mOrganizationallyUniqueIdentifier:[B

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 92
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setManufacturerIdentifier(J)Z

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setOrganizationallyUniqueIdentifier(I)Z

    .line 90
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "manufacturerIdentifier"    # J
    .param p3, "organizationallyUniqueIdentifier"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mManufacturerIdentifier:[B

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mOrganizationallyUniqueIdentifier:[B

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setManufacturerIdentifier(J)Z

    .line 128
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setOrganizationallyUniqueIdentifier(I)Z

    .line 125
    return-void
.end method

.method public constructor <init>(JILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "manufacturerIdentifier"    # J
    .param p3, "organizationallyUniqueIdentifier"    # I
    .param p4, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mManufacturerIdentifier:[B

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mOrganizationallyUniqueIdentifier:[B

    .line 142
    invoke-virtual {p0, p4}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setManufacturerIdentifier(J)Z

    .line 144
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setOrganizationallyUniqueIdentifier(I)Z

    .line 141
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mManufacturerIdentifier:[B

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mOrganizationallyUniqueIdentifier:[B

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setValue([B)Z

    .line 101
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mManufacturerIdentifier:[B

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mOrganizationallyUniqueIdentifier:[B

    .line 113
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setValue([B)Z

    .line 112
    return-void
.end method


# virtual methods
.method public getManufacturerIdentifier()J
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mManufacturerIdentifier:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint40ToLong([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOrganizationallyUniqueIdentifier()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mOrganizationallyUniqueIdentifier:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint24ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 181
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 183
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->isSupportManufacturerIdentifier()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mManufacturerIdentifier:[B

    array-length v1, v3

    .line 185
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mManufacturerIdentifier:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 186
    add-int/lit8 v0, v1, 0x0

    .line 189
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->isSupportOrganizationallyUniqueIdentifier()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mOrganizationallyUniqueIdentifier:[B

    array-length v1, v3

    .line 191
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mOrganizationallyUniqueIdentifier:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 192
    add-int/2addr v0, v1

    .line 195
    .end local v1    # "fieldLen":I
    :cond_1
    return-object v2
.end method

.method public isSupportManufacturerIdentifier()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportOrganizationallyUniqueIdentifier()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->isSupportManufacturerIdentifier()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mManufacturerIdentifier:[B

    array-length v0, v0

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->isSupportOrganizationallyUniqueIdentifier()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mOrganizationallyUniqueIdentifier:[B

    array-length v1, v1

    .line 157
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 158
    goto :goto_0
.end method

.method public setManufacturerIdentifier(J)Z
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 251
    invoke-static {p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint40RangeCheck(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    return v0

    .line 254
    :cond_0
    invoke-static {p1, p2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->longToUint40(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mManufacturerIdentifier:[B

    .line 255
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->updateGattCharacteristic()V

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public setOrganizationallyUniqueIdentifier(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 285
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint24RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x0

    return v0

    .line 288
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint24(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mOrganizationallyUniqueIdentifier:[B

    .line 289
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->updateGattCharacteristic()V

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 206
    const/4 v1, 0x0

    .line 208
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->isSupportManufacturerIdentifier()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mManufacturerIdentifier:[B

    array-length v0, v2

    .line 211
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    return v3

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mManufacturerIdentifier:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 216
    add-int/lit8 v1, v0, 0x0

    .line 219
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->isSupportOrganizationallyUniqueIdentifier()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mOrganizationallyUniqueIdentifier:[B

    array-length v0, v2

    .line 222
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    return v3

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->mOrganizationallyUniqueIdentifier:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 227
    add-int/2addr v1, v0

    .line 230
    .end local v0    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;->updateGattCharacteristic()V

    .line 231
    const/4 v2, 0x1

    return v2
.end method
