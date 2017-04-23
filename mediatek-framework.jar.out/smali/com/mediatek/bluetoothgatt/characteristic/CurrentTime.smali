.class public Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "CurrentTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;
    }
.end annotation


# static fields
.field public static final ADJ_CHANGE_OF_DST:B = 0x8t

.field public static final ADJ_CHANGE_OF_TIME_ZONE:B = 0x4t

.field public static final ADJ_EXTERNAL_REFERENCE_TIME_UPDATE:B = 0x2t

.field public static final ADJ_MANUAL_TIME_UPDATE:B = 0x1t

.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

.field private mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "2A2B"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 64
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->GATT_UUID:Ljava/util/UUID;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    .line 86
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 94
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setAdjustReason(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;)Z

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;)V
    .locals 1
    .param p1, "exactTime256"    # Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;
    .param p2, "adjustReason"    # Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    .line 86
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setExactTime256(Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;)Z

    .line 129
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setAdjustReason(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;)Z

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "exactTime256"    # Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;
    .param p2, "adjustReason"    # Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    .line 86
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    .line 143
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setExactTime256(Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;)Z

    .line 145
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setAdjustReason(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;)Z

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;B)V
    .locals 3
    .param p1, "c"    # Ljava/util/Calendar;
    .param p2, "adjReason"    # B

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    .line 86
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 157
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-direct {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setExactTime256(Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;)Z

    .line 158
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;[B)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setAdjustReason(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;)Z

    .line 155
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    .line 86
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setValue([B)Z

    .line 102
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 79
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    .line 86
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    .line 114
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setValue([B)Z

    .line 113
    return-void
.end method


# virtual methods
.method public getAdjustReason()Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    return-object v0
.end method

.method public getExactTime256()Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 192
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 194
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->isSupportExactTime256()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->length()I

    move-result v1

    .line 196
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 197
    add-int/lit8 v0, v1, 0x0

    .line 200
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->isSupportAdjustReason()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->length()I

    move-result v1

    .line 202
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 203
    add-int/2addr v0, v1

    .line 206
    .end local v1    # "fieldLen":I
    :cond_1
    return-object v2
.end method

.method public isSupportAdjustReason()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportExactTime256()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->isSupportExactTime256()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->length()I

    move-result v0

    .line 170
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->isSupportAdjustReason()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->length()I

    move-result v1

    .line 168
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 169
    goto :goto_0
.end method

.method public setAdjustReason(Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    .line 319
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->updateGattCharacteristic()V

    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public setExactTime256(Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x0

    return v0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->updateGattCharacteristic()V

    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public setExactTime256([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    return v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->updateGattCharacteristic()V

    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 217
    const/4 v2, 0x0

    .line 219
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->isSupportExactTime256()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->length()I

    move-result v1

    .line 222
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    return v4

    .line 226
    :cond_0
    new-array v0, v1, [B

    .line 228
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 229
    add-int/lit8 v2, v1, 0x0

    .line 231
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mExactTime256:Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/ExactTime256;->setValue([B)Z

    .line 234
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->isSupportAdjustReason()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 235
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->length()I

    move-result v1

    .line 237
    .restart local v1    # "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 238
    return v4

    .line 241
    :cond_2
    new-array v0, v1, [B

    .line 243
    .restart local v0    # "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 244
    add-int/2addr v2, v1

    .line 246
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->mAdjustReason:Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime$BfAdjustReason;->setByteArray([B)V

    .line 249
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->updateGattCharacteristic()V

    .line 250
    const/4 v3, 0x1

    return v3
.end method
