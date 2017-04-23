.class public Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "AlertLevel.java"


# static fields
.field public static final AL_HIGH_ALERT:I = 0x2

.field public static final AL_MILD_ALERT:I = 0x1

.field public static final AL_NO_ALERT:I

.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mAlertLevel:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A06"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->mAlertLevel:[B

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setAlertLevel(I)Z

    .line 95
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "alertLevel"    # I

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->mAlertLevel:[B

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setAlertLevel(I)Z

    .line 127
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "alertLevel"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->mAlertLevel:[B

    .line 141
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setAlertLevel(I)Z

    .line 140
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->mAlertLevel:[B

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setValue([B)Z

    .line 105
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->mAlertLevel:[B

    .line 117
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setValue([B)Z

    .line 116
    return-void
.end method


# virtual methods
.method public getAlertLevel()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->mAlertLevel:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 177
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 179
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->isSupportAlertLevel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->mAlertLevel:[B

    array-length v1, v3

    .line 181
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->mAlertLevel:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 182
    add-int/lit8 v0, v1, 0x0

    .line 185
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportAlertLevel()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->isSupportAlertLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->mAlertLevel:[B

    array-length v0, v0

    .line 155
    :goto_0
    return v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlertLevel(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 230
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    return v0

    .line 233
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->mAlertLevel:[B

    .line 234
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->updateGattCharacteristic()V

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->isSupportAlertLevel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->mAlertLevel:[B

    array-length v0, v2

    .line 201
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    return v3

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->mAlertLevel:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 206
    add-int/lit8 v1, v0, 0x0

    .line 209
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertLevel;->updateGattCharacteristic()V

    .line 210
    const/4 v2, 0x1

    return v2
.end method
