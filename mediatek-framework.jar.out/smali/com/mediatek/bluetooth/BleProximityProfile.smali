.class public Lcom/mediatek/bluetooth/BleProximityProfile;
.super Lcom/mediatek/bluetooth/BleProfile;
.source "BleProximityProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;,
        Lcom/mediatek/bluetooth/BleProximityProfile$1;
    }
.end annotation


# static fields
.field public static final ALERT_LEVEL_HIGH:I = 0x2

.field public static final ALERT_LEVEL_MILD:I = 0x1

.field public static final ALERT_LEVEL_NO:I = 0x0

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BleProximityProfile"

.field private static final VDBG:Z = true


# instance fields
.field mCallback:Lcom/mediatek/bluetooth/IBleGattCallback;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

.field private mProfileCallback:Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

.field private mProfileID:I


# direct methods
.method static synthetic -get0(Lcom/mediatek/bluetooth/BleProximityProfile;)Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    return-object v0
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/IBleGatt;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "gattClient"    # Lcom/mediatek/bluetooth/IBleGatt;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BleProfile;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileID:I

    .line 85
    new-instance v0, Lcom/mediatek/bluetooth/BleProximityProfile$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BleProximityProfile$1;-><init>(Lcom/mediatek/bluetooth/BleProximityProfile;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mCallback:Lcom/mediatek/bluetooth/IBleGattCallback;

    .line 160
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 161
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    .line 159
    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .prologue
    .line 179
    const-string/jumbo v0, "BleProximityProfile"

    const-string/jumbo v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/IBleGatt;->unregisterClientCallback(I)V

    .line 177
    return-void
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method open()V
    .locals 3

    .prologue
    .line 172
    const-string/jumbo v0, "BleProximityProfile"

    const-string/jumbo v1, "open()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mCallback:Lcom/mediatek/bluetooth/IBleGattCallback;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/mediatek/bluetooth/IBleGatt;->registerClientCallback(ILcom/mediatek/bluetooth/IBleGattCallback;)V

    .line 170
    return-void
.end method

.method public readRssi()Z
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    return v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    iget v1, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileID:I

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/IBleGatt;->readRemoteRssi(I)Z

    move-result v0

    return v0
.end method

.method public readTxPower()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 251
    const-string/jumbo v2, "BleProximityProfile"

    const-string/jumbo v3, "readTxPower"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    if-nez v2, :cond_0

    .line 254
    return v4

    .line 257
    :cond_0
    const/4 v0, 0x0

    .line 259
    .local v0, "gattService":Landroid/bluetooth/BluetoothGattService;
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    sget-object v3, Lcom/mediatek/bluetooth/BleGattUuid$Service;->TX_POWER:Ljava/util/UUID;

    invoke-interface {v2, v3}, Lcom/mediatek/bluetooth/IBleGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 261
    .local v0, "gattService":Landroid/bluetooth/BluetoothGattService;
    if-nez v0, :cond_1

    .line 262
    const-string/jumbo v2, "BleProximityProfile"

    const-string/jumbo v3, "readTxPower: gattService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v4

    .line 267
    :cond_1
    sget-object v2, Lcom/mediatek/bluetooth/BleGattUuid$Char;->TX_POWER_LEVEL:Ljava/util/UUID;

    .line 266
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 269
    .local v1, "txPowerLevel":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v1, :cond_2

    .line 270
    const-string/jumbo v2, "BleProximityProfile"

    const-string/jumbo v3, "readTxPower: TxPower level is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v4

    .line 274
    :cond_2
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    iget v3, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileID:I

    invoke-interface {v2, v3, v1}, Lcom/mediatek/bluetooth/IBleGatt;->readCharacteristic(ILandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    return v2
.end method

.method public registerProfileCallback(Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileCallback:Lcom/mediatek/bluetooth/BleProximityProfile$ProfileCallback;

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public setLinkLostAlertLevel(I)Z
    .locals 6
    .param p1, "level"    # I

    .prologue
    const/4 v5, 0x0

    .line 212
    const-string/jumbo v2, "BleProximityProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLinkLostAlertLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    if-nez v2, :cond_0

    .line 215
    return v5

    .line 217
    :cond_0
    if-ltz p1, :cond_1

    const/4 v2, 0x2

    if-le p1, v2, :cond_2

    .line 218
    :cond_1
    return v5

    .line 221
    :cond_2
    const/4 v1, 0x0

    .line 223
    .local v1, "gattService":Landroid/bluetooth/BluetoothGattService;
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    sget-object v3, Lcom/mediatek/bluetooth/BleGattUuid$Service;->LINK_LOST:Ljava/util/UUID;

    invoke-interface {v2, v3}, Lcom/mediatek/bluetooth/IBleGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 225
    .local v1, "gattService":Landroid/bluetooth/BluetoothGattService;
    if-nez v1, :cond_3

    .line 226
    const-string/jumbo v2, "BleProximityProfile"

    const-string/jumbo v3, "setLinkLostAlertLevel: gattService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v5

    .line 231
    :cond_3
    sget-object v2, Lcom/mediatek/bluetooth/BleGattUuid$Char;->ALERT_LEVEL:Ljava/util/UUID;

    .line 230
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 233
    .local v0, "alertLevel":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_4

    .line 234
    const-string/jumbo v2, "BleProximityProfile"

    const-string/jumbo v3, "setLinkLostAlertLevel: alertLevel is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v5

    .line 238
    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [B

    .line 239
    int-to-byte v3, p1

    aput-byte v3, v2, v5

    .line 238
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 242
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mGattClientIf:Lcom/mediatek/bluetooth/IBleGatt;

    iget v3, p0, Lcom/mediatek/bluetooth/BleProximityProfile;->mProfileID:I

    invoke-interface {v2, v3, v0}, Lcom/mediatek/bluetooth/IBleGatt;->writeCharacteristic(ILandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    return v2
.end method
