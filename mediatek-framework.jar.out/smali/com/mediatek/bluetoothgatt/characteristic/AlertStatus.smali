.class public Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "AlertStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;
    }
.end annotation


# static fields
.field public static final AS_STATE_DISPLAY_ALERT_ACTIVE:I = 0x4

.field public static final AS_STATE_RINGER_ACTIVE:I = 0x1

.field public static final AS_STATE_VIBRATE_ACTIVE:I = 0x2

.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "2A3F"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->GATT_UUID:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 88
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 96
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->setAlertStatus(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;)Z

    .line 94
    return-void
.end method

.method public constructor <init>(B)V
    .locals 3
    .param p1, "alertStatus"    # B

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 88
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 152
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;[B)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->setAlertStatus(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;)Z

    .line 150
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;)V
    .locals 1
    .param p1, "alertStatus"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 88
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->setAlertStatus(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;)Z

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "alertStatus"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 88
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    .line 140
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->setAlertStatus(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;)Z

    .line 139
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 88
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->setValue([B)Z

    .line 104
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 88
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;-><init>(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    .line 116
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->setValue([B)Z

    .line 115
    return-void
.end method


# virtual methods
.method public getAlertStatus()Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 184
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 186
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->isSupportAlertStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->length()I

    move-result v1

    .line 188
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->getByteArray()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 189
    add-int/lit8 v0, v1, 0x0

    .line 192
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportAlertStatus()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->isSupportAlertStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->length()I

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlertStatus(Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;)Z
    .locals 1
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    .line 242
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->updateGattCharacteristic()V

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 203
    const/4 v2, 0x0

    .line 205
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->isSupportAlertStatus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->length()I

    move-result v1

    .line 208
    .local v1, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    return v4

    .line 212
    :cond_0
    new-array v0, v1, [B

    .line 214
    .local v0, "buf":[B
    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 215
    add-int/lit8 v2, v1, 0x0

    .line 217
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->mAlertStatus:Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus$BfAlertStatus;->setByteArray([B)V

    .line 220
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->updateGattCharacteristic()V

    .line 221
    const/4 v3, 0x1

    return v3
.end method
