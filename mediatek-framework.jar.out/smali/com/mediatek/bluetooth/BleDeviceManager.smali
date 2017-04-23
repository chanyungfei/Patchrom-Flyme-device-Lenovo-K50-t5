.class public Lcom/mediatek/bluetooth/BleDeviceManager;
.super Ljava/lang/Object;
.source "BleDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;,
        Lcom/mediatek/bluetooth/BleDeviceManager$1;,
        Lcom/mediatek/bluetooth/BleDeviceManager$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BleDeviceManager"

.field private static final VDBG:Z = true


# instance fields
.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeviceManagerListener:Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

.field private mService:Lcom/mediatek/bluetooth/IBleDeviceManager;


# direct methods
.method static synthetic -get0(Lcom/mediatek/bluetooth/BleDeviceManager;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/bluetooth/BleDeviceManager;)Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mDeviceManagerListener:Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/bluetooth/BleDeviceManager;)Lcom/mediatek/bluetooth/IBleDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mService:Lcom/mediatek/bluetooth/IBleDeviceManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/bluetooth/BleDeviceManager;Lcom/mediatek/bluetooth/IBleDeviceManager;)Lcom/mediatek/bluetooth/IBleDeviceManager;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mService:Lcom/mediatek/bluetooth/IBleDeviceManager;

    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v3, Lcom/mediatek/bluetooth/BleDeviceManager$1;

    invoke-direct {v3, p0}, Lcom/mediatek/bluetooth/BleDeviceManager$1;-><init>(Lcom/mediatek/bluetooth/BleDeviceManager;)V

    .line 74
    iput-object v3, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 96
    new-instance v3, Lcom/mediatek/bluetooth/BleDeviceManager$2;

    invoke-direct {v3, p0}, Lcom/mediatek/bluetooth/BleDeviceManager$2;-><init>(Lcom/mediatek/bluetooth/BleDeviceManager;)V

    iput-object v3, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mConnection:Landroid/content/ServiceConnection;

    .line 121
    const-string/jumbo v3, "BleDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BleDeviceManager created. instance = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mDeviceManagerListener:Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

    .line 127
    const-string/jumbo v3, "bluetooth_manager"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 129
    .local v2, "mgrBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 130
    invoke-static {v2}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 132
    .local v1, "managerService":Landroid/bluetooth/IBluetoothManager;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BleDeviceManager;->doBind()Z

    .line 120
    return-void

    .line 133
    .restart local v1    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BleDeviceManager"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addGattDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mService:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-nez v1, :cond_0

    return-void

    .line 191
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mService:Lcom/mediatek/bluetooth/IBleDeviceManager;

    invoke-interface {v1, p1}, Lcom/mediatek/bluetooth/IBleDeviceManager;->addGattDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BleDeviceManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    const-string/jumbo v1, "BleDeviceManager"

    const-string/jumbo v2, "close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mService:Lcom/mediatek/bluetooth/IBleDeviceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 218
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mService:Lcom/mediatek/bluetooth/IBleDeviceManager;

    .line 219
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 226
    iput-object v4, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mDeviceManagerListener:Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

    .line 212
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "re":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "BleDeviceManager"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 215
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public createGattDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;)Lcom/mediatek/bluetooth/BleGattDevice;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "clientCB"    # Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;

    .prologue
    const/4 v4, 0x0

    .line 164
    const-string/jumbo v1, "BleDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createGattDevice() instance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-nez p1, :cond_0

    .line 167
    return-object v4

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mService:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-nez v1, :cond_1

    .line 171
    const-string/jumbo v1, "BleDeviceManager"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-object v4

    .line 175
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/BleGattDevice;

    iget-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mService:Lcom/mediatek/bluetooth/IBleDeviceManager;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/mediatek/bluetooth/BleGattDevice;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/IBleDeviceManager;Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/BleGattDevice$BleGattDeviceCallback;)V

    .line 177
    .local v0, "gattDevice":Lcom/mediatek/bluetooth/BleGattDevice;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/BleGattDevice;->startListen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    return-object v4

    .line 181
    :cond_2
    return-object v0
.end method

.method public deleteGattDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mService:Lcom/mediatek/bluetooth/IBleDeviceManager;

    if-nez v1, :cond_0

    return-void

    .line 205
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mService:Lcom/mediatek/bluetooth/IBleDeviceManager;

    invoke-interface {v1, p1}, Lcom/mediatek/bluetooth/IBleDeviceManager;->deleteGattDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BleDeviceManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method doBind()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/bluetooth/IBleDeviceManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 145
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 146
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleDeviceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const/4 v2, 0x1

    return v2

    .line 147
    :cond_0
    const-string/jumbo v2, "BleDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not bind to BleDeviceManagerService with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v5
.end method
