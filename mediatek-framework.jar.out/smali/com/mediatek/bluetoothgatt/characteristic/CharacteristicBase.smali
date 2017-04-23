.class public abstract Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.super Ljava/lang/Object;
.source "CharacteristicBase.java"


# instance fields
.field private mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public abstract getUuid()Ljava/util/UUID;
.end method

.method public abstract getValue()[B
.end method

.method public getValue(I)[B
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v0

    .line 102
    .local v0, "value":[B
    if-eqz p1, :cond_0

    .line 103
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 105
    :cond_0
    return-object v0
.end method

.method public abstract length()I
.end method

.method public setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 69
    return-void
.end method

.method public setValue(I[B)Z
    .locals 4
    .param p1, "offset"    # I
    .param p2, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v1

    .line 126
    .local v1, "newValue":[B
    array-length v0, p2

    .line 128
    .local v0, "copyLength":I
    if-gez p1, :cond_0

    .line 129
    const/4 p1, 0x0

    .line 132
    :cond_0
    array-length v2, v1

    sub-int/2addr v2, p1

    if-le v0, v2, :cond_1

    .line 133
    array-length v2, v1

    sub-int v0, v2, p1

    .line 136
    :cond_1
    invoke-static {p2, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    move-result v2

    return v2
.end method

.method public abstract setValue([B)Z
.end method

.method public setValueRangeCheck(III)Z
    .locals 3
    .param p1, "size"    # I
    .param p2, "offset"    # I
    .param p3, "require"    # I

    .prologue
    .line 179
    add-int v0, p2, p3

    if-le v0, p1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueRangeCheck() Input parameter size is wrong! size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    const-string/jumbo v2, ", offset="

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 183
    const-string/jumbo v2, ", required="

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    return v0

    .line 187
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v2

    .line 151
    .local v2, "value":[B
    if-nez v2, :cond_0

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = [ null ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v3, " = [ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-byte v0, v2, v3

    .line 161
    .local v0, "aValue":B
    const-string/jumbo v6, "%02X "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "aValue":B
    :cond_1
    const-string/jumbo v3, "], Length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method updateGattCharacteristic()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 73
    :cond_0
    return-void
.end method
