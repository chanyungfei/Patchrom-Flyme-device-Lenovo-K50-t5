.class public Lcom/mediatek/bluetooth/BleGattDevice;
.super Ljava/lang/Object;
.source "BleGattDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;,
        Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;,
        Lcom/mediatek/bluetooth/BleGattDevice$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final GATT_FAILURE:I = 0x101

.field public static final GATT_INSUFFICIENT_AUTHENTICATION:I = 0x5

.field public static final GATT_INSUFFICIENT_ENCRYPTION:I = 0xf

.field public static final GATT_INVALID_ATTRIBUTE_LENGTH:I = 0xd

.field public static final GATT_INVALID_OFFSET:I = 0x7

.field public static final GATT_READ_NOT_PERMITTED:I = 0x2

.field public static final GATT_REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final GATT_SUCCESS:I = 0x0

.field public static final GATT_WRITE_NOT_PERMITTED:I = 0x3

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BleGattDevice"

.field private static final VDBG:Z = true


# instance fields
.field private mCallback:Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;

.field private mClientCB:Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

.field private mClientId:I

.field private mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

.field private final mDeviceOpenLock:Ljava/lang/Object;

.field private mProfileRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/bluetooth/BleProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientCB:Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/bluetooth/BleGattDevice;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    return v0
.end method

.method static synthetic -get2(Lcom/mediatek/bluetooth/BleGattDevice;)Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/bluetooth/BleGattDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/IBleDeviceManager;Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceManager"    # Lcom/mediatek/bluetooth/IBleDeviceManager;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "clientCB"    # Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceOpenLock:Ljava/lang/Object;

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    .line 166
    new-instance v0, Lcom/mediatek/bluetooth/BleGattDevice$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BleGattDevice$1;-><init>(Lcom/mediatek/bluetooth/BleGattDevice;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mCallback:Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;

    .line 299
    const-string/jumbo v0, "BleGattDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BleGattDevice created. instance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Lcom/mediatek/bluetooth/BleGattDevice$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BleGattDevice$2;-><init>(Lcom/mediatek/bluetooth/BleGattDevice;)V

    invoke-direct {p0, p2, v0}, Lcom/mediatek/bluetooth/BleGattDevice;->linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 309
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mContext:Landroid/content/Context;

    .line 310
    iput-object p3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 311
    iput-object p4, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientCB:Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    .line 313
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    .line 314
    new-instance v0, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    invoke-direct {v0, p0, p2}, Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;-><init>(Lcom/mediatek/bluetooth/BleGattDevice;Lcom/mediatek/bluetooth/IBleDeviceManager;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    .line 316
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BleGattDevice;->openProfileClients()V

    .line 298
    return-void
.end method

.method private closeProfileClients()V
    .locals 4

    .prologue
    .line 389
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 391
    .local v2, "profileClients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mediatek/bluetooth/BleProfile;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/BleProfile;

    .line 392
    .local v0, "profile":Lcom/mediatek/bluetooth/BleProfile;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/BleProfile;->close()V

    goto :goto_0

    .line 388
    .end local v0    # "profile":Lcom/mediatek/bluetooth/BleProfile;
    :cond_0
    return-void
.end method

.method private linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V
    .locals 4
    .param p1, "binderItf"    # Landroid/os/IInterface;
    .param p2, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .prologue
    .line 324
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 325
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v2, 0x0

    invoke-interface {v0, p2, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 326
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BleGattDevice"

    const-string/jumbo v3, "Unable to link deathRecipient for app"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openProfileClients()V
    .locals 8

    .prologue
    .line 375
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/mediatek/bluetooth/BleFindMeProfile;

    iget-object v6, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 376
    iget-object v7, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    .line 375
    invoke-direct {v5, v6, v7}, Lcom/mediatek/bluetooth/BleFindMeProfile;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/IBleGatt;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/mediatek/bluetooth/BleProximityProfile;

    iget-object v6, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 378
    iget-object v7, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientWrapper:Lcom/mediatek/bluetooth/BleGattDevice$BleGattClientImpl;

    .line 377
    invoke-direct {v5, v6, v7}, Lcom/mediatek/bluetooth/BleProximityProfile;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/IBleGatt;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 382
    .local v2, "profileClients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mediatek/bluetooth/BleProfile;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/BleProfile;

    .line 383
    .local v0, "profile":Lcom/mediatek/bluetooth/BleProfile;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/BleProfile;->open()V

    goto :goto_0

    .line 374
    .end local v0    # "profile":Lcom/mediatek/bluetooth/BleProfile;
    :cond_0
    return-void
.end method


# virtual methods
.method public asProfileInterface(I)Lcom/mediatek/bluetooth/BleProfile;
    .locals 5
    .param p1, "profileId"    # I

    .prologue
    const/4 v4, 0x0

    .line 625
    const-string/jumbo v2, "BleGattDevice"

    const-string/jumbo v3, "asProfileInterface"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    if-nez v2, :cond_1

    .line 628
    :cond_0
    return-object v4

    .line 635
    :cond_1
    if-nez p1, :cond_2

    .line 637
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/BleFindMeProfile;

    .line 638
    .local v0, "profileClient":Lcom/mediatek/bluetooth/BleFindMeProfile;
    return-object v0

    .line 641
    .end local v0    # "profileClient":Lcom/mediatek/bluetooth/BleFindMeProfile;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 643
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mProfileRegistry:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/BleProximityProfile;

    .line 644
    .local v1, "profileClient":Lcom/mediatek/bluetooth/BleProximityProfile;
    return-object v1

    .line 647
    .end local v1    # "profileClient":Lcom/mediatek/bluetooth/BleProximityProfile;
    :cond_3
    return-object v4
.end method

.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 483
    const-string/jumbo v1, "BleGattDevice"

    const-string/jumbo v2, "close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    if-nez v1, :cond_1

    .line 486
    :cond_0
    return-void

    .line 490
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/IBleDeviceManager;->unregisterClient(I)V

    .line 492
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/BleGattDevice;->unlinkToDeath(Landroid/os/IInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BleGattDevice;->closeProfileClients()V

    .line 501
    iput-object v4, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientCB:Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

    .line 503
    iput v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    .line 482
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BleGattDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public connect()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 438
    const-string/jumbo v1, "BleGattDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    if-nez v1, :cond_1

    .line 441
    :cond_0
    return v4

    .line 445
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager;->connectDevice(ILandroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BleGattDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    return v4
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 461
    const-string/jumbo v1, "BleGattDevice"

    const-string/jumbo v2, "disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    if-nez v1, :cond_1

    .line 464
    :cond_0
    return-void

    .line 468
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager;->disconnectDevice(ILandroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BleGattDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public discoverServices()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 524
    const-string/jumbo v1, "BleGattDevice"

    const-string/jumbo v2, "discoverServices"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    if-nez v1, :cond_1

    .line 527
    :cond_0
    return v4

    .line 532
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager;->discoverServices(ILandroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BleGattDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    return v4
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 6
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v5, 0x0

    .line 598
    const-string/jumbo v2, "BleGattDevice"

    const-string/jumbo v3, "getService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v2, v3, v4}, Lcom/mediatek/bluetooth/IBleDeviceManager;->getService(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    move-result-object v1

    .line 604
    .local v1, "service":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    if-eqz v1, :cond_0

    .line 605
    invoke-virtual {v1}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->unpack()Landroid/bluetooth/BluetoothGattService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 608
    .end local v1    # "service":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BleGattDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v5
.end method

.method public getServices()Ljava/util/List;
    .locals 7
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
    .line 554
    const-string/jumbo v5, "BleGattDevice"

    const-string/jumbo v6, "getServices"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 560
    .local v4, "srvs":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget-object v6, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v5, v6}, Lcom/mediatek/bluetooth/IBleDeviceManager;->getServices(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v1

    .line 562
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;>;"
    if-eqz v1, :cond_0

    .line 563
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "srv$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;

    .line 564
    .local v2, "srv":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    invoke-virtual {v2}, Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;->unpack()Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 568
    .end local v1    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;>;"
    .end local v2    # "srv":Lcom/mediatek/bluetooth/parcel/ParcelBluetoothGattService;
    .end local v3    # "srv$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "BleGattDevice"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getState()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 405
    const-string/jumbo v1, "BleGattDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    if-nez v1, :cond_1

    .line 408
    :cond_0
    return v4

    .line 412
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    iget v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/mediatek/bluetooth/IBleDeviceManager;->getState(ILandroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    return v4
.end method

.method startListen()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 350
    const-string/jumbo v2, "BleGattDevice"

    const-string/jumbo v3, "startListen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceOpenLock:Ljava/lang/Object;

    monitor-enter v3

    .line 354
    :try_start_0
    iget v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 355
    return v7

    .line 359
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 362
    .local v1, "uuid":Ljava/util/UUID;
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeviceManager:Lcom/mediatek/bluetooth/IBleDeviceManager;

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v5, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 363
    iget-object v6, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mCallback:Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;

    .line 362
    invoke-interface {v2, v4, v5, v6}, Lcom/mediatek/bluetooth/IBleDeviceManager;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/IBleDeviceManagerCallback;)I

    move-result v2

    .line 361
    iput v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mClientId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 371
    const/4 v2, 0x1

    return v2

    .line 365
    .end local v1    # "uuid":Ljava/util/UUID;
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "BleGattDevice"

    const-string/jumbo v4, ""

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 367
    return v7

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method unlinkToDeath(Landroid/os/IInterface;)V
    .locals 4
    .param p1, "binderItf"    # Landroid/os/IInterface;

    .prologue
    .line 336
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v2, :cond_0

    .line 338
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 339
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleGattDevice;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v2, "BleGattDevice"

    const-string/jumbo v3, "Unable to unlink deathRecipient"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
