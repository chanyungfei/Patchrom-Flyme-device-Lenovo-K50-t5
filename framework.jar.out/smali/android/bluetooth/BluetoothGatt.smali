.class public final Landroid/bluetooth/BluetoothGatt;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGatt$1;
    }
.end annotation


# static fields
.field static final AUTHENTICATION_MITM:I = 0x2

.field static final AUTHENTICATION_NONE:I = 0x0

.field static final AUTHENTICATION_NO_MITM:I = 0x1

.field public static final CONNECTION_PRIORITY_BALANCED:I = 0x0

.field public static final CONNECTION_PRIORITY_HIGH:I = 0x1

.field public static final CONNECTION_PRIORITY_LOW_POWER:I = 0x2

.field private static final CONN_STATE_CLOSED:I = 0x4

.field private static final CONN_STATE_CONNECTED:I = 0x2

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static final CONN_STATE_IDLE:I = 0x0

.field private static final DBG:Z = true

.field public static final GATT_CONNECTION_CONGESTED:I = 0x8f

.field public static final GATT_FAILURE:I = 0x101

.field public static final GATT_INSUFFICIENT_AUTHENTICATION:I = 0x5

.field public static final GATT_INSUFFICIENT_ENCRYPTION:I = 0xf

.field public static final GATT_INVALID_ATTRIBUTE_LENGTH:I = 0xd

.field public static final GATT_INVALID_OFFSET:I = 0x7

.field public static final GATT_READ_NOT_PERMITTED:I = 0x2

.field public static final GATT_REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final GATT_SUCCESS:I = 0x0

.field public static final GATT_WRITE_NOT_PERMITTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothGatt"

.field private static final VDBG:Z = true


# instance fields
.field private mAuthRetry:Z

.field private mAutoConnect:Z

.field private final mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

.field private mCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mClientIf:I

.field private mConnState:I

.field private final mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceBusy:Ljava/lang/Boolean;

.field private mService:Landroid/bluetooth/IBluetoothGatt;

.field private mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateLock:Ljava/lang/Object;

.field private mTransport:I


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z

    return v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    return v0
.end method

.method static synthetic -get10(Landroid/bluetooth/BluetoothGatt;)I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    return v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothGatt;)I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    return v0
.end method

.method static synthetic -get4(Landroid/bluetooth/BluetoothGatt;)I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    return v0
.end method

.method static synthetic -get5(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get6(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get7(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    return-object v0
.end method

.method static synthetic -get8(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get9(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothGatt;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z

    return p1
.end method

.method static synthetic -set1(Landroid/bluetooth/BluetoothGatt;I)I
    .locals 0

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    return p1
.end method

.method static synthetic -set2(Landroid/bluetooth/BluetoothGatt;I)I
    .locals 0

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    return p1
.end method

.method static synthetic -set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "transport"    # I

    .prologue
    const/4 v1, 0x0

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetry:Z

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 140
    new-instance v0, Landroid/bluetooth/BluetoothGatt$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothGatt$1;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    .line 139
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    .line 691
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mContext:Landroid/content/Context;

    .line 692
    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    .line 693
    iput-object p3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 694
    iput p4, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    .line 697
    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 690
    return-void
.end method

.method private registerApp(Landroid/bluetooth/BluetoothGattCallback;)Z
    .locals 6
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    const/4 v5, 0x0

    .line 744
    const-string/jumbo v2, "BluetoothGatt"

    const-string/jumbo v3, "registerApp()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-nez v2, :cond_0

    return v5

    .line 747
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 748
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 749
    .local v1, "uuid":Ljava/util/UUID;
    const-string/jumbo v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerApp() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    const/4 v2, 0x1

    return v2

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothGatt"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    return v5
.end method

.method private unregisterApp()V
    .locals 4

    .prologue
    .line 765
    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterApp() - mClientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 769
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 770
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 771
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public abortReliableWrite()V
    .locals 5

    .prologue
    .line 1221
    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "abortReliableWrite() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 1225
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    :goto_0
    return-void

    .line 1226
    :catch_0
    move-exception v0

    .line 1227
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abortReliableWrite(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "mDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1235
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->abortReliableWrite()V

    .line 1234
    return-void
.end method

.method public beginReliableWrite()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1163
    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "beginReliableWrite() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    :cond_0
    return v4

    .line 1167
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->beginReliableWrite(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    const/4 v1, 0x1

    return v1

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    return v4
.end method

.method public close()V
    .locals 2

    .prologue
    .line 707
    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGatt;->unregisterApp()V

    .line 710
    const/4 v0, 0x4

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    .line 706
    return-void
.end method

.method public connect()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 851
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 852
    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    const/4 v5, 0x0

    .line 851
    invoke-interface {v1, v2, v3, v5, v4}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    const/4 v1, 0x1

    return v1

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 856
    return v6
.end method

.method connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;)Z
    .locals 5
    .param p1, "autoConnect"    # Ljava/lang/Boolean;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 801
    const-string/jumbo v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 803
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    if-eqz v0, :cond_0

    .line 804
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not idle"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 806
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 810
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    .line 812
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGatt;->registerApp(Landroid/bluetooth/BluetoothGattCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 813
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 814
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    .line 816
    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, "Failed to register callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return v3

    .line 813
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 820
    :cond_1
    return v4
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 830
    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelOpen() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 834
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->clientDisconnect(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :goto_0
    return-void

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public discoverServices()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 883
    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "discoverServices() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    :cond_0
    return v4

    .line 886
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 889
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->discoverServices(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    const/4 v1, 0x1

    return v1

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    return v4
.end method

.method public executeReliableWrite()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1190
    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "executeReliableWrite() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    :cond_0
    return v5

    .line 1193
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v2

    .line 1194
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1195
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v3, "executeReliableWrite: mDeviceBusy = true, and return false"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1196
    return v5

    .line 1198
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1202
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1209
    return v6

    .line 1193
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1205
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1206
    return v5
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1401
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1402
    const-string/jumbo v1, "Use BluetoothManager#getConnectedDevices instead."

    .line 1401
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use BluetoothManager#getConnectionState instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1414
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1415
    const-string/jumbo v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    .line 1414
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "type"    # I

    .prologue
    .line 719
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "svc$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 720
    .local v0, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v2

    if-ne v2, p4, :cond_0

    .line 722
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 723
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 720
    if-eqz v2, :cond_0

    .line 724
    return-object v0

    .line 727
    .end local v0    # "svc":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 939
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 940
    .local v0, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 940
    if-eqz v2, :cond_0

    .line 942
    return-object v0

    .line 946
    .end local v0    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getServices()Ljava/util/List;
    .locals 5
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
    .line 911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "service$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 914
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 915
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 919
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    return-object v0
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 14
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 962
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 963
    return v12

    .line 965
    :cond_0
    const-string/jumbo v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readCharacteristic() - uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_2

    :cond_1
    return v12

    .line 968
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v11

    .line 969
    .local v11, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v11, :cond_3

    return v12

    .line 971
    :cond_3
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 972
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v9, :cond_4

    return v12

    .line 974
    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v1

    .line 975
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 976
    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v2, "readCharacteristic: mDeviceBusy = true, and return false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 977
    return v12

    .line 979
    :cond_5
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 983
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 984
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    .line 985
    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    .line 986
    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v8, 0x0

    .line 983
    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 993
    return v13

    .line 974
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 987
    :catch_0
    move-exception v10

    .line 988
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 990
    return v12
.end method

.method public readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 15
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 1059
    const-string/jumbo v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readDescriptor() - uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1062
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v11

    .line 1063
    .local v11, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v11, :cond_2

    const/4 v0, 0x0

    return v0

    .line 1065
    :cond_2
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v14

    .line 1066
    .local v14, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v14, :cond_3

    const/4 v0, 0x0

    return v0

    .line 1068
    :cond_3
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    .line 1069
    .local v12, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v12, :cond_4

    const/4 v0, 0x0

    return v0

    .line 1071
    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1072
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1073
    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v2, "readDescriptor: mDeviceBusy = true, and return false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 1076
    :cond_5
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1080
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    .line 1081
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1082
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1083
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v8

    new-instance v9, Landroid/os/ParcelUuid;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1084
    const/4 v10, 0x0

    .line 1080
    invoke-interface/range {v0 .. v10}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1091
    const/4 v0, 0x1

    return v0

    .line 1071
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1085
    :catch_0
    move-exception v13

    .line 1086
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1088
    const/4 v0, 0x0

    return v0
.end method

.method public readRemoteRssi()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1308
    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readRssi() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    :cond_0
    return v4

    .line 1312
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->readRemoteRssi(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    const/4 v1, 0x1

    return v1

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1315
    return v4
.end method

.method public refresh()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1284
    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refresh() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    :cond_0
    return v4

    .line 1288
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->refreshDevice(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    const/4 v1, 0x1

    return v1

    .line 1289
    :catch_0
    move-exception v0

    .line 1290
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1291
    return v4
.end method

.method public requestConnectionPriority(I)Z
    .locals 5
    .param p1, "connectionPriority"    # I

    .prologue
    const/4 v4, 0x0

    .line 1364
    if-ltz p1, :cond_0

    .line 1365
    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    .line 1366
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "connectionPriority not within valid range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1369
    :cond_1
    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestConnectionPriority() - params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_3

    :cond_2
    return v4

    .line 1373
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Landroid/bluetooth/IBluetoothGatt;->connectionParameterUpdate(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    const/4 v1, 0x1

    return v1

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1376
    return v4
.end method

.method public requestMtu(I)Z
    .locals 5
    .param p1, "mtu"    # I

    .prologue
    const/4 v4, 0x0

    .line 1336
    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "configureMTU() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1337
    const-string/jumbo v3, " mtu: "

    .line 1336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    :cond_0
    return v4

    .line 1341
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Landroid/bluetooth/IBluetoothGatt;->configureMTU(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    const/4 v1, 0x1

    return v1

    .line 1342
    :catch_0
    move-exception v0

    .line 1343
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1344
    return v4
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 13
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enable"    # Z

    .prologue
    const/4 v12, 0x0

    .line 1254
    const-string/jumbo v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCharacteristicNotification() - uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1255
    const-string/jumbo v2, " enable: "

    .line 1254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_1

    :cond_0
    return v12

    .line 1258
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v11

    .line 1259
    .local v11, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v11, :cond_2

    return v12

    .line 1261
    :cond_2
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 1262
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v9, :cond_3

    return v12

    .line 1265
    :cond_3
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1266
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    .line 1267
    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    .line 1268
    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move v8, p2

    .line 1265
    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt;->registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    const/4 v0, 0x1

    return v0

    .line 1270
    :catch_0
    move-exception v10

    .line 1271
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1272
    return v12
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 14
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 1009
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 1010
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 1011
    const/4 v0, 0x0

    return v0

    .line 1013
    :cond_0
    const-string/jumbo v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeCharacteristic() - uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1016
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v13

    .line 1017
    .local v13, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v13, :cond_3

    const/4 v0, 0x0

    return v0

    .line 1019
    :cond_3
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    .line 1020
    .local v11, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v11, :cond_4

    const/4 v0, 0x0

    return v0

    .line 1022
    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1023
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1024
    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v2, "writeCharacteristic: mDeviceBusy = true, and return false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 1027
    :cond_5
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1031
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1032
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    .line 1033
    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    .line 1034
    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1035
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v8

    .line 1036
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    .line 1035
    const/4 v9, 0x0

    .line 1031
    invoke-interface/range {v0 .. v10}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1043
    const/4 v0, 0x1

    return v0

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1037
    :catch_0
    move-exception v12

    .line 1038
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1039
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1040
    const/4 v0, 0x0

    return v0
.end method

.method public writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 18
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 1106
    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeDescriptor() - uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1109
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v14

    .line 1110
    .local v14, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v14, :cond_2

    const/4 v1, 0x0

    return v1

    .line 1112
    :cond_2
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v17

    .line 1113
    .local v17, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v17, :cond_3

    const/4 v1, 0x0

    return v1

    .line 1115
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v15

    .line 1116
    .local v15, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v15, :cond_4

    const/4 v1, 0x0

    return v1

    .line 1118
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v2

    .line 1119
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1120
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v3, "writeDescriptor: mDeviceBusy = true, and return false"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 1123
    :cond_5
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1127
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v4

    .line 1128
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v5

    new-instance v6, Landroid/os/ParcelUuid;

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1129
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v7

    new-instance v8, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1130
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v9

    new-instance v10, Landroid/os/ParcelUuid;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1131
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v11

    .line 1132
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v13

    .line 1131
    const/4 v12, 0x0

    .line 1127
    invoke-interface/range {v1 .. v13}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1139
    const/4 v1, 0x1

    return v1

    .line 1118
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1133
    :catch_0
    move-exception v16

    .line 1134
    .local v16, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1135
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    .line 1136
    const/4 v1, 0x0

    return v1
.end method
