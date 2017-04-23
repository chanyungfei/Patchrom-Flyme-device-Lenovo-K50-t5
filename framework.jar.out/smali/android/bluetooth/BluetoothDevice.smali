.class public final Landroid/bluetooth/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothDevice$1;,
        Landroid/bluetooth/BluetoothDevice$2;
    }
.end annotation


# static fields
.field public static final ACCESS_ALLOWED:I = 0x1

.field public static final ACCESS_REJECTED:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field public static final ACTION_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_CONNECTED"

.field public static final ACTION_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECTED"

.field public static final ACTION_ACL_DISCONNECT_REQUESTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

.field public static final ACTION_ALIAS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.ALIAS_CHANGED"

.field public static final ACTION_BOND_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BOND_STATE_CHANGED"

.field public static final ACTION_CLASS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.CLASS_CHANGED"

.field public static final ACTION_CONNECTION_ACCESS_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

.field public static final ACTION_CONNECTION_ACCESS_REPLY:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

.field public static final ACTION_CONNECTION_ACCESS_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

.field public static final ACTION_DISAPPEARED:Ljava/lang/String; = "android.bluetooth.device.action.DISAPPEARED"

.field public static final ACTION_FOUND:Ljava/lang/String; = "android.bluetooth.device.action.FOUND"

.field public static final ACTION_MAS_INSTANCE:Ljava/lang/String; = "android.bluetooth.device.action.MAS_INSTANCE"

.field public static final ACTION_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_CHANGED"

.field public static final ACTION_NAME_FAILED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_FAILED"

.field public static final ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"

.field public static final ACTION_PAIRING_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_REQUEST"

.field public static final ACTION_SDP_RECORD:Ljava/lang/String; = "android.bluetooth.device.action.SDP_RECORD"

.field public static final ACTION_UUID:Ljava/lang/String; = "android.bluetooth.device.action.UUID"

.field public static final BOND_BONDED:I = 0xc

.field public static final BOND_BONDING:I = 0xb

.field public static final BOND_NONE:I = 0xa

.field public static final BOND_SUCCESS:I = 0x0

.field public static final CONNECTION_ACCESS_NO:I = 0x2

.field public static final CONNECTION_ACCESS_YES:I = 0x1

.field private static final CONNECTION_STATE_CONNECTED:I = 0x1

.field private static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field private static final CONNECTION_STATE_ENCRYPTED_BREDR:I = 0x2

.field private static final CONNECTION_STATE_ENCRYPTED_LE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field public static final DEVICE_TYPE_CLASSIC:I = 0x1

.field public static final DEVICE_TYPE_DUAL:I = 0x3

.field public static final DEVICE_TYPE_LE:I = 0x2

.field public static final DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_ACCESS_REQUEST_TYPE:Ljava/lang/String; = "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

.field public static final EXTRA_ALWAYS_ALLOWED:Ljava/lang/String; = "android.bluetooth.device.extra.ALWAYS_ALLOWED"

.field public static final EXTRA_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.BOND_STATE"

.field public static final EXTRA_CLASS:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS"

.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS_NAME"

.field public static final EXTRA_CONNECTION_ACCESS_RESULT:Ljava/lang/String; = "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "android.bluetooth.device.extra.DEVICE"

.field public static final EXTRA_MAS_INSTANCE:Ljava/lang/String; = "android.bluetooth.device.extra.MAS_INSTANCE"

.field public static final EXTRA_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.NAME"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.PACKAGE_NAME"

.field public static final EXTRA_PAIRING_KEY:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_KEY"

.field public static final EXTRA_PAIRING_VARIANT:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_VARIANT"

.field public static final EXTRA_PREVIOUS_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.bluetooth.device.extra.REASON"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "android.bluetooth.device.extra.RSSI"

.field public static final EXTRA_SDP_RECORD:Ljava/lang/String; = "android.bluetooth.device.extra.SDP_RECORD"

.field public static final EXTRA_SDP_SEARCH_STATUS:Ljava/lang/String; = "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

.field public static final EXTRA_UUID:Ljava/lang/String; = "android.bluetooth.device.extra.UUID"

.field public static final PAIRING_VARIANT_CONSENT:I = 0x3

.field public static final PAIRING_VARIANT_DISPLAY_PASSKEY:I = 0x4

.field public static final PAIRING_VARIANT_DISPLAY_PIN:I = 0x5

.field public static final PAIRING_VARIANT_OOB_CONSENT:I = 0x6

.field public static final PAIRING_VARIANT_PASSKEY:I = 0x1

.field public static final PAIRING_VARIANT_PASSKEY_CONFIRMATION:I = 0x2

.field public static final PAIRING_VARIANT_PIN:I = 0x0

.field public static final PAIRING_VARIANT_PIN_16_DIGITS:I = 0x7

.field public static final REQUEST_TYPE_MESSAGE_ACCESS:I = 0x3

.field public static final REQUEST_TYPE_PHONEBOOK_ACCESS:I = 0x2

.field public static final REQUEST_TYPE_PROFILE_CONNECTION:I = 0x1

.field public static final REQUEST_TYPE_SIM_ACCESS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothDevice"

.field public static final TRANSPORT_AUTO:I = 0x0

.field public static final TRANSPORT_BREDR:I = 0x1

.field public static final TRANSPORT_LE:I = 0x2

.field public static final UNBOND_REASON_AUTH_CANCELED:I = 0x3

.field public static final UNBOND_REASON_AUTH_FAILED:I = 0x1

.field public static final UNBOND_REASON_AUTH_REJECTED:I = 0x2

.field public static final UNBOND_REASON_AUTH_TIMEOUT:I = 0x6

.field public static final UNBOND_REASON_DISCOVERY_IN_PROGRESS:I = 0x5

.field public static final UNBOND_REASON_REMOTE_AUTH_CANCELED:I = 0x8

.field public static final UNBOND_REASON_REMOTE_DEVICE_DOWN:I = 0x4

.field public static final UNBOND_REASON_REMOVED:I = 0x9

.field public static final UNBOND_REASON_REPEATED_ATTEMPTS:I = 0x7

.field static mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private static sService:Landroid/bluetooth/IBluetooth;

.field private static final sServiceLock:Ljava/util/concurrent/locks/ReadWriteLock;


# instance fields
.field private final mAddress:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/bluetooth/IBluetooth;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sServiceLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0

    sput-object p0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 614
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothDevice;->sServiceLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 628
    new-instance v0, Landroid/bluetooth/BluetoothDevice$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothDevice;->mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 704
    new-instance v0, Landroid/bluetooth/BluetoothDevice$2;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$2;-><init>()V

    .line 703
    sput-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    .line 666
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid Bluetooth address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    .line 664
    return-void
.end method

.method public static convertPinToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1657
    if-nez p0, :cond_0

    .line 1658
    return-object v4

    .line 1662
    :cond_0
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1667
    .local v0, "pinBytes":[B
    array-length v2, v0

    if-lez v2, :cond_1

    array-length v2, v0

    const/16 v3, 0x10

    if-le v2, v3, :cond_2

    .line 1668
    :cond_1
    return-object v4

    .line 1663
    .end local v0    # "pinBytes":[B
    :catch_0
    move-exception v1

    .line 1664
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "UTF-8 not supported?!?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    return-object v4

    .line 1670
    .end local v1    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "pinBytes":[B
    :cond_2
    return-object v0
.end method

.method static getService()Landroid/bluetooth/IBluetooth;
    .locals 2

    .prologue
    .line 618
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sServiceLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 619
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 620
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 621
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    sput-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 624
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sServiceLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 625
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    return-object v1
.end method


# virtual methods
.method public cancelBondProcess()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 973
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 974
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, "BT not enabled. Cannot cancel Remote Device bond"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return v4

    .line 978
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelBondProcess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 980
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 981
    return v4
.end method

.method public cancelPairingUserInput()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1280
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 1281
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, "BT not enabled. Cannot create pairing user input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    return v4

    .line 1285
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelPairingUserInput: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1287
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1288
    return v4
.end method

.method public connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    .line 1687
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method public connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p4, "transport"    # I

    .prologue
    const/4 v7, 0x0

    .line 1709
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1710
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v4

    .line 1712
    .local v4, "managerService":Landroid/bluetooth/IBluetoothManager;
    :try_start_0
    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    .line 1713
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_0

    .line 1715
    return-object v7

    .line 1717
    :cond_0
    new-instance v2, Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v2, p1, v3, p0, p4}, Landroid/bluetooth/BluetoothGatt;-><init>(Landroid/content/Context;Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;I)V

    .line 1718
    .local v2, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5, p3}, Landroid/bluetooth/BluetoothGatt;->connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1719
    return-object v2

    .line 1720
    .end local v2    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "BluetoothDevice"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1721
    return-object v7
.end method

.method public createBond()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 872
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 873
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, "BT not enabled. Cannot create bond to Remote Device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return v4

    .line 877
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createBond: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/bluetooth/IBluetooth;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 879
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    return v4
.end method

.method public createBond(I)Z
    .locals 5
    .param p1, "transport"    # I

    .prologue
    const/4 v4, 0x0

    .line 900
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 901
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, "BT not enabled. Cannot create bond to Remote Device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return v4

    .line 904
    :cond_0
    if-ltz p1, :cond_1

    const/4 v1, 0x2

    if-le p1, v1, :cond_2

    .line 906
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid Bluetooth transport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 909
    :cond_2
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createBond: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", transport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 911
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    return v4
.end method

.method public createBondOutOfBand([B[B)Z
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "randomizer"    # [B

    .prologue
    .line 940
    const/4 v0, 0x0

    return v0
.end method

.method public createInsecureRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1620
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1621
    const-string/jumbo v0, "BluetoothDevice"

    const-string/jumbo v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1624
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1625
    const/4 v7, 0x0

    move v4, v3

    move-object v5, p0

    move v6, p1

    .line 1624
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1596
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1597
    const-string/jumbo v0, "BluetoothDevice"

    const-string/jumbo v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1600
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    .line 1601
    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1600
    const/4 v1, 0x1

    move v4, v3

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createL2capSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1520
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x3

    const/4 v2, -0x1

    .line 1521
    const/4 v7, 0x0

    move v4, v3

    move-object v5, p0

    move v6, p1

    .line 1520
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1486
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1487
    const-string/jumbo v0, "BluetoothDevice"

    const-string/jumbo v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1490
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, -0x1

    .line 1491
    const/4 v7, 0x0

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, p1

    .line 1490
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1557
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1558
    const-string/jumbo v0, "BluetoothDevice"

    const-string/jumbo v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1562
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    .line 1563
    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, v2

    .line 1562
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createScoSocket()Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1640
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1641
    const-string/jumbo v0, "BluetoothDevice"

    const-string/jumbo v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1644
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x2

    const/4 v7, 0x0

    move v4, v3

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 675
    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 678
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fetchUuidsWithSdp()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1167
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1168
    .local v2, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1169
    :cond_0
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, "BT not enabled. Cannot fetchUuidsWithSdp"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    return v6

    .line 1173
    :cond_1
    :try_start_0
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, "fetchUuidsWithSdp"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-interface {v2, p0}, Landroid/bluetooth/IBluetooth;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1177
    :catch_0
    move-exception v1

    .line 1180
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NullPointerException for fetchUuidsWithSdp() of device ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1181
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 1180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1181
    const-string/jumbo v5, ")"

    .line 1180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1184
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    return v6

    .line 1175
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 723
    const-string/jumbo v0, "BluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 798
    const/4 v0, 0x0

    .line 799
    .local v0, "alias":Ljava/lang/String;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 800
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, "BT not enabled. Cannot get Remote Device Alias"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return-object v5

    .line 804
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 815
    .end local v0    # "alias":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAlias: alias = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    return-object v0

    .line 808
    .restart local v0    # "alias":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 811
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NullPointerException for getAlias() of device ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 812
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 811
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 812
    const-string/jumbo v5, ")"

    .line 811
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 805
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAliasName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 851
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 853
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 855
    :cond_0
    const-string/jumbo v1, "BluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAliasName: name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-object v0
.end method

.method public getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1091
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1092
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, "BT not enabled. Cannot get Bluetooth Class"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    return-object v6

    .line 1096
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 1097
    .local v0, "classInt":I
    const/high16 v3, -0x1000000

    if-ne v0, v3, :cond_1

    return-object v6

    .line 1098
    :cond_1
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBluetoothClass: classInt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    new-instance v3, Landroid/bluetooth/BluetoothClass;

    invoke-direct {v3, v0}, Landroid/bluetooth/BluetoothClass;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1102
    .end local v0    # "classInt":I
    :catch_0
    move-exception v2

    .line 1105
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NullPointerException for getBluetoothClass() of device ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1106
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 1105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1106
    const-string/jumbo v5, ")"

    .line 1105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1109
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    return-object v6

    .line 1100
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBondState()I
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 1018
    const/16 v2, 0xa

    .line 1019
    .local v2, "state":I
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1020
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, "BT not enabled. Cannot get bond state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return v6

    .line 1024
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 1025
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBondState: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    return v2

    .line 1028
    :catch_0
    move-exception v1

    .line 1031
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NullPointerException for getBondState() of device ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1032
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 1031
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1032
    const-string/jumbo v5, ")"

    .line 1031
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1034
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    return v6

    .line 1027
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMessageAccessPermission()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1369
    const/4 v2, 0x0

    .line 1370
    .local v2, "permission":I
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1371
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, "sService == null, return ACCESS_UNKNOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return v6

    .line 1375
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 1376
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMessageAccessPermission: permission = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    return v2

    .line 1382
    :catch_0
    move-exception v1

    .line 1385
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NullPointerException for getMessageAccessPermission() of device ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1386
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 1385
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1386
    const-string/jumbo v5, ")"

    .line 1385
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1389
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    return v6

    .line 1378
    :catch_1
    move-exception v0

    .line 1379
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 739
    const/4 v1, 0x0

    .line 740
    .local v1, "name":Ljava/lang/String;
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 741
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, "BT not enabled. Cannot get Remote Device name"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return-object v6

    .line 745
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getName: name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    return-object v1

    .line 749
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 752
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NullPointerException for getName() of device ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 753
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 752
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 753
    const-string/jumbo v5, ")"

    .line 752
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    return-object v6

    .line 748
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPhonebookAccessPermission()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1317
    const/4 v2, 0x0

    .line 1318
    .local v2, "permission":I
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1319
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, "sService == null, return ACCESS_UNKNOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    return v6

    .line 1323
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 1324
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPhonebookAccessPermission: permission = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    return v2

    .line 1330
    :catch_0
    move-exception v1

    .line 1333
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NullPointerException for getPhonebookAccessPermission() of device ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1334
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 1333
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1334
    const-string/jumbo v5, ")"

    .line 1333
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1337
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    return v6

    .line 1326
    :catch_1
    move-exception v0

    .line 1327
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimAccessPermission()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1421
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v2, :cond_0

    .line 1422
    return v5

    .line 1425
    :cond_0
    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p0}, Landroid/bluetooth/IBluetooth;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1430
    :catch_0
    move-exception v1

    .line 1433
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "BluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NullPointerException for getSimAccessPermission() of device ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1434
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1433
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1434
    const-string/jumbo v4, ")"

    .line 1433
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1437
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    return v5

    .line 1426
    :catch_1
    move-exception v0

    .line 1427
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 769
    const/4 v2, 0x0

    .line 770
    .local v2, "type":I
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 771
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, "BT not enabled. Cannot get Remote Device type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return v6

    .line 775
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 776
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getType: type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    return v2

    .line 780
    :catch_0
    move-exception v1

    .line 783
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NullPointerException for getType() of device ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 784
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 783
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 784
    const-string/jumbo v5, ")"

    .line 783
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    return v6

    .line 778
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1126
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1127
    :cond_0
    const-string/jumbo v4, "BluetoothDevice"

    const-string/jumbo v5, "BT not enabled. Cannot get remote device Uuids"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    return-object v7

    .line 1131
    :cond_1
    :try_start_0
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4, p0}, Landroid/bluetooth/IBluetooth;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 1132
    .local v3, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v3, :cond_2

    .line 1133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1134
    const-string/jumbo v4, "BluetoothDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uuids["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1137
    .end local v1    # "i":I
    :cond_2
    return-object v3

    .line 1140
    .end local v3    # "uuids":[Landroid/os/ParcelUuid;
    :catch_0
    move-exception v2

    .line 1143
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "BluetoothDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NullPointerException for getUuids() of device ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1144
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1144
    const-string/jumbo v6, ")"

    .line 1143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1147
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    return-object v7

    .line 1138
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "BluetoothDevice"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBluetoothDock()Z
    .locals 1

    .prologue
    .line 1298
    const/4 v0, 0x0

    return v0
.end method

.method isBluetoothEnabled()Z
    .locals 3

    .prologue
    .line 1302
    const/4 v1, 0x0

    .line 1303
    .local v1, "ret":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1304
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1305
    const/4 v1, 0x1

    .line 1307
    :cond_0
    return v1
.end method

.method public isConnected()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1046
    const/4 v1, 0x0

    .line 1047
    .local v1, "isConnected":Z
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v2, :cond_0

    .line 1049
    return v5

    .line 1052
    :cond_0
    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p0}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 1053
    :goto_0
    const-string/jumbo v2, "BluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isConnected: isConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    return v1

    .line 1052
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    return v5
.end method

.method public isEncrypted()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1071
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1073
    return v2

    .line 1076
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-le v3, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1079
    return v2
.end method

.method public removeBond()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 995
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 996
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, "BT not enabled. Cannot remove Remote Device bond"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return v4

    .line 1000
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeBond: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1002
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1003
    return v4
.end method

.method public sdpSearch(Landroid/os/ParcelUuid;)Z
    .locals 4
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    const/4 v3, 0x0

    .line 1209
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 1210
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, "BT not enabled. Cannot query remote device sdp records"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    return v3

    .line 1214
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, "sdpSearch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1216
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    return v3
.end method

.method public setAlias(Ljava/lang/String;)Z
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 830
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 831
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, "BT not enabled. Cannot set Remote Device name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return v4

    .line 835
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAlias: alias = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 837
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    return v4
.end method

.method public setDeviceOutOfBandData([B[B)Z
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "randomizer"    # [B

    .prologue
    .line 962
    const/4 v0, 0x0

    return v0
.end method

.method public setMessageAccessPermission(I)Z
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 1401
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 1402
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, "sService == null, return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    return v4

    .line 1406
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMessageAccessPermission: value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1411
    return v4
.end method

.method public setPairingConfirmation(Z)Z
    .locals 5
    .param p1, "confirm"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1257
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 1258
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, "BT not enabled. Cannot set pairing confirmation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    return v4

    .line 1262
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPairingConfirmation: device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "confirm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1264
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1265
    return v4
.end method

.method public setPasskey(I)Z
    .locals 4
    .param p1, "passkey"    # I

    .prologue
    .line 1241
    const-string/jumbo v1, "BluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPasskey: passkey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-interface {v1, p0, v2, v3, p1}, Landroid/bluetooth/IBluetooth;->setPasskeyEx(Landroid/bluetooth/BluetoothDevice;ZII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1244
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1245
    const/4 v1, 0x0

    return v1
.end method

.method public setPhonebookAccessPermission(I)Z
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 1349
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 1350
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, "sService == null, return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    return v4

    .line 1354
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPhonebookAccessPermission: value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1356
    :catch_0
    move-exception v0

    .line 1357
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1359
    return v4
.end method

.method public setPin([B)Z
    .locals 5
    .param p1, "pin"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1228
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 1229
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, "BT not enabled. Cannot set Remote Device pin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    return v4

    .line 1233
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPin: device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    array-length v2, p1

    const/4 v3, 0x1

    invoke-interface {v1, p0, v3, v2, p1}, Landroid/bluetooth/IBluetooth;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1235
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1236
    return v4
.end method

.method public setRemoteOutOfBandData()Z
    .locals 1

    .prologue
    .line 1275
    const/4 v0, 0x0

    return v0
.end method

.method public setSimAccessPermission(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 1449
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 1450
    return v3

    .line 1453
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothDevice"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1457
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 714
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 713
    return-void
.end method
