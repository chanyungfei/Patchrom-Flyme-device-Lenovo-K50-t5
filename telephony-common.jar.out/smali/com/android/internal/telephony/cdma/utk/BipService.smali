.class public Lcom/android/internal/telephony/cdma/utk/BipService;
.super Ljava/lang/Object;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;
    }
.end annotation


# static fields
.field private static final APN_DEFFAULT:Ljava/lang/String; = "ctwap"

.field private static final APN_ENABLE_FEATURE:Ljava/lang/String; = "enableSUPL"

.field private static final APN_PASSWORD:Ljava/lang/String; = "vnet.mobi"

.field private static final APN_URI:Landroid/net/Uri;

.field private static final APN_USER_NAME:Ljava/lang/String; = "ctwap@mycdma.cn"

.field private static final BIPCHANNEL_MAX:I = 0x8

.field private static final DEFAULT_NETWORK_TYPE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "BipService"

.field private static sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/BipService;

.field private static sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/BipService;


# instance fields
.field private mBipChannelHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/utk/BipChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mBipChannelLock:Ljava/lang/Object;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

.field private mContext:Landroid/content/Context;

.field private mLocalIps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mUtkService:Landroid/os/Handler;

.field private mWaitConnect:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/cdma/utk/BipService;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/cdma/utk/BipService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/cdma/utk/BipService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/cdma/utk/BipService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/cdma/utk/BipService;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/BipService;->findBipChannelToLink()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 0
    .param p1, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->onNetworkConnected(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_URI:Landroid/net/Uri;

    .line 58
    sput-object v1, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 59
    sput-object v1, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mUtkService:Landroid/os/Handler;

    .line 62
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mPhoneId:I

    .line 66
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    .line 67
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 69
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    .line 71
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    .line 72
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    .line 76
    const-string/jumbo v1, "BipService"

    const-string/jumbo v2, "BipService version 1.3.1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    .line 79
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    .line 80
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mUtkService:Landroid/os/Handler;

    .line 81
    iput p3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mPhoneId:I

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    .line 88
    const-string/jumbo v2, "connectivity"

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method private CreatNewBipChannel(Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;)Lcom/android/internal/telephony/cdma/utk/BipChannel;
    .locals 7
    .param p1, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 440
    const-string/jumbo v2, "BipService"

    const-string/jumbo v3, " CreatNewBipChannel"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x0

    .line 446
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    const/4 v1, 0x1

    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    .local v1, "id":I
    :goto_0
    if-gt v1, v6, :cond_0

    .line 447
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v3

    .line 448
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    monitor-exit v3

    .line 450
    if-nez v0, :cond_1

    .line 455
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :cond_0
    if-le v1, v6, :cond_2

    .line 456
    const-string/jumbo v2, "BipService"

    const-string/jumbo v3, " no free channel"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-object v5

    .line 447
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 446
    .restart local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :cond_2
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v2, v2, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    .line 461
    const/4 v3, 0x2

    .line 460
    if-ne v2, v3, :cond_3

    .line 462
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;ILandroid/content/Context;)V

    .line 484
    .restart local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v3

    .line 485
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 488
    return-object v0

    .line 467
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :cond_3
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v2, v2, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    .line 468
    const/4 v3, 0x1

    .line 467
    if-ne v2, v3, :cond_4

    .line 469
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;ILandroid/content/Context;)V

    .restart local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    goto :goto_1

    .line 474
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :cond_4
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v2, v2, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    .line 475
    const/4 v3, 0x3

    .line 474
    if-ne v2, v3, :cond_5

    .line 476
    const-string/jumbo v2, "BipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " tcp server, immediateLink="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 477
    const-string/jumbo v4, " backgrountMode="

    .line 476
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 477
    iget-boolean v4, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    .line 476
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;ILandroid/content/Context;)V

    .restart local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    goto :goto_1

    .line 480
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :cond_5
    const-string/jumbo v2, "BipService"

    const-string/jumbo v3, " channel type not support"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-object v5

    .line 484
    .restart local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private findBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 512
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 513
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    monitor-exit v2

    .line 516
    const-string/jumbo v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " FindBipChannelById:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-object v0

    .line 512
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private findBipChannelToLink()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/BipChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    const-string/jumbo v3, "BipService"

    const-string/jumbo v4, " FindBipChannelToLink"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v1, "chs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/utk/BipChannel;>;"
    const/4 v2, 0x1

    .local v2, "id":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    .line 498
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v4

    .line 499
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    monitor-exit v4

    .line 501
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->isBackgroudModOrImmediate()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->isLinked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 502
    .restart local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :cond_1
    const-string/jumbo v3, "BipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 507
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :cond_2
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/telephony/cdma/utk/BipService;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 109
    const-string/jumbo v0, "BipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Bip getInstance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-nez p2, :cond_1

    .line 111
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/BipService;

    if-nez v0, :cond_0

    .line 112
    const-string/jumbo v0, "BipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " new BipService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/BipService;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 115
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/BipService;

    return-object v0

    .line 116
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p2, :cond_3

    .line 117
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/BipService;

    if-nez v0, :cond_2

    .line 118
    const-string/jumbo v0, "BipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " new BipService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/BipService;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 121
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/BipService;

    return-object v0

    .line 123
    :cond_3
    const-string/jumbo v0, "BipService"

    const-string/jumbo v1, "Invalid phone Id and just return null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-object v3
.end method

.method private onNetworkConnected(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 10
    .param p1, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    const/16 v9, 0x14

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 135
    const-string/jumbo v5, "BipService"

    const-string/jumbo v6, " onNetworkConnected"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-nez p1, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->linkEstablish()I

    move-result v4

    .line 142
    .local v4, "ret":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelParams()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-result-object v2

    .line 144
    .local v2, "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    if-nez v4, :cond_5

    .line 145
    iget-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-eqz v5, :cond_2

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;-><init>()V

    .line 149
    .local v3, "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    iput-object v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 150
    iget-object v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iput-object v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 151
    iget v5, p1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    iput v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    .line 152
    iget-object v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 154
    :try_start_0
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/utk/OtherAddress;-><init>()V

    iput-object v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 155
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    const/16 v6, 0x21

    iput v6, v5, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->addressType:I

    .line 156
    iget-object v6, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mLocalIps:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    iput-object v5, v6, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->address:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 163
    .local v0, "arg2":I
    iget v5, v3, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    iget v6, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    if-eq v5, v6, :cond_4

    .line 164
    const/4 v0, 0x4

    .line 167
    :cond_4
    invoke-virtual {p0, v9, v8, v0, v3}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 157
    .end local v0    # "arg2":I
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v5, "BipService"

    const-string/jumbo v6, " UnknownHostException"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 171
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v3    # "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->removeBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 172
    iget-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-nez v5, :cond_1

    .line 173
    const/4 v5, 0x1

    .line 174
    const/4 v6, 0x3

    .line 173
    invoke-virtual {p0, v9, v5, v6, v7}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method private removeBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 3
    .param p1, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    .line 522
    if-nez p1, :cond_0

    .line 523
    const-string/jumbo v0, "BipService"

    const-string/jumbo v1, " RemoveBipChannel null ch"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return-void

    .line 527
    :cond_0
    const-string/jumbo v0, "BipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " RemoveBipChannel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mBipChannelHash:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 521
    return-void

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setBipApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 536
    const-string/jumbo v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " setBipApnParams:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " user name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " passwd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/4 v11, 0x0

    .line 539
    .local v11, "numeric":Ljava/lang/String;
    const/4 v9, 0x0

    .line 540
    .local v9, "mcc":Ljava/lang/String;
    const/4 v10, 0x0

    .line 541
    .local v10, "mnc":Ljava/lang/String;
    const-string/jumbo v7, "supl"

    .line 543
    .local v7, "apnType":Ljava/lang/String;
    const-string/jumbo v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 545
    .local v11, "numeric":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 546
    const/4 v8, 0x0

    .line 547
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 548
    .local v9, "mcc":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 550
    .local v10, "mnc":Ljava/lang/String;
    const-string/jumbo v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "name = \'BIP\' and numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 554
    .local v4, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 555
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 556
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 557
    .local v13, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    const-string/jumbo v2, "BIP"

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string/jumbo v1, "apn"

    invoke-virtual {v13, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string/jumbo v1, "user"

    move-object/from16 v0, p2

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string/jumbo v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string/jumbo v1, "type"

    invoke-virtual {v13, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string/jumbo v1, "mcc"

    invoke-virtual {v13, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string/jumbo v1, "mnc"

    invoke-virtual {v13, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string/jumbo v1, "numeric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 567
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 568
    .local v12, "row":Landroid/net/Uri;
    if-eqz v12, :cond_1

    .line 569
    const-string/jumbo v1, "BipService"

    const-string/jumbo v2, " insert a new record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .end local v12    # "row":Landroid/net/Uri;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 534
    .end local v4    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "mcc":Ljava/lang/String;
    .end local v10    # "mnc":Ljava/lang/String;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 571
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "mcc":Ljava/lang/String;
    .restart local v10    # "mnc":Ljava/lang/String;
    .restart local v12    # "row":Landroid/net/Uri;
    .restart local v13    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string/jumbo v1, "BipService"

    const-string/jumbo v2, " fail to insert a new record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    .end local v12    # "row":Landroid/net/Uri;
    :cond_2
    const-string/jumbo v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " record"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/BipService;->APN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v13, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public closeChannel(IZ)V
    .locals 9
    .param p1, "chId"    # I
    .param p2, "listen"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x17

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 288
    const-string/jumbo v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " closeChannel id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " listen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->findBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v0

    .line 291
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->linkDisconnect(Z)I

    move-result v1

    if-nez v1, :cond_0

    .line 293
    const-string/jumbo v1, "BipService"

    const-string/jumbo v2, " closeChannel OK"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, v6, v5, v5, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 302
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->removeBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 287
    :goto_1
    return-void

    .line 297
    :cond_0
    const-string/jumbo v1, "BipService"

    const-string/jumbo v2, " closeChannel fail"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v6, v7, v8, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p0, v6, v7, v8, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    const-string/jumbo v0, "dispose"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityReceiver:Lcom/android/internal/telephony/cdma/utk/BipService$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mPhoneId:I

    if-nez v0, :cond_0

    .line 100
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 95
    :goto_0
    return-void

    .line 101
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mPhoneId:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 102
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/BipService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/BipService;

    goto :goto_0

    .line 104
    :cond_1
    const-string/jumbo v0, "invalid dispose"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChannelStatus(I)V
    .locals 8
    .param p1, "chId"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x18

    const/4 v5, 0x0

    .line 358
    const-string/jumbo v2, "BipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " getChannelStatus id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->findBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v0

    .line 361
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getChannelStatus()Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    move-result-object v1

    .line 363
    .local v1, "cs":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    invoke-virtual {p0, v6, v5, v5, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 357
    .end local v1    # "cs":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    :goto_0
    return-void

    .line 366
    :cond_0
    const/4 v2, 0x1

    .line 367
    const/4 v3, 0x2

    .line 366
    invoke-virtual {p0, v6, v2, v3, v7}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public openChannel(Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;)V
    .locals 13
    .param p1, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/16 v10, 0x14

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 180
    const-string/jumbo v5, "BipService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " openChannel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    if-eq v5, v12, :cond_0

    .line 183
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 184
    const-string/jumbo v5, "BipService"

    const-string/jumbo v6, " not surpot bearerType"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v5, 0x5

    .line 186
    invoke-virtual {p0, v10, v9, v5, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 188
    return-void

    .line 191
    :cond_0
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->CreatNewBipChannel(Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v1

    .line 197
    .local v1, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-nez v1, :cond_1

    .line 198
    const-string/jumbo v5, "BipService"

    const-string/jumbo v6, " get null channel"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v5, 0x2

    .line 199
    invoke-virtual {p0, v10, v9, v5, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 201
    return-void

    .line 204
    :cond_1
    const/4 v2, -0x1

    .line 205
    .local v2, "netConnected":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 206
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-nez v3, :cond_2

    .line 207
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->removeBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 208
    invoke-virtual {p0, v10, v9, v12, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 210
    return-void

    .line 213
    :cond_2
    const-string/jumbo v5, "BipService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " openChannel network tate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_3

    .line 215
    const/4 v2, 0x0

    .line 235
    :cond_3
    if-eqz v2, :cond_4

    .line 236
    if-eq v2, v9, :cond_4

    .line 237
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->removeBipChannel(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 239
    invoke-virtual {p0, v10, v9, v12, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 241
    return-void

    .line 244
    :cond_4
    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    if-nez v5, :cond_5

    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-eqz v5, :cond_8

    .line 261
    :cond_5
    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-eqz v5, :cond_7

    .line 262
    const-string/jumbo v5, "BipService"

    const-string/jumbo v6, " open channel background mode"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;-><init>()V

    .line 266
    .local v4, "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 267
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 268
    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    iput v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "arg2":I
    iget v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    if-eq v5, v6, :cond_6

    .line 272
    const-string/jumbo v5, "BipService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " bufferSize chanded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x4

    .line 276
    :cond_6
    invoke-virtual {p0, v10, v8, v0, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 280
    .end local v0    # "arg2":I
    .end local v4    # "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_7
    if-nez v2, :cond_9

    .line 281
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->onNetworkConnected(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 179
    :goto_0
    return-void

    .line 246
    :cond_8
    const-string/jumbo v5, "BipService"

    const-string/jumbo v6, " open channel ondemand"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;-><init>()V

    .line 250
    .restart local v4    # "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 251
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 252
    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    iput v5, v4, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    .line 254
    invoke-virtual {p0, v10, v8, v8, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 258
    return-void

    .line 283
    .end local v4    # "r":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_9
    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mWaitConnect:Z

    goto :goto_0
.end method

.method public receiveData(II)V
    .locals 5
    .param p1, "chId"    # I
    .param p2, "reqDataLen"    # I

    .prologue
    const/4 v4, 0x0

    .line 310
    const-string/jumbo v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " receiveData id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reqDataLen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->findBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v0

    .line 313
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_1

    .line 314
    const/16 v1, 0xe4

    if-le p2, v1, :cond_0

    .line 315
    const/16 p2, 0xe4

    .line 316
    const-string/jumbo v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " change reqDataLen to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->receiveData(I)V

    .line 309
    :goto_0
    return-void

    .line 321
    :cond_1
    const/16 v1, 0x16

    const/4 v2, 0x1

    .line 322
    const/4 v3, 0x2

    .line 321
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public sendData(I[BZ)V
    .locals 8
    .param p1, "chId"    # I
    .param p2, "data"    # [B
    .param p3, "sendImmediately"    # Z

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 327
    const-string/jumbo v2, "BipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " sendData chId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sendImmediately:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    if-nez p2, :cond_0

    .line 329
    const-string/jumbo v2, "BipService"

    const-string/jumbo v3, " sendData, but no data"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v2, 0x3

    .line 330
    invoke-virtual {p0, v7, v6, v2, v5}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 332
    return-void

    .line 335
    :cond_0
    const-string/jumbo v2, "BipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " sendData length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipService;->findBipChannelById(I)Lcom/android/internal/telephony/cdma/utk/BipChannel;

    move-result-object v0

    .line 338
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_3

    .line 339
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->getBipChannelParams()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-result-object v1

    .line 340
    .local v1, "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->isLinked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    iget-boolean v2, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-eqz v2, :cond_2

    .line 350
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->sendData([BZ)V

    .line 326
    .end local v1    # "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    :goto_0
    return-void

    .line 343
    .restart local v1    # "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->linkEstablish()I

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    invoke-virtual {p0, v7, v6, v6, v5}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 346
    return-void

    .line 353
    .end local v1    # "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    :cond_3
    const/4 v2, 0x2

    .line 352
    invoke-virtual {p0, v7, v6, v2, v5}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public sendResponseToUtk(IIILjava/lang/Object;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 129
    const-string/jumbo v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " sendResponseToUtk:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mUtkService:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 131
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipService;->mUtkService:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method
