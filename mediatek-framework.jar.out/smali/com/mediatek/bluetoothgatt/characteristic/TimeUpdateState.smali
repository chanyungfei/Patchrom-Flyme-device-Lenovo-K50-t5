.class public Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "TimeUpdateState.java"


# static fields
.field public static final CURRENT_STATE_IDLE:I = 0x0

.field public static final CURRENT_STATE_UPDATE_PENDING:I = 0x1

.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final RESULT_CANCELED:I = 0x1

.field public static final RESULT_NO_CONNECTION_TO_REFERENCE:I = 0x2

.field public static final RESULT_REFERENCE_RESPOND_ERROR:I = 0x3

.field public static final RESULT_SUCCESSFUL:I = 0x0

.field public static final RESULT_TIMEOUT:I = 0x4

.field public static final RESULT_UPDATE_NOT_ATTEMPTED:I = 0x5


# instance fields
.field private mCurrentState:[B

.field private mResult:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A17"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 114
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mCurrentState:[B

    .line 122
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mResult:[B

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setCurrentState(I)Z

    .line 131
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setResult(I)Z

    .line 128
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "currentState"    # I
    .param p2, "result"    # I

    .prologue
    const/4 v1, 0x1

    .line 161
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 114
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mCurrentState:[B

    .line 122
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mResult:[B

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setCurrentState(I)Z

    .line 166
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setResult(I)Z

    .line 163
    return-void
.end method

.method public constructor <init>(IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "currentState"    # I
    .param p2, "result"    # I
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x1

    .line 176
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 114
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mCurrentState:[B

    .line 122
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mResult:[B

    .line 180
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setCurrentState(I)Z

    .line 182
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setResult(I)Z

    .line 179
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x1

    .line 139
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 114
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mCurrentState:[B

    .line 122
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mResult:[B

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setValue([B)Z

    .line 139
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x1

    .line 150
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 114
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mCurrentState:[B

    .line 122
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mResult:[B

    .line 151
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setValue([B)Z

    .line 150
    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mCurrentState:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mResult:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 219
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 221
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->isSupportCurrentState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mCurrentState:[B

    array-length v1, v3

    .line 223
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mCurrentState:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 224
    add-int/lit8 v0, v1, 0x0

    .line 227
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->isSupportResult()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mResult:[B

    array-length v1, v3

    .line 229
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mResult:[B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 230
    add-int/2addr v0, v1

    .line 233
    .end local v1    # "fieldLen":I
    :cond_1
    return-object v2
.end method

.method public isSupportCurrentState()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportResult()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->isSupportCurrentState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mCurrentState:[B

    array-length v0, v0

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->isSupportResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mResult:[B

    array-length v1, v1

    .line 195
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 196
    goto :goto_0
.end method

.method public setCurrentState(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 289
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    return v0

    .line 292
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mCurrentState:[B

    .line 293
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->updateGattCharacteristic()V

    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public setResult(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 323
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x0

    return v0

    .line 326
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mResult:[B

    .line 327
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->updateGattCharacteristic()V

    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 244
    const/4 v1, 0x0

    .line 246
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->isSupportCurrentState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mCurrentState:[B

    array-length v0, v2

    .line 249
    .local v0, "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    return v3

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mCurrentState:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 254
    add-int/lit8 v1, v0, 0x0

    .line 257
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->isSupportResult()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mResult:[B

    array-length v0, v2

    .line 260
    .restart local v0    # "fieldLen":I
    array-length v2, p1

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->setValueRangeCheck(III)Z

    move-result v2

    if-nez v2, :cond_2

    .line 261
    return v3

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->mResult:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 265
    add-int/2addr v1, v0

    .line 268
    .end local v0    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeUpdateState;->updateGattCharacteristic()V

    .line 269
    const/4 v2, 0x1

    return v2
.end method
