.class public abstract Lcom/mediatek/bluetoothgatt/profile/ClientBase;
.super Ljava/lang/Object;
.source "ClientBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetoothgatt/profile/ClientBase$1;,
        Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ClientBase"


# instance fields
.field protected mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

.field private final mClientCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private final mContext:Landroid/content/Context;

.field private mGattClient:Landroid/bluetooth/BluetoothGatt;

.field private final mHandler:Landroid/os/Handler;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/mediatek/bluetoothgatt/profile/ClientBase;)Landroid/bluetooth/BluetoothGatt;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/bluetoothgatt/profile/ClientBase;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/bluetoothgatt/profile/ClientBase;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/profile/ClientBase$1;-><init>(Lcom/mediatek/bluetoothgatt/profile/ClientBase;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetoothgatt/profile/ClientBase$2;-><init>(Lcom/mediatek/bluetoothgatt/profile/ClientBase;)V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mClientCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 238
    iput-object p1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mContext:Landroid/content/Context;

    .line 237
    return-void
.end method


# virtual methods
.method public abortReliableWrite()V
    .locals 2

    .prologue
    .line 711
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "abortReliableWrite()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 715
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "abortReliableWrite() - not connected to a device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->abortReliableWrite()V

    .line 709
    return-void
.end method

.method public beginReliableWrite()Z
    .locals 2

    .prologue
    .line 677
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "beginReliableWrite()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 681
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "beginReliableWrite() - not connected to a device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v0, 0x0

    return v0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->beginReliableWrite()Z

    move-result v0

    return v0
.end method

.method public connect(ZLandroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 3
    .param p1, "autoConnect"    # Z
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "callback"    # Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    .prologue
    .line 264
    const-string/jumbo v0, "ClientBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect() - device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    const-string/jumbo v2, ", autoConnect="

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-nez p3, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iput-object p3, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    .line 273
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    invoke-virtual {v0, p0}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->setProfileClient(Lcom/mediatek/bluetoothgatt/profile/ClientBase;)V

    .line 274
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mClientCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p2, v0, p1, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    .line 275
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "disconnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 287
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "Not connected to a device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 291
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 292
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 293
    iput-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    .line 294
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    invoke-virtual {v0, v2}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;->setProfileClient(Lcom/mediatek/bluetoothgatt/profile/ClientBase;)V

    .line 295
    iput-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mCallback:Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;

    .line 281
    return-void
.end method

.method public discoverServices()Z
    .locals 2

    .prologue
    .line 324
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "discoverServices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 328
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "discoverServices() - not connected to a device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v0, 0x0

    return v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    return v0
.end method

.method public enableNotify(Ljava/util/UUID;Ljava/util/UUID;Z)Z
    .locals 7
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 777
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 779
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_0

    .line 780
    const-string/jumbo v3, "ClientBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enableNotify() - Can\'t find characteristic! srvcUuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 781
    const-string/jumbo v5, ", charUuid="

    .line 780
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return v6

    .line 785
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    .line 787
    .local v2, "prop":I
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_1

    .line 788
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_1

    .line 789
    const-string/jumbo v3, "ClientBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enableNotify() - Characteristic don\'t support notification/indication. srvcUuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 790
    const-string/jumbo v5, ", charUuid="

    .line 789
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 790
    const-string/jumbo v5, ", prop="

    .line 789
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return v6

    .line 795
    :cond_1
    const-string/jumbo v3, "ClientBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enableNotify() - srvcUuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 796
    const-string/jumbo v5, ", charUuid="

    .line 795
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 797
    const-string/jumbo v5, ", prop="

    .line 795
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 798
    const-string/jumbo v5, ", enable="

    .line 795
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    if-eqz p3, :cond_3

    .line 804
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_2

    .line 805
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    .line 814
    .local v1, "enableValue":[B
    :goto_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 813
    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v3

    return v3

    .line 807
    .end local v1    # "enableValue":[B
    :cond_2
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .restart local v1    # "enableValue":[B
    goto :goto_0

    .line 810
    .end local v1    # "enableValue":[B
    :cond_3
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .restart local v1    # "enableValue":[B
    goto :goto_0
.end method

.method public executeReliableWrite()Z
    .locals 2

    .prologue
    .line 695
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "executeReliableWrite()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 699
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "executeReliableWrite() - not connected to a device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v0, 0x0

    return v0

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->executeReliableWrite()Z

    move-result v0

    return v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 2
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 386
    .local v0, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    return-object v1

    .line 390
    :cond_0
    return-object v1
.end method

.method public getDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 2
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "descUuid"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 406
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    return-object v1

    .line 410
    :cond_0
    return-object v1
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "discoverServices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 309
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "discoverServices() - not connected to a device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-object v2

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v3, 0x0

    .line 364
    const-string/jumbo v0, "ClientBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getService() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 368
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "getService() - not connected to a device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-object v3

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 343
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "getServices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 347
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "getServices() - not connected to a device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-object v2

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract handleServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)Z
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 3
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 453
    const-string/jumbo v0, "ClientBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readCharacteristic() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 457
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "readCharacteristic() - not connected to a device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x0

    return v0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0
.end method

.method public readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 6
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;

    .prologue
    const/4 v5, 0x0

    .line 422
    const-string/jumbo v2, "ClientBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readCharacteristic() - srvcUuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", charUuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_0

    .line 426
    const-string/jumbo v2, "ClientBase"

    const-string/jumbo v3, "readCharacteristic() - not connected to a device"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return v5

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 431
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v1, :cond_1

    .line 432
    const-string/jumbo v2, "ClientBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readCharacteristic() - service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return v5

    .line 436
    :cond_1
    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 437
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_2

    .line 438
    const-string/jumbo v2, "ClientBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readCharacteristic() - characteristic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return v5

    .line 442
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    return v2
.end method

.method public readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 3
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 576
    const-string/jumbo v0, "ClientBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readDescriptor() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 580
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "readDescriptor() - not connected to a device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v0, 0x0

    return v0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    return v0
.end method

.method public readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 7
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "descUuid"    # Ljava/util/UUID;

    .prologue
    const/4 v6, 0x0

    .line 538
    const-string/jumbo v3, "ClientBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readDescriptor() - srvcUuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", charUuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 539
    const-string/jumbo v5, ", descUuid="

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v3, :cond_0

    .line 543
    const-string/jumbo v3, "ClientBase"

    const-string/jumbo v4, "readDescriptor() - not connected to a device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return v6

    .line 547
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 548
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v2, :cond_1

    .line 549
    const-string/jumbo v3, "ClientBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readDescriptor() - service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return v6

    .line 553
    :cond_1
    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 554
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_2

    .line 555
    const-string/jumbo v3, "ClientBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readDescriptor() - characteristic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return v6

    .line 559
    :cond_2
    invoke-virtual {v0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 560
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v1, :cond_3

    .line 561
    const-string/jumbo v3, "ClientBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readDescriptor() - descriptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return v6

    .line 565
    :cond_3
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v3

    return v3
.end method

.method public readRemoteRssi()Z
    .locals 2

    .prologue
    .line 729
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "readRemoteRssi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 733
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "readRemoteRssi() - not connected to a device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v0, 0x0

    return v0

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v0

    return v0
.end method

.method public requestMtu(I)Z
    .locals 3
    .param p1, "mtu"    # I

    .prologue
    .line 748
    const-string/jumbo v0, "ClientBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestMtu() - mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 752
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "requestMtu() - not connected to a device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x0

    return v0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result v0

    return v0
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 3
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 517
    const-string/jumbo v0, "ClientBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeCharacteristic() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 521
    const-string/jumbo v0, "ClientBase"

    const-string/jumbo v1, "writeCharacteristic() - not connected to a device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v0, 0x0

    return v0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0
.end method

.method public writeCharacteristic(Ljava/util/UUID;Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;)Z
    .locals 2
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charBase"    # Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;

    .prologue
    .line 472
    invoke-virtual {p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->getValue()[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->writeCharacteristic(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    return v0
.end method

.method public writeCharacteristic(Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 6
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "value"    # [B

    .prologue
    const/4 v5, 0x0

    .line 485
    const-string/jumbo v2, "ClientBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeCharacteristic() - srvcUuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", charUuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 486
    const-string/jumbo v4, ", value="

    .line 485
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 486
    invoke-static {p3}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 485
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_0

    .line 490
    const-string/jumbo v2, "ClientBase"

    const-string/jumbo v3, "writeCharacteristic() - not connected to a device"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return v5

    .line 494
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 495
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v1, :cond_1

    .line 496
    const-string/jumbo v2, "ClientBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeCharacteristic() - service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return v5

    .line 500
    :cond_1
    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 501
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_2

    .line 502
    const-string/jumbo v2, "ClientBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeCharacteristic() - characteristic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return v5

    .line 505
    :cond_2
    invoke-virtual {v0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 506
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    return v2
.end method

.method public writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 8
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 637
    const-string/jumbo v3, "ClientBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeDescriptor() - UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v3, :cond_0

    .line 641
    const-string/jumbo v3, "ClientBase"

    const-string/jumbo v4, "writeDescriptor() - not connected to a device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return v6

    .line 645
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 646
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 647
    .local v1, "descrUuid":Ljava/util/UUID;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v2

    .line 648
    .local v2, "value":[B
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 649
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 651
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 652
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 651
    if-eqz v3, :cond_3

    .line 654
    :cond_1
    const-string/jumbo v3, "ClientBase"

    const-string/jumbo v4, "writeDescriptor() - setCharacteristicNotification(true)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v0, v7}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 664
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_2
    :goto_0
    return v7

    .line 659
    .restart local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_3
    const-string/jumbo v3, "ClientBase"

    const-string/jumbo v4, "writeDescriptor() - setCharacteristicNotification(false)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v0, v6}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    goto :goto_0

    .line 666
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "descrUuid":Ljava/util/UUID;
    .end local v2    # "value":[B
    :cond_4
    return v6
.end method

.method public writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 7
    .param p1, "srvcUuid"    # Ljava/util/UUID;
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "descUuid"    # Ljava/util/UUID;
    .param p4, "value"    # [B

    .prologue
    const/4 v6, 0x0

    .line 598
    const-string/jumbo v3, "ClientBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeDescriptor() - srvcUuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", charUuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 599
    const-string/jumbo v5, ", descUuid="

    .line 598
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 599
    const-string/jumbo v5, ", value="

    .line 598
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 599
    invoke-static {p4}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 598
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    if-nez v3, :cond_0

    .line 603
    const-string/jumbo v3, "ClientBase"

    const-string/jumbo v4, "writeDescriptor() - not connected to a device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return v6

    .line 607
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->mGattClient:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 608
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v2, :cond_1

    .line 609
    const-string/jumbo v3, "ClientBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeDescriptor() - service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return v6

    .line 613
    :cond_1
    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 614
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_2

    .line 615
    const-string/jumbo v3, "ClientBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeDescriptor() - characteristic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return v6

    .line 619
    :cond_2
    invoke-virtual {v0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 620
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v1, :cond_3

    .line 621
    const-string/jumbo v3, "ClientBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeDescriptor() - descriptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return v6

    .line 625
    :cond_3
    invoke-virtual {v1, p4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 626
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetoothgatt/profile/ClientBase;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v3

    return v3
.end method
