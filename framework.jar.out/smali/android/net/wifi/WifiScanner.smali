.class public Landroid/net/wifi/WifiScanner;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ActionListener;,
        Landroid/net/wifi/WifiScanner$ChannelSpec;,
        Landroid/net/wifi/WifiScanner$ScanSettings;,
        Landroid/net/wifi/WifiScanner$ScanData;,
        Landroid/net/wifi/WifiScanner$ParcelableScanData;,
        Landroid/net/wifi/WifiScanner$ParcelableScanResults;,
        Landroid/net/wifi/WifiScanner$ScanListener;,
        Landroid/net/wifi/WifiScanner$BssidInfo;,
        Landroid/net/wifi/WifiScanner$WifiChangeSettings;,
        Landroid/net/wifi/WifiScanner$WifiChangeListener;,
        Landroid/net/wifi/WifiScanner$BssidListener;,
        Landroid/net/wifi/WifiScanner$HotlistSettings;,
        Landroid/net/wifi/WifiScanner$OperationResult;,
        Landroid/net/wifi/WifiScanner$ServiceHandler;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27000

.field public static final CMD_AP_FOUND:I = 0x27009

.field public static final CMD_AP_LOST:I = 0x2700a

.field public static final CMD_CONFIGURE_WIFI_CHANGE:I = 0x2700d

.field public static final CMD_FULL_SCAN_RESULT:I = 0x27014

.field public static final CMD_GET_SCAN_RESULTS:I = 0x27004

.field public static final CMD_OP_FAILED:I = 0x27012

.field public static final CMD_OP_SUCCEEDED:I = 0x27011

.field public static final CMD_PERIOD_CHANGED:I = 0x27013

.field public static final CMD_RESET_HOTLIST:I = 0x27007

.field public static final CMD_SCAN:I = 0x27000

.field public static final CMD_SCAN_RESULT:I = 0x27005

.field public static final CMD_SET_HOTLIST:I = 0x27006

.field public static final CMD_SINGLE_SCAN_COMPLETED:I = 0x27017

.field public static final CMD_START_BACKGROUND_SCAN:I = 0x27002

.field public static final CMD_START_SINGLE_SCAN:I = 0x27015

.field public static final CMD_START_TRACKING_CHANGE:I = 0x2700b

.field public static final CMD_STOP_BACKGROUND_SCAN:I = 0x27003

.field public static final CMD_STOP_SINGLE_SCAN:I = 0x27016

.field public static final CMD_STOP_TRACKING_CHANGE:I = 0x2700c

.field public static final CMD_WIFI_CHANGES_STABILIZED:I = 0x27010

.field public static final CMD_WIFI_CHANGE_DETECTED:I = 0x2700f

.field private static final DBG:Z = false

.field public static final GET_AVAILABLE_CHANNELS_EXTRA:Ljava/lang/String; = "Channels"

.field private static final INVALID_KEY:I = 0x0

.field public static final MAX_SCAN_PERIOD_MS:I = 0xfa000

.field public static final MIN_SCAN_PERIOD_MS:I = 0x3e8

.field public static final REASON_INVALID_LISTENER:I = -0x2

.field public static final REASON_INVALID_REQUEST:I = -0x3

.field public static final REASON_NOT_AUTHORIZED:I = -0x4

.field public static final REASON_SUCCEEDED:I = 0x0

.field public static final REASON_UNSPECIFIED:I = -0x1

.field public static final REPORT_EVENT_AFTER_BUFFER_FULL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPORT_EVENT_AFTER_EACH_SCAN:I = 0x1

.field public static final REPORT_EVENT_FULL_SCAN_RESULT:I = 0x2

.field public static final REPORT_EVENT_NO_BATCH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiScanner"

.field public static final WIFI_BAND_24_GHZ:I = 0x1

.field public static final WIFI_BAND_5_GHZ:I = 0x2

.field public static final WIFI_BAND_5_GHZ_DFS_ONLY:I = 0x4

.field public static final WIFI_BAND_5_GHZ_WITH_DFS:I = 0x6

.field public static final WIFI_BAND_BOTH:I = 0x3

.field public static final WIFI_BAND_BOTH_WITH_DFS:I = 0x7

.field public static final WIFI_BAND_UNSPECIFIED:I

.field private static sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private static sConnected:Ljava/util/concurrent/CountDownLatch;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sListenerKey:I

.field private static final sListenerMap:Landroid/util/SparseArray;

.field private static final sListenerMapLock:Ljava/lang/Object;

.field private static sThreadRefCount:I

.field private static final sThreadRefLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/net/wifi/IWifiScanner;


# direct methods
.method static synthetic -get0()Lcom/android/internal/util/AsyncChannel;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiScanner;->sConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    sput-object p0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p0
.end method

.method static synthetic -wrap0(I)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # I

    .prologue
    invoke-static {p0}, Landroid/net/wifi/WifiScanner;->getListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(I)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # I

    .prologue
    invoke-static {p0}, Landroid/net/wifi/WifiScanner;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x1

    sput v0, Landroid/net/wifi/WifiScanner;->sListenerKey:I

    .line 798
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    .line 799
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    .line 804
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner;->sThreadRefLock:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiScanner;

    .prologue
    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 819
    iput-object p2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    .line 820
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->init()V

    .line 817
    return-void
.end method

.method private static getListener(I)Ljava/lang/Object;
    .locals 3
    .param p0, "key"    # I

    .prologue
    .line 874
    if-nez p0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 875
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 876
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "listener":Ljava/lang/Object;
    monitor-exit v2

    .line 877
    return-object v0

    .line 875
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getListenerKey(Ljava/lang/Object;)I
    .locals 4
    .param p0, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 882
    if-nez p0, :cond_0

    return v3

    .line 883
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 884
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 885
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    monitor-exit v2

    .line 886
    return v3

    .line 888
    :cond_1
    :try_start_1
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 883
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 824
    sget-object v6, Landroid/net/wifi/WifiScanner;->sThreadRefLock:Ljava/lang/Object;

    monitor-enter v6

    .line 825
    :try_start_0
    sget v5, Landroid/net/wifi/WifiScanner;->sThreadRefCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Landroid/net/wifi/WifiScanner;->sThreadRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v7, :cond_1

    .line 826
    const/4 v4, 0x0

    .line 828
    .local v4, "messenger":Landroid/os/Messenger;
    :try_start_1
    iget-object v5, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-interface {v5}, Landroid/net/wifi/IWifiScanner;->getMessenger()Landroid/os/Messenger;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 835
    .end local v4    # "messenger":Landroid/os/Messenger;
    :goto_0
    if-nez v4, :cond_0

    .line 836
    const/4 v5, 0x0

    :try_start_2
    sput-object v5, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    .line 837
    return-void

    .line 840
    :cond_0
    :try_start_3
    new-instance v5, Landroid/os/HandlerThread;

    const-string/jumbo v7, "WifiScanner"

    invoke-direct {v5, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v5, Landroid/net/wifi/WifiScanner;->sHandlerThread:Landroid/os/HandlerThread;

    .line 841
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    sput-object v5, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 842
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v5, Landroid/net/wifi/WifiScanner;->sConnected:Ljava/util/concurrent/CountDownLatch;

    .line 844
    sget-object v5, Landroid/net/wifi/WifiScanner;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 845
    new-instance v3, Landroid/net/wifi/WifiScanner$ServiceHandler;

    sget-object v5, Landroid/net/wifi/WifiScanner;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/net/wifi/WifiScanner$ServiceHandler;-><init>(Landroid/os/Looper;)V

    .line 846
    .local v3, "handler":Landroid/os/Handler;
    sget-object v5, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v7, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 848
    :try_start_4
    sget-object v5, Landroid/net/wifi/WifiScanner;->sConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "handler":Landroid/os/Handler;
    :cond_1
    :goto_1
    monitor-exit v6

    .line 823
    return-void

    .line 849
    .restart local v3    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v1

    .line 850
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v5, "WifiScanner"

    const-string/jumbo v7, "interrupted wait at init"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 824
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 829
    .restart local v4    # "messenger":Landroid/os/Messenger;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 831
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private static putListener(Ljava/lang/Object;)I
    .locals 3
    .param p0, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 862
    if-nez p0, :cond_0

    return v1

    .line 864
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 866
    :cond_1
    :try_start_0
    sget v0, Landroid/net/wifi/WifiScanner;->sListenerKey:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/net/wifi/WifiScanner;->sListenerKey:I

    .line 867
    .local v0, "key":I
    if-eqz v0, :cond_1

    .line 868
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 870
    return v0

    .line 864
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static removeListener(Ljava/lang/Object;)I
    .locals 3
    .param p0, "listener"    # Ljava/lang/Object;

    .prologue
    .line 903
    invoke-static {p0}, Landroid/net/wifi/WifiScanner;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    .line 904
    .local v0, "key":I
    if-nez v0, :cond_0

    return v0

    .line 905
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 906
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 907
    return v0

    .line 905
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p0, "key"    # I

    .prologue
    .line 894
    if-nez p0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 895
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 896
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 897
    .local v0, "listener":Ljava/lang/Object;
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 898
    return-object v0

    .line 895
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private validateChannel()V
    .locals 2

    .prologue
    .line 857
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 858
    const-string/jumbo v1, "No permission to access and change wifi or a bad initialization"

    .line 857
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_0
    return-void
.end method


# virtual methods
.method public configureWifiChange(IIIII[Landroid/net/wifi/WifiScanner$BssidInfo;)V
    .locals 4
    .param p1, "rssiSampleSize"    # I
    .param p2, "lostApSampleSize"    # I
    .param p3, "unchangedSampleSize"    # I
    .param p4, "minApsBreachingThreshold"    # I
    .param p5, "periodInMs"    # I
    .param p6, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;

    .prologue
    .line 590
    const-string/jumbo v1, "WifiScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "configureWifiChange, pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 593
    new-instance v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    .line 594
    .local v0, "settings":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    iput p1, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    .line 595
    iput p2, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    .line 596
    iput p3, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    .line 597
    iput p4, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    .line 598
    iput p5, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    .line 599
    iput-object p6, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 601
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiScanner;->configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    .line 588
    return-void
.end method

.method public configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .prologue
    const/4 v3, 0x0

    .line 643
    const-string/jumbo v0, "WifiScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "configureWifiChange, pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 645
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2700d

    invoke-virtual {v0, v1, v3, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 642
    return-void
.end method

.method public getAvailableChannels(I)Ljava/util/List;
    .locals 3
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-interface {v2, p1}, Landroid/net/wifi/IWifiScanner;->getAvailableChannels(I)Landroid/os/Bundle;

    move-result-object v0

    .line 111
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "Channels"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 112
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public getScanResults()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 466
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 467
    sget-object v2, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27004

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 468
    .local v0, "reply":Landroid/os/Message;
    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x27011

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    .line 447
    const-string/jumbo v0, "WifiScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startBackgroundScan, pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 449
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-static {p2}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x27002

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 446
    return-void
.end method

.method public startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    .line 480
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 481
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-static {p2}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x27015

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 479
    return-void
.end method

.method public startTrackingBssids([Landroid/net/wifi/WifiScanner$BssidInfo;ILandroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 5
    .param p1, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;
    .param p2, "apLostThreshold"    # I
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;

    .prologue
    .line 723
    const-string/jumbo v1, "WifiScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTrackingBssids, pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 725
    new-instance v0, Landroid/net/wifi/WifiScanner$HotlistSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    .line 726
    .local v0, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iput-object p1, v0, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 727
    sget-object v1, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-static {p3}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x27006

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 722
    return-void
.end method

.method public startTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .prologue
    .line 624
    const-string/jumbo v0, "WifiScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTrackingWifiChange, pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 626
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2700b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 623
    return-void
.end method

.method public stopBackgroundScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    .line 457
    const-string/jumbo v0, "WifiScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopBackgroundScan, pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 459
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x27003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 456
    return-void
.end method

.method public stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    .line 490
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 491
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x27016

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 489
    return-void
.end method

.method public stopTrackingBssids(Landroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;

    .prologue
    .line 735
    const-string/jumbo v0, "WifiScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopTrackingBssids, pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 737
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x27007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 734
    return-void
.end method

.method public stopTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .prologue
    .line 635
    const-string/jumbo v0, "WifiScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopTrackingWifiChange, pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 637
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2700c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 634
    return-void
.end method
