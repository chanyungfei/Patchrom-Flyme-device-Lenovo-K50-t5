.class public Lcom/android/server/wifi/WifiAutoJoinController;
.super Ljava/lang/Object;
.source "WifiAutoJoinController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiAutoJoinController$1;
    }
.end annotation


# static fields
.field private static final ASSOC_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUTO_JOIN_EXTENDED_ROAMING:I = 0x2

.field public static final AUTO_JOIN_IDLE:I = 0x0

.field public static final AUTO_JOIN_OUT_OF_NETWORK_ROAMING:I = 0x3

.field public static final AUTO_JOIN_ROAMING:I = 0x1

.field private static DBG:Z = false

.field private static final DEFAULT_EPHEMERAL_OUT_OF_RANGE_TIMEOUT_MS:J = 0xea60L

.field public static final DRIVER_ROMAING:I = 0x6

.field public static final HIGH_THRESHOLD_MODIFIER:I = 0x5

.field public static final MAX_RSSI_DELTA:I = 0x32

.field private static final TAG:Ljava/lang/String; = "WifiAutoJoinController "

.field private static VDBG:Z = false

.field private static final loseBlackListHardMilli:J = 0x1b77400L

.field private static final loseBlackListSoftMilli:J = 0x1b7740L

.field public static mScanResultAutoJoinAge:I

.field public static mScanResultMaximumAge:I

.field private static final mStaStaSupported:Z


# instance fields
.field didBailDueToWeakRssi:Z

.field didOverride:Z

.field private mAllowUntrustedConnections:Z

.field mAutoJoinDebugEnabled:Z

.field public final mAutoJoinProfilingInfo:Ljava/lang/Runnable;

.field private mCompareNetworkString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentConfigurationKey:Ljava/lang/String;

.field mDebugPanelView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

.field private mRecentNetworkString:Ljava/lang/String;

.field mTextView:Landroid/widget/TextView;

.field mToast:Landroid/widget/Toast;

.field private mUserChoiceString:Ljava/lang/String;

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

.field private mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private final scanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private scoreManager:Landroid/net/NetworkScoreManager;

.field weakRssiBailCount:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiAutoJoinController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCompareNetworkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiAutoJoinController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiAutoJoinController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mRecentNetworkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiAutoJoinController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mUserChoiceString:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    .line 92
    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    .line 95
    const v0, 0x9c40

    sput v0, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    .line 96
    const/16 v0, 0x1388

    sput v0, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    .line 1408
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 1409
    const-string/jumbo v1, "ASSOCIATING"

    aput-object v1, v0, v2

    .line 1410
    const-string/jumbo v1, "ASSOCIATED"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1411
    const-string/jumbo v1, "FOUR_WAY_HANDSHAKE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1412
    const-string/jumbo v1, "GROUP_KEY_HANDSHAKE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1408
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiAutoJoinController;->ASSOC_STATES:Ljava/util/List;

    .line 70
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/net/wifi/WifiConnectionStatistics;Lcom/android/server/wifi/WifiNative;Landroid/os/Handler;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "s"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p4, "st"    # Landroid/net/wifi/WifiConnectionStatistics;
    .param p5, "n"    # Lcom/android/server/wifi/WifiNative;
    .param p6, "hn"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mDebugPanelView:Landroid/view/View;

    .line 74
    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mTextView:Landroid/widget/TextView;

    .line 75
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAutoJoinDebugEnabled:Z

    .line 77
    const-string/jumbo v0, "xxx"

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mRecentNetworkString:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "OOO"

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCompareNetworkString:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "OOO"

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mUserChoiceString:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    .line 107
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    .line 144
    iput v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    .line 2085
    new-instance v0, Lcom/android/server/wifi/WifiAutoJoinController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiAutoJoinController$1;-><init>(Lcom/android/server/wifi/WifiAutoJoinController;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAutoJoinProfilingInfo:Ljava/lang/Runnable;

    .line 151
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 153
    iput-object p3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 154
    iput-object p5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 155
    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    .line 156
    iput-object p4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    .line 158
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "network_score"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 157
    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    .line 159
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    if-nez v0, :cond_0

    .line 160
    const-string/jumbo v0, "Registered scoreManager NULL  service network_score"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Lcom/android/server/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    .line 164
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v0, v3, v1}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 172
    :goto_0
    iput-object p6, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mHandler:Landroid/os/Handler;

    .line 150
    return-void

    .line 166
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "No network score service: Couldnt register as a WiFi score Manager, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    const-string/jumbo v1, " service "

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    const-string/jumbo v1, "network_score"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 169
    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    goto :goto_0
.end method

.method private ageScanResultsOut(I)V
    .locals 10
    .param p1, "delay"    # I

    .prologue
    .line 191
    if-gtz p1, :cond_0

    .line 192
    sget p1, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    .line 194
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 195
    .local v2, "milli":J
    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v5, :cond_1

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ageScanResultsOut delay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 197
    iget-object v6, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 197
    const-string/jumbo v6, " now "

    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 200
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 201
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/ScanDetail;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 203
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/ScanDetail;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/ScanDetail;

    .line 204
    .local v4, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v6

    int-to-long v8, p1

    add-long/2addr v6, v8

    cmp-long v5, v6, v2

    if-gez v5, :cond_2

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 190
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/ScanDetail;>;"
    .end local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_3
    return-void
.end method

.method private compareNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 4
    .param p1, "candidate"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "lastSelectedConfiguration"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 400
    if-nez p1, :cond_0

    .line 401
    const/4 v2, -0x3

    return v2

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 404
    .local v0, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 407
    const/16 v2, 0x3e8

    return v2

    .line 410
    :cond_1
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    const/4 v2, -0x2

    return v2

    .line 414
    :cond_2
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v2, :cond_3

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "compareNetwork will compare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    const-string/jumbo v3, " with current "

    .line 415
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 418
    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 426
    .local v1, "order":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    invoke-interface {v2}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasNetworkSelection()I

    move-result v2

    if-nez v2, :cond_4

    .line 427
    if-eqz p2, :cond_5

    .line 428
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 427
    if-eqz v2, :cond_5

    .line 433
    add-int/lit8 v1, v1, -0x64

    .line 434
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v2, :cond_4

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "     ...and prefers -100 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 436
    const-string/jumbo v3, " over "

    .line 435
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 436
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 437
    const-string/jumbo v3, " because it is the last selected -> "

    .line 435
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 438
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 455
    :cond_4
    :goto_0
    return v1

    .line 440
    :cond_5
    if-eqz p2, :cond_4

    .line 441
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 440
    if-eqz v2, :cond_4

    .line 446
    add-int/lit8 v1, v1, 0x64

    .line 447
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v2, :cond_4

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "     ...and prefers +100 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 449
    const-string/jumbo v3, " over "

    .line 448
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 449
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    .line 448
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 450
    const-string/jumbo v3, " because it is the last selected -> "

    .line 448
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 451
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 448
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private compareSecurity(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 8
    .param p1, "candidate1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "candidate2"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 2186
    const/4 v0, 0x0

    .local v0, "candidate1Security":I
    const/4 v1, 0x0

    .line 2193
    .local v1, "candidate2Security":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2194
    :cond_0
    return v4

    .line 2196
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2197
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 2196
    if-nez v2, :cond_2

    .line 2198
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 2196
    if-nez v2, :cond_2

    .line 2199
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 2196
    if-nez v2, :cond_2

    .line 2200
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 2196
    if-nez v2, :cond_2

    .line 2201
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 2196
    if-eqz v2, :cond_6

    .line 2188
    :cond_2
    const/4 v0, 0x2

    .line 2209
    :cond_3
    :goto_0
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2210
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 2209
    if-nez v2, :cond_4

    .line 2211
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 2209
    if-nez v2, :cond_4

    .line 2212
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 2209
    if-nez v2, :cond_4

    .line 2213
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 2209
    if-nez v2, :cond_4

    .line 2214
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 2209
    if-eqz v2, :cond_7

    .line 2188
    :cond_4
    const/4 v1, 0x2

    .line 2222
    :cond_5
    :goto_1
    if-le v0, v1, :cond_8

    .line 2223
    const/4 v2, -0x1

    return v2

    .line 2203
    :cond_6
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v2, :cond_3

    .line 2204
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 2205
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    .line 2187
    const/4 v0, 0x1

    .line 2206
    goto :goto_0

    .line 2216
    :cond_7
    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v2, :cond_5

    .line 2217
    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 2218
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    .line 2187
    const/4 v1, 0x1

    .line 2219
    goto :goto_1

    .line 2225
    :cond_8
    if-ge v0, v1, :cond_9

    .line 2226
    return v6

    .line 2229
    :cond_9
    return v4
.end method

.method private getNetID(Ljava/lang/String;)I
    .locals 11
    .param p1, "wpaStatus"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 1415
    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v8, :cond_0

    .line 1416
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "attemptAutoJoin() status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1420
    :cond_0
    if-nez p1, :cond_1

    .line 1421
    const-string/jumbo v8, "WifiAutoJoinController "

    const-string/jumbo v9, "wpaStatus is null, return WifiConfiguration.INVALID_NETWORK_ID"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    return v10

    .line 1426
    :cond_1
    const/4 v1, -0x1

    .line 1427
    .local v1, "id":I
    const/4 v7, 0x0

    .line 1428
    .local v7, "state":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1430
    .end local v7    # "state":Ljava/lang/String;
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1431
    const/16 v8, 0x3d

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1432
    .local v6, "split":I
    if-ltz v6, :cond_2

    .line 1436
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1437
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v8, "id"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_4

    .line 1439
    add-int/lit8 v8, v6, 0x1

    :try_start_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 1440
    if-eqz v7, :cond_2

    .line 1455
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "split":I
    :cond_3
    :goto_0
    return v1

    .line 1443
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "split":I
    :catch_0
    move-exception v5

    .line 1444
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    return v10

    .line 1446
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_2
    const-string/jumbo v8, "wpa_state"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1447
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1448
    .local v7, "state":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wifi/WifiAutoJoinController;->ASSOC_STATES:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    if-eqz v8, :cond_5

    .line 1449
    return v10

    .line 1450
    :cond_5
    if-ltz v1, :cond_2

    goto :goto_0

    .line 1456
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "split":I
    .end local v7    # "state":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1457
    .local v2, "ioe":Ljava/io/IOException;
    return v10
.end method

.method private haveRecentlySeenScoredBssid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1341
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1342
    const-string/jumbo v10, "wifi_ephemeral_out_of_range_timeout_ms"

    .line 1343
    const-wide/32 v12, 0xea60

    .line 1340
    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1350
    .local v4, "ephemeralOutOfRangeTimeoutMs":J
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 1351
    .local v1, "currentScanResult":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_2

    .line 1352
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v9, v1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->hasScoreCurve(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    .line 1353
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_0

    if-eqz v0, :cond_4

    .line 1354
    :cond_0
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_1

    .line 1355
    if-eqz v0, :cond_3

    .line 1356
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Current network has a score curve, keeping network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1362
    :cond_1
    :goto_1
    return v0

    .line 1351
    :cond_2
    const/4 v0, 0x0

    .local v0, "currentNetworkHasScoreCurve":Z
    goto :goto_0

    .line 1359
    .end local v0    # "currentNetworkHasScoreCurve":Z
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Current network has no score curve, giving up: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_1

    .line 1365
    :cond_4
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1366
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/ScanDetailCache;->isEmpty()Z

    move-result v9

    .line 1365
    if-eqz v9, :cond_6

    .line 1367
    :cond_5
    const/4 v9, 0x0

    return v9

    .line 1370
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1371
    .local v2, "currentTimeMs":J
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "sd$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    .line 1372
    .local v7, "sd":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v6

    .line 1373
    .local v6, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    cmp-long v9, v2, v10

    if-lez v9, :cond_7

    .line 1374
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    sub-long v10, v2, v10

    cmp-long v9, v10, v4

    if-gez v9, :cond_7

    .line 1375
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v9, v6}, Lcom/android/server/wifi/WifiNetworkScoreCache;->hasScoreCurve(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    .line 1373
    if-eqz v9, :cond_7

    .line 1376
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_8

    .line 1377
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Found scored BSSID, keeping network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1379
    :cond_8
    const/4 v9, 0x1

    return v9

    .line 1383
    .end local v6    # "result":Landroid/net/wifi/ScanResult;
    .end local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_9
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_a

    .line 1384
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No recently scored BSSID found, giving up connection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1386
    :cond_a
    const/4 v9, 0x0

    return v9
.end method

.method private isOpenNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v0, 0x0

    .line 1334
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1335
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1334
    :cond_0
    :goto_0
    return v0

    .line 1336
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private logDenial(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2234
    sget-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-nez v0, :cond_0

    .line 2235
    return-void

    .line 2237
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2233
    return-void
.end method

.method private setCurrentConfigurationKey(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 4
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "supplicantNetId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1463
    if-eqz p1, :cond_4

    .line 1464
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq p2, v2, :cond_0

    .line 1467
    if-eq p2, v3, :cond_0

    .line 1468
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v3, :cond_0

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attemptAutoJoin() ERROR wpa_supplicant out of sync nid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1470
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1469
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1470
    const-string/jumbo v2, " WifiStateMachine="

    .line 1469
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1471
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1469
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    .line 1473
    return v1

    .line 1474
    :cond_0
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    if-eqz v2, :cond_2

    .line 1475
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->haveRecentlySeenScoredBssid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1485
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    .line 1486
    return v0

    .line 1480
    :cond_2
    const-string/jumbo v2, "attemptAutoJoin() disconnecting from unwanted ephemeral network"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1481
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 1482
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    if-eqz v3, :cond_3

    .line 1481
    :goto_0
    const/16 v3, 0x3f2

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand(II)V

    .line 1483
    return v1

    :cond_3
    move v0, v1

    .line 1482
    goto :goto_0

    .line 1490
    :cond_4
    if-ne p2, v3, :cond_5

    :goto_1
    return v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private updateBlackListStatus(Landroid/net/wifi/WifiConfiguration;J)V
    .locals 10
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "now"    # J

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1497
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v2, v8, :cond_0

    .line 1498
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1499
    const/4 v3, 0x4

    .line 1498
    if-ne v2, v3, :cond_5

    .line 1502
    :cond_0
    :goto_0
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1503
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_2

    .line 1505
    :cond_1
    iput-wide p2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    .line 1507
    :cond_2
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v2, p2, v2

    .line 1508
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, v4, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    int-to-long v4, v4

    .line 1507
    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 1510
    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1513
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 1514
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 1515
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 1516
    invoke-virtual {p1, v6}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 1518
    iput-boolean v7, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 1530
    :cond_3
    :goto_1
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v2, :cond_4

    .line 1531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attemptAutoJoin skip candidate due to auto join status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1532
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1531
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1532
    const-string/jumbo v3, " key "

    .line 1531
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1533
    invoke-virtual {p1, v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v3

    .line 1531
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1534
    const-string/jumbo v3, " reason "

    .line 1531
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1534
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1531
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1494
    :cond_4
    return-void

    .line 1500
    :cond_5
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1501
    const/4 v3, 0x3

    .line 1500
    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 1520
    :cond_6
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v2, :cond_3

    .line 1521
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    int-to-long v2, v2

    .line 1522
    iget-wide v4, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v4, p2, v4

    .line 1521
    sub-long v0, v2, v4

    .line 1523
    .local v0, "delay":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attemptautoJoin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1524
    const-string/jumbo v3, " dont unblacklist yet, waiting for "

    .line 1523
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1525
    const-string/jumbo v3, " ms"

    .line 1523
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method addToScanCache(Ljava/util/List;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const/4 v8, 0x0

    .line 262
    .local v8, "numScanResultsKnown":I
    const/4 v2, 0x0

    .line 263
    .local v2, "associatedConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    .line 264
    .local v4, "didAssociate":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 266
    .local v6, "now":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v13, "unknownScanResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v4    # "didAssociate":Z
    .local v11, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/ScanDetail;

    .line 269
    .local v10, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v9

    .line 270
    .local v9, "result":Landroid/net/wifi/ScanResult;
    iget-object v14, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v14, :cond_0

    .line 272
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v14, :cond_1

    .line 273
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " addToScanCache "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 274
    const-string/jumbo v15, " tsf="

    .line 273
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 274
    iget-wide v0, v9, Landroid/net/wifi/ScanResult;->timestamp:J

    move-wide/from16 v16, v0

    .line 273
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 275
    const-string/jumbo v15, " now= "

    .line 273
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 275
    const-string/jumbo v15, " uptime="

    .line 273
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 273
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 276
    const-string/jumbo v15, " elapsed="

    .line 273
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 273
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 280
    :cond_1
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->setSeen()J

    .line 282
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->averageRssiAndRemoveFromCache(Landroid/net/wifi/ScanResult;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v14, v9}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 285
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/android/server/wifi/WifiAutoJoinController;->addToUnscoredNetworks(Landroid/net/wifi/ScanResult;Ljava/util/List;)V

    .line 298
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v14, v10}, Lcom/android/server/wifi/WifiConfigStore;->updateSavedNetworkHistory(Lcom/android/server/wifi/ScanDetail;)Z

    move-result v4

    .line 303
    .local v4, "didAssociate":Z
    if-nez v4, :cond_6

    .line 306
    const/4 v14, 0x1

    iput-boolean v14, v9, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 313
    :cond_3
    :goto_2
    if-eqz v4, :cond_7

    .line 314
    add-int/lit8 v8, v8, 0x1

    .line 315
    iget v14, v9, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v9, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    goto/16 :goto_0

    .line 287
    .end local v4    # "didAssociate":Z
    :cond_4
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v14, :cond_2

    .line 288
    const-string/jumbo v3, ""

    .line 289
    .local v3, "cap":Ljava/lang/String;
    iget-object v14, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v14, :cond_5

    .line 290
    iget-object v3, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 291
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v14, v9}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;)I

    move-result v12

    .line 292
    .local v12, "score":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " rssi="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 293
    iget v15, v9, Landroid/net/wifi/ScanResult;->level:I

    .line 292
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 293
    const-string/jumbo v15, " cap "

    .line 292
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 293
    const-string/jumbo v15, " is scored : "

    .line 292
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_1

    .line 309
    .end local v3    # "cap":Ljava/lang/String;
    .end local v12    # "score":I
    .restart local v4    # "didAssociate":Z
    :cond_6
    iget-wide v14, v9, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    sub-long v14, v6, v14

    const-wide/32 v16, 0x1b77400

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 310
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    goto :goto_2

    .line 317
    :cond_7
    const/4 v14, 0x0

    iput v14, v9, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    goto/16 :goto_0

    .line 321
    .end local v4    # "didAssociate":Z
    .end local v9    # "result":Landroid/net/wifi/ScanResult;
    .end local v10    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eqz v14, :cond_9

    .line 323
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/net/NetworkKey;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/net/NetworkKey;

    .line 325
    .local v5, "newKeys":[Landroid/net/NetworkKey;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v14, v5}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 327
    .end local v5    # "newKeys":[Landroid/net/NetworkKey;
    :cond_9
    return v8
.end method

.method addToUnscoredNetworks(Landroid/net/wifi/ScanResult;Ljava/util/List;)V
    .locals 8
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/List",
            "<",
            "Landroid/net/NetworkKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p2, "unknownScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkKey;>;"
    :try_start_0
    new-instance v3, Landroid/net/WifiKey;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    if-eqz v3, :cond_0

    .line 247
    new-instance v2, Landroid/net/NetworkKey;

    invoke-direct {v2, v3}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    .line 249
    .local v2, "nkey":Landroid/net/NetworkKey;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v2    # "nkey":Landroid/net/NetworkKey;
    :cond_0
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_2

    .line 252
    const-string/jumbo v0, ""

    .line 253
    .local v0, "cap":Ljava/lang/String;
    iget-object v4, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 254
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 255
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " rssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 256
    iget v5, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 255
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 256
    const-string/jumbo v5, " cap "

    .line 255
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 256
    const-string/jumbo v5, " tsf "

    .line 255
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 256
    iget-wide v6, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 255
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 256
    const-string/jumbo v5, " is not scored"

    .line 255
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 236
    .end local v0    # "cap":Ljava/lang/String;
    :cond_2
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AutoJoinController: received badly encoded SSID=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 243
    const-string/jumbo v5, "] ->skipping this network"

    .line 242
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 244
    const/4 v3, 0x0

    .local v3, "wkey":Landroid/net/WifiKey;
    goto/16 :goto_0
.end method

.method attemptAutoJoin()Z
    .locals 48

    .prologue
    .line 1557
    const/16 v19, 0x0

    .line 1558
    .local v19, "found":Z
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    .line 1559
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    .line 1560
    const/16 v28, 0x0

    .line 1561
    .local v28, "networkSwitchType":I
    sget v6, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    .line 1563
    .local v6, "age":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 1565
    .local v30, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v23

    .line 1566
    .local v23, "lastSelectedConfiguration":Ljava/lang/String;
    if-eqz v23, :cond_0

    .line 1567
    const/16 v6, 0x36b0

    .line 1571
    :cond_0
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v15

    .line 1574
    .local v15, "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    .line 1577
    .local v8, "candidate":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->getRecentConfiguredNetworks(IZ)Ljava/util/List;

    move-result-object v26

    .line 1578
    .local v26, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v26, :cond_2

    .line 1580
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_1

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin nothing known="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworksSize()I

    move-result v45

    .line 1580
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1582
    :cond_1
    const/16 v44, 0x0

    return v44

    .line 1586
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->status(Z)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->getNetID(Ljava/lang/String;)I

    move-result v42

    .line 1588
    .local v42, "supplicantNetId":I
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_5

    .line 1589
    const-string/jumbo v9, ""

    .line 1590
    .local v9, "conf":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 1591
    .local v22, "last":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 1592
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, " current="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1594
    :cond_3
    if-eqz v23, :cond_4

    .line 1595
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, " last="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1597
    :cond_4
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin() num recent config "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1599
    const-string/jumbo v45, " ---> suppNetId="

    .line 1597
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1599
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 1597
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1602
    .end local v9    # "conf":Ljava/lang/String;
    .end local v22    # "last":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v15, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->setCurrentConfigurationKey(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v44

    if-nez v44, :cond_6

    .line 1603
    const/16 v44, 0x0

    return v44

    .line 1606
    :cond_6
    const/16 v16, -0x1

    .line 1607
    .local v16, "currentNetId":I
    if-eqz v15, :cond_7

    .line 1610
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    .line 1618
    :cond_7
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    .local v11, "config$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_23

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 1619
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_8

    .line 1623
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    const/16 v45, 0x80

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_9

    .line 1624
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->updateBlackListStatus(Landroid/net/wifi/WifiConfiguration;J)V

    goto :goto_0

    .line 1628
    :cond_9
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v44, v0

    const/16 v45, 0x3

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_a

    .line 1629
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v44, v0

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_b

    .line 1630
    :cond_a
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_8

    .line 1631
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin skip candidate due to user approval status "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1632
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/net/wifi/WifiConfiguration;->userApprovedAsString(I)Ljava/lang/String;

    move-result-object v45

    .line 1631
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1632
    const-string/jumbo v45, " key "

    .line 1631
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1633
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v45

    .line 1631
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_0

    .line 1639
    :cond_b
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-lez v44, :cond_c

    .line 1640
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v44, v0

    cmp-long v44, v30, v44

    if-gez v44, :cond_e

    .line 1646
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 1658
    :cond_c
    :goto_1
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v44, v0

    if-eqz v44, :cond_8

    .line 1663
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->underSoftThreshold(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v44

    if-eqz v44, :cond_10

    .line 1664
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_d

    .line 1665
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin do not unblacklist due to low visibility "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1666
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    .line 1665
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1666
    const-string/jumbo v45, " status="

    .line 1665
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1666
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v45, v0

    .line 1665
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1684
    :cond_d
    :goto_2
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    .line 1685
    const/16 v45, 0x1

    .line 1684
    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_12

    .line 1687
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_8

    .line 1688
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin skip blacklisted -> status="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1689
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    .line 1688
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1689
    const-string/jumbo v45, " status="

    .line 1688
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1689
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v45, v0

    .line 1688
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1648
    :cond_e
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v44, v0

    sub-long v44, v30, v44

    const-wide/32 v46, 0x1b77400

    cmp-long v44, v44, v46

    if-lez v44, :cond_f

    .line 1650
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto/16 :goto_1

    .line 1651
    :cond_f
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v44, v0

    sub-long v44, v30, v44

    const-wide/32 v46, 0x1b7740

    cmp-long v44, v44, v46

    if-lez v44, :cond_c

    .line 1653
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x8

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto/16 :goto_1

    .line 1668
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->underHardThreshold(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v44

    if-eqz v44, :cond_11

    .line 1671
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 1672
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_d

    .line 1673
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin good candidate seen, bumped soft -> status="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1674
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    .line 1673
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1674
    const-string/jumbo v45, " status="

    .line 1673
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1674
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v45, v0

    .line 1673
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1677
    :cond_11
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x3

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 1678
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_d

    .line 1679
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin good candidate seen, bumped hard -> status="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1680
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    .line 1679
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1680
    const-string/jumbo v45, " status="

    .line 1679
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1680
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v45, v0

    .line 1679
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1693
    :cond_12
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v16

    if-ne v0, v1, :cond_13

    .line 1694
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_8

    .line 1695
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin skip current candidate  "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1696
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 1695
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1697
    const-string/jumbo v45, " key "

    .line 1695
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1697
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v45

    .line 1695
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1702
    :cond_13
    const/16 v21, 0x0

    .line 1703
    .local v21, "isLastSelected":Z
    if-eqz v23, :cond_14

    .line 1704
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    .line 1703
    if-eqz v44, :cond_14

    .line 1705
    const/16 v21, 0x1

    .line 1708
    :cond_14
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-eqz v44, :cond_15

    .line 1709
    if-eqz v15, :cond_15

    .line 1710
    if-eqz v23, :cond_17

    .line 1711
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_17

    .line 1730
    :cond_15
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v45, v0

    add-int v7, v44, v45

    .line 1732
    .local v7, "boost":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    sub-int v44, v44, v7

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v45

    sub-int v45, v45, v7

    .line 1731
    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->underThreshold(Landroid/net/wifi/WifiConfiguration;II)Z

    move-result v44

    if-eqz v44, :cond_19

    .line 1735
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_16

    .line 1736
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin skip due to low visibility "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1742
    :cond_16
    if-nez v21, :cond_18

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-object/from16 v44, v0

    if-eqz v44, :cond_18

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasNetworkSelection()I

    move-result v44

    if-nez v44, :cond_18

    .line 1745
    const/16 v44, 0x1

    move/from16 v0, v44

    iput-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    .line 1746
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    goto/16 :goto_0

    .line 1716
    .end local v7    # "boost":I
    :cond_17
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v44, v0

    cmp-long v44, v30, v44

    if-lez v44, :cond_15

    .line 1717
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v44, v0

    sub-long v44, v30, v44

    .line 1718
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    move-wide/from16 v46, v0

    .line 1717
    cmp-long v44, v44, v46

    if-gez v44, :cond_15

    .line 1719
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_8

    .line 1720
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "compareNetwork not switching to "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1721
    const-string/jumbo v45, " from current "

    .line 1720
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1721
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    .line 1720
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1722
    const-string/jumbo v45, " because it is blacklisted due to roam failure, "

    .line 1720
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1723
    const-string/jumbo v45, " blacklist remain time = "

    .line 1720
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1724
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v46, v0

    sub-long v46, v30, v46

    .line 1720
    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1724
    const-string/jumbo v45, " ms"

    .line 1720
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1750
    .restart local v7    # "boost":I
    :cond_18
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v44, v0

    .line 1751
    sget v45, Landroid/net/wifi/WifiConfiguration;->MAX_INITIAL_AUTO_JOIN_RSSI_BOOST:I

    .line 1750
    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_19

    .line 1752
    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v44, v0

    .line 1750
    if-eqz v44, :cond_19

    .line 1753
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x4

    move/from16 v0, v44

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    .line 1758
    :cond_19
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v44, v0

    if-lez v44, :cond_1a

    .line 1759
    if-eqz v21, :cond_1d

    .line 1776
    :cond_1a
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoConnectable:I

    move/from16 v44, v0

    if-eqz v44, :cond_8

    .line 1780
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_1c

    .line 1781
    const-string/jumbo v12, ""

    .line 1782
    .local v12, "cur":Ljava/lang/String;
    if-eqz v8, :cond_1b

    .line 1783
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, " current candidate "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1785
    :cond_1b
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin trying id="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1786
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 1785
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1786
    const-string/jumbo v45, " "

    .line 1785
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1787
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v45

    .line 1785
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1788
    const-string/jumbo v45, " status="

    .line 1785
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1788
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v45, v0

    .line 1785
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1792
    .end local v12    # "cur":Ljava/lang/String;
    :cond_1c
    if-nez v8, :cond_1e

    .line 1793
    move-object v8, v10

    .local v8, "candidate":Landroid/net/wifi/WifiConfiguration;
    goto/16 :goto_0

    .line 1760
    .end local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    :cond_1d
    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move/from16 v44, v0

    if-nez v44, :cond_1a

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-object/from16 v44, v0

    if-eqz v44, :cond_1a

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasNetworkSelection()I

    move-result v44

    if-nez v44, :cond_1a

    .line 1767
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_8

    .line 1768
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin skip candidate due to no InternetAccess  "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1769
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v45

    .line 1768
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1770
    const-string/jumbo v45, " num reports "

    .line 1768
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1770
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v45, v0

    .line 1768
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1795
    :cond_1e
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_1f

    .line 1796
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin will compare candidate  "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1797
    const-string/jumbo v45, " with "

    .line 1796
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1797
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    .line 1796
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1800
    :cond_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v29

    .line 1801
    .local v29, "order":I
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_20

    .line 1802
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin compareWifiConfigurations returned "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1810
    :cond_20
    if-eqz v23, :cond_22

    .line 1811
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    .line 1810
    if-eqz v44, :cond_22

    .line 1816
    add-int/lit8 v29, v29, -0x64

    .line 1817
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_21

    .line 1818
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "     ...and prefers -100 "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1819
    const-string/jumbo v45, " over "

    .line 1818
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1819
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    .line 1818
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1820
    const-string/jumbo v45, " because it is the last selected -> "

    .line 1818
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1821
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 1818
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1838
    :cond_21
    :goto_3
    if-lez v29, :cond_8

    .line 1840
    move-object v8, v10

    .restart local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    goto/16 :goto_0

    .line 1823
    .end local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    :cond_22
    if-eqz v23, :cond_21

    .line 1824
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    .line 1823
    if-eqz v44, :cond_21

    .line 1829
    add-int/lit8 v29, v29, 0x64

    .line 1830
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_21

    .line 1831
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "     ...and prefers +100 "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1832
    const-string/jumbo v45, " over "

    .line 1831
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1832
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    .line 1831
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1833
    const-string/jumbo v45, " because it is the last selected -> "

    .line 1831
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1834
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 1831
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_3

    .line 1846
    .end local v7    # "boost":I
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "isLastSelected":Z
    .end local v29    # "order":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    move-object/from16 v44, v0

    if-eqz v44, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    move/from16 v44, v0

    if-eqz v44, :cond_28

    .line 1847
    sget v38, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 1848
    .local v38, "rssi5":I
    sget v37, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 1849
    .local v37, "rssi24":I
    if-eqz v8, :cond_24

    .line 1850
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v38, v0

    .line 1851
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v37, v0

    .line 1855
    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 1856
    .local v32, "nowMs":J
    const/16 v17, -0x2710

    .line 1858
    .local v17, "currentScore":I
    const/16 v43, 0x0

    .line 1860
    .local v43, "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->isBadCandidate(II)Z

    move-result v44

    if-eqz v44, :cond_27

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .end local v43    # "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    .local v40, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_25
    :goto_4
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_27

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/wifi/ScanDetail;

    .line 1862
    .local v39, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v35

    .line 1865
    .local v35, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_25

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/net/wifi/ScanResult;->untrusted:Z

    move/from16 v44, v0

    if-eqz v44, :cond_25

    .line 1866
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->isOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v44

    if-eqz v44, :cond_25

    .line 1869
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "\""

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "\""

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 1870
    .local v34, "quotedSSID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_25

    .line 1874
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v44, v0

    sub-long v44, v32, v44

    sget v46, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    cmp-long v44, v44, v46

    if-gez v44, :cond_25

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiConnectionStatistics;->incrementOrAddUntrusted(Ljava/lang/String;II)V

    .line 1878
    if-eqz v15, :cond_26

    .line 1879
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 1880
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v35

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    move-result v41

    .line 1881
    .local v41, "score":I
    sget v44, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    move/from16 v0, v41

    move/from16 v1, v44

    if-eq v0, v1, :cond_25

    .line 1882
    move/from16 v0, v41

    move/from16 v1, v17

    if-le v0, v1, :cond_25

    .line 1884
    move/from16 v17, v41

    .line 1885
    move-object/from16 v43, v39

    .line 1886
    .local v43, "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_25

    .line 1887
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "AutoJoinController: found untrusted candidate "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1888
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 1887
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1889
    const-string/jumbo v45, " RSSI="

    .line 1887
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1889
    move-object/from16 v0, v35

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v45, v0

    .line 1887
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1890
    const-string/jumbo v45, " freq="

    .line 1887
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1890
    move-object/from16 v0, v35

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v45, v0

    .line 1887
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1891
    const-string/jumbo v45, " score="

    .line 1887
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1878
    .end local v41    # "score":I
    .end local v43    # "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    :cond_26
    const/16 v20, 0x0

    .local v20, "isActiveNetwork":Z
    goto :goto_5

    .line 1897
    .end local v20    # "isActiveNetwork":Z
    .end local v34    # "quotedSSID":Ljava/lang/String;
    .end local v35    # "result":Landroid/net/wifi/ScanResult;
    .end local v39    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v40    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_27
    if-eqz v43, :cond_28

    .line 1901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigurationFromScanResult(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 1902
    .restart local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Ljava/util/BitSet;->set(I)V

    .line 1903
    const/16 v44, 0x1

    move/from16 v0, v44

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 1904
    const/16 v44, 0x1

    move/from16 v0, v44

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 1909
    .end local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "currentScore":I
    .end local v32    # "nowMs":J
    .end local v37    # "rssi24":I
    .end local v38    # "rssi5":I
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    move-wide/from16 v46, v0

    .line 1909
    sub-long v24, v44, v46

    .line 1911
    .local v24, "lastUnwanted":J
    if-nez v8, :cond_35

    .line 1912
    if-nez v23, :cond_35

    .line 1913
    if-nez v15, :cond_35

    .line 1914
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    move/from16 v44, v0

    .line 1911
    if-eqz v44, :cond_35

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-eqz v44, :cond_29

    .line 1916
    const-wide/32 v44, 0x240c8400

    cmp-long v44, v24, v44

    if-lez v44, :cond_35

    .line 1926
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v44, v0

    const/16 v45, 0xa

    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_2a

    .line 1927
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    .line 1937
    :cond_2a
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v8, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->compareNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v27

    .line 1938
    .local v27, "networkDelta":I
    if-eqz v8, :cond_2d

    .line 1939
    const-string/jumbo v18, ""

    .line 1940
    .local v18, "doSwitch":Ljava/lang/String;
    const-string/jumbo v13, ""

    .line 1941
    .local v13, "current":Ljava/lang/String;
    if-gez v27, :cond_2b

    .line 1942
    const-string/jumbo v18, " -> not switching"

    .line 1944
    :cond_2b
    if-eqz v15, :cond_2c

    .line 1945
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, " with current "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1947
    :cond_2c
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "attemptAutoJoin networkSwitching candidate "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1948
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    .line 1947
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1950
    const-string/jumbo v45, " linked="

    .line 1947
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 1950
    if-eqz v15, :cond_36

    .line 1951
    invoke-virtual {v15, v8}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v44

    .line 1947
    :goto_7
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1952
    const-string/jumbo v45, " : delta="

    .line 1947
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1953
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 1947
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1953
    const-string/jumbo v45, " "

    .line 1947
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1956
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "candidate "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1957
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    .line 1956
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1957
    const-string/jumbo v45, "\n"

    .line 1956
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1959
    const-string/jumbo v45, " linked="

    .line 1956
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 1959
    if-eqz v15, :cond_37

    .line 1960
    invoke-virtual {v15, v8}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v44

    .line 1956
    :goto_8
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1960
    const-string/jumbo v45, "\n"

    .line 1956
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1961
    const-string/jumbo v45, " : delta="

    .line 1956
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1962
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 1956
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1962
    const-string/jumbo v45, "\n"

    .line 1956
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->mCompareNetworkString:Ljava/lang/String;

    .line 1972
    .end local v13    # "current":Ljava/lang/String;
    .end local v18    # "doSwitch":Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->shouldSwitchNetwork(I)Z

    move-result v44

    if-eqz v44, :cond_33

    .line 1976
    if-eqz v15, :cond_38

    invoke-virtual {v15, v8}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v44

    if-eqz v44, :cond_38

    .line 1977
    const/16 v28, 0x2

    .line 1982
    :goto_9
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "AutoJoin auto connect with netId "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1983
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 1982
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1984
    const-string/jumbo v45, " to "

    .line 1982
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1984
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    .line 1982
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1986
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    move/from16 v44, v0

    if-eqz v44, :cond_2e

    .line 1987
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    .line 1989
    :cond_2e
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    .line 1992
    iget-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v44, v0

    if-eqz v44, :cond_2f

    .line 1995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v44, v0

    .line 1996
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    const/16 v47, 0x0

    .line 1995
    invoke-virtual/range {v44 .. v47}, Landroid/net/wifi/WifiConnectionStatistics;->incrementOrAddUntrusted(Ljava/lang/String;II)V

    .line 1999
    :cond_2f
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_30

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string/jumbo v45, "any"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_32

    .line 2003
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentBSSID()Ljava/lang/String;

    move-result-object v14

    .line 2005
    .local v14, "currentBSSID":Ljava/lang/String;
    sget v44, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v44

    move-object/from16 v3, v46

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v36

    .line 2006
    .local v36, "roamCandidate":Landroid/net/wifi/ScanResult;
    if-eqz v36, :cond_31

    if-eqz v14, :cond_31

    .line 2007
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    .line 2006
    if-eqz v44, :cond_31

    .line 2009
    const/16 v36, 0x0

    .line 2011
    .end local v36    # "roamCandidate":Landroid/net/wifi/ScanResult;
    :cond_31
    if-eqz v36, :cond_39

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v44

    if-eqz v44, :cond_39

    .line 2015
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iput-object v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    .line 2016
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_32

    .line 2017
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "AutoJoinController: lock to 5GHz "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2018
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 2017
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2019
    const-string/jumbo v45, " RSSI="

    .line 2017
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2019
    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v45, v0

    .line 2017
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2020
    const-string/jumbo v45, " freq="

    .line 2017
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2020
    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v45, v0

    .line 2017
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2027
    .end local v14    # "currentBSSID":Ljava/lang/String;
    :cond_32
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    .line 2028
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    .line 2027
    const v46, 0x2008f

    move-object/from16 v0, v44

    move/from16 v1, v46

    move/from16 v2, v45

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 2029
    const/16 v19, 0x1

    .line 2032
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_33

    const-string/jumbo v44, "wifi.dbg.autojoin"

    const-string/jumbo v45, ""

    invoke-static/range {v44 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v45, "true"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_33

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    .line 2034
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Auto Connect to "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x0

    .line 2033
    invoke-static/range {v44 .. v46}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->mToast:Landroid/widget/Toast;

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mToast:Landroid/widget/Toast;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/widget/Toast;->show()V

    .line 2040
    :cond_33
    if-nez v28, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v44

    if-eqz v44, :cond_3a

    .line 2077
    :cond_34
    :goto_b
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Done attemptAutoJoin status="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2079
    return v19

    .line 1929
    .end local v27    # "networkDelta":I
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v44, v0

    if-lez v44, :cond_2a

    .line 1930
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    goto/16 :goto_6

    .line 1950
    .restart local v13    # "current":Ljava/lang/String;
    .restart local v18    # "doSwitch":Ljava/lang/String;
    .restart local v27    # "networkDelta":I
    :cond_36
    const/16 v44, 0x0

    goto/16 :goto_7

    .line 1959
    :cond_37
    const/16 v44, 0x0

    goto/16 :goto_8

    .line 1979
    .end local v13    # "current":Ljava/lang/String;
    .end local v18    # "doSwitch":Ljava/lang/String;
    :cond_38
    const/16 v28, 0x3

    goto/16 :goto_9

    .line 2024
    .restart local v14    # "currentBSSID":Ljava/lang/String;
    :cond_39
    const-string/jumbo v44, "any"

    move-object/from16 v0, v44

    iput-object v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    goto/16 :goto_a

    .line 2041
    .end local v14    # "currentBSSID":Ljava/lang/String;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentBSSID()Ljava/lang/String;

    move-result-object v14

    .line 2044
    .restart local v14    # "currentBSSID":Ljava/lang/String;
    sget v44, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v15, v2, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v36

    .line 2045
    .restart local v36    # "roamCandidate":Landroid/net/wifi/ScanResult;
    if-eqz v36, :cond_3b

    if-eqz v14, :cond_3b

    .line 2046
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    .line 2045
    if-eqz v44, :cond_3b

    .line 2047
    const/16 v36, 0x0

    .line 2049
    .end local v36    # "roamCandidate":Landroid/net/wifi/ScanResult;
    :cond_3b
    if-eqz v36, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x3e7

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->shouldSwitchNetwork(I)Z

    move-result v44

    if-eqz v44, :cond_34

    .line 2051
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "AutoJoin auto roam with netId "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2052
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 2051
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2053
    const-string/jumbo v45, " "

    .line 2051
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2053
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    .line 2051
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2053
    const-string/jumbo v45, " to BSSID="

    .line 2051
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2054
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 2051
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2054
    const-string/jumbo v45, " freq="

    .line 2051
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2054
    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v45, v0

    .line 2051
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2055
    const-string/jumbo v45, " RSSI="

    .line 2051
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 2055
    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v45, v0

    .line 2051
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2057
    const/16 v28, 0x1

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    .line 2061
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    .line 2060
    const v46, 0x20091

    .line 2061
    const/16 v47, 0x1

    .line 2060
    move-object/from16 v0, v44

    move/from16 v1, v46

    move/from16 v2, v45

    move/from16 v3, v47

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 2062
    const/16 v19, 0x1

    .line 2066
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_34

    const-string/jumbo v44, "wifi.dbg.autojoin"

    const-string/jumbo v45, ""

    invoke-static/range {v44 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v45, "true"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_34

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    .line 2068
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Auto ROAM to "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, " BSSID="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 2069
    const/16 v46, 0x0

    .line 2067
    invoke-static/range {v44 .. v46}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->mToast:Landroid/widget/Toast;

    .line 2070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mToast:Landroid/widget/Toast;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b
.end method

.method public attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 18
    .param p1, "a"    # Landroid/net/wifi/ScanResult;
    .param p2, "current"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "age"    # I
    .param p4, "currentBSSID"    # Ljava/lang/String;

    .prologue
    .line 1120
    if-nez p2, :cond_1

    .line 1121
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v14, :cond_0

    .line 1122
    const-string/jumbo v14, "attemptRoam not associated"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1124
    :cond_0
    return-object p1

    .line 1128
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v11

    .line 1130
    .local v11, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v11, :cond_3

    .line 1131
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v14, :cond_2

    .line 1132
    const-string/jumbo v14, "attemptRoam no scan cache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1134
    :cond_2
    return-object p1

    .line 1137
    :cond_3
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v14

    const/16 v15, 0x1e

    if-le v14, v15, :cond_5

    .line 1139
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v14, :cond_4

    .line 1140
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "attemptRoam scan cache size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1141
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v15

    .line 1140
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1141
    const-string/jumbo v15, " --> bail"

    .line 1140
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1145
    :cond_4
    return-object p1

    .line 1148
    :cond_5
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v14, :cond_6

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string/jumbo v15, "any"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1158
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1160
    .local v8, "nowMs":J
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "sd$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wifi/ScanDetail;

    .line 1161
    .local v12, "sd":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 1162
    .local v4, "b":Landroid/net/wifi/ScanResult;
    const/4 v6, 0x0

    .line 1163
    .local v6, "bRssiBoost5":I
    const/4 v3, 0x0

    .line 1164
    .local v3, "aRssiBoost5":I
    const/4 v5, 0x0

    .line 1165
    .local v5, "bRssiBoost":I
    const/4 v2, 0x0

    .line 1166
    .local v2, "aRssiBoost":I
    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_7

    iget-object v14, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v14, :cond_7

    .line 1167
    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v14

    sub-long v14, v8, v14

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gtz v14, :cond_7

    .line 1168
    iget v14, v4, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    if-nez v14, :cond_7

    .line 1169
    iget v14, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    const/16 v15, 0x8

    if-gt v14, v15, :cond_7

    .line 1174
    if-nez p1, :cond_a

    .line 1175
    move-object/from16 p1, v4

    .line 1176
    goto :goto_0

    .line 1149
    .end local v2    # "aRssiBoost":I
    .end local v3    # "aRssiBoost5":I
    .end local v4    # "b":Landroid/net/wifi/ScanResult;
    .end local v5    # "bRssiBoost":I
    .end local v6    # "bRssiBoost5":I
    .end local v8    # "nowMs":J
    .end local v12    # "sd":Lcom/android/server/wifi/ScanDetail;
    .end local v13    # "sd$iterator":Ljava/util/Iterator;
    :cond_8
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v14, :cond_9

    .line 1150
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "attemptRoam() BSSID is set "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1151
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1150
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1151
    const-string/jumbo v15, " -> bail"

    .line 1150
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1153
    :cond_9
    return-object p1

    .line 1179
    .restart local v2    # "aRssiBoost":I
    .restart local v3    # "aRssiBoost5":I
    .restart local v4    # "b":Landroid/net/wifi/ScanResult;
    .restart local v5    # "bRssiBoost":I
    .restart local v6    # "bRssiBoost5":I
    .restart local v8    # "nowMs":J
    .restart local v12    # "sd":Lcom/android/server/wifi/ScanDetail;
    .restart local v13    # "sd$iterator":Ljava/util/Iterator;
    :cond_a
    iget v14, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    add-int/lit8 v15, v15, -0x1

    if-ge v14, v15, :cond_b

    .line 1181
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "attemptRoam: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1182
    iget-object v15, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1182
    const-string/jumbo v15, " rssi="

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1182
    iget v15, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1182
    const-string/jumbo v15, " ipfail="

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1182
    iget v15, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1183
    const-string/jumbo v15, " freq="

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1183
    iget v15, v4, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1184
    const-string/jumbo v15, " > "

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1185
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1185
    const-string/jumbo v15, " rssi="

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1185
    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1185
    const-string/jumbo v15, " ipfail="

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1185
    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1186
    const-string/jumbo v15, " freq="

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1186
    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1187
    move-object/from16 p1, v4

    .line 1188
    goto/16 :goto_0

    .line 1192
    :cond_b
    if-eqz p4, :cond_c

    iget-object v14, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1194
    iget v14, v4, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v15, v15, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    if-gt v14, v15, :cond_12

    .line 1195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v5, v14, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    .line 1200
    :cond_c
    :goto_1
    if-eqz p4, :cond_d

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1201
    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v15, v15, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    if-gt v14, v15, :cond_13

    .line 1203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v14, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    .line 1219
    :cond_d
    :goto_2
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1220
    iget v14, v4, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v14, v5

    iget-object v15, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v6

    .line 1222
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1223
    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v3

    .line 1226
    :cond_f
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v14, :cond_11

    .line 1227
    const-string/jumbo v7, " < "

    .line 1228
    .local v7, "comp":Ljava/lang/String;
    iget v14, v4, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v14, v5

    add-int/2addr v14, v6

    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v15, v2

    add-int/2addr v15, v3

    if-le v14, v15, :cond_10

    .line 1229
    const-string/jumbo v7, " > "

    .line 1231
    :cond_10
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "attemptRoam: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1232
    iget-object v15, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1232
    const-string/jumbo v15, " rssi="

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1232
    iget v15, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1232
    const-string/jumbo v15, " boost="

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1232
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1233
    const-string/jumbo v15, "/"

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1233
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1233
    const-string/jumbo v15, " freq="

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1233
    iget v15, v4, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1235
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1235
    const-string/jumbo v15, " rssi="

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1235
    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1235
    const-string/jumbo v15, " boost="

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1235
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1236
    const-string/jumbo v15, "/"

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1236
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1236
    const-string/jumbo v15, " freq="

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1236
    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1231
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1241
    .end local v7    # "comp":Ljava/lang/String;
    :cond_11
    iget v14, v4, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v14, v5

    add-int/2addr v14, v6

    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v15, v2

    add-int/2addr v15, v3

    if-le v14, v15, :cond_7

    .line 1243
    move-object/from16 p1, v4

    goto/16 :goto_0

    .line 1197
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v5, v14, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    goto/16 :goto_1

    .line 1205
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v14, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    goto/16 :goto_2

    .line 1246
    .end local v2    # "aRssiBoost":I
    .end local v3    # "aRssiBoost5":I
    .end local v4    # "b":Landroid/net/wifi/ScanResult;
    .end local v5    # "bRssiBoost":I
    .end local v6    # "bRssiBoost5":I
    .end local v12    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_14
    if-eqz p1, :cond_16

    .line 1247
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v14, :cond_16

    .line 1248
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1249
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v14, "attemptRoam: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1250
    const-string/jumbo v15, " Found "

    .line 1249
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1250
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1249
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1250
    const-string/jumbo v15, " rssi="

    .line 1249
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1250
    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 1249
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1250
    const-string/jumbo v15, " freq="

    .line 1249
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1250
    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1249
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1251
    if-eqz p4, :cond_15

    .line 1252
    const-string/jumbo v14, " Current: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    :cond_15
    const-string/jumbo v14, "\n"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1258
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_16
    return-object p1
.end method

.method averageRssiAndRemoveFromCache(Landroid/net/wifi/ScanResult;)V
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    .line 214
    .local v0, "sd":Lcom/android/server/wifi/ScanDetail;
    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 216
    .local v1, "sr":Landroid/net/wifi/ScanResult;
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    if-eqz v2, :cond_0

    .line 217
    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    if-nez v2, :cond_0

    .line 218
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    const/16 v3, -0x14

    if-ge v2, v3, :cond_0

    .line 221
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    iput v2, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 225
    :cond_0
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    iget-wide v4, v1, Landroid/net/wifi/ScanResult;->seen:J

    sget v3, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    invoke-virtual {p1, v2, v4, v5, v3}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    .line 228
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .end local v1    # "sr":Landroid/net/wifi/ScanResult;
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    if-nez v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    iput v2, p1, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0
.end method

.method compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 8
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 887
    const/4 v2, 0x0

    .line 888
    .local v2, "order":I
    const/4 v1, 0x0

    .line 891
    .local v1, "linked":Z
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    invoke-interface {v4}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasNetworkSelection()I

    move-result v4

    if-eqz v4, :cond_7

    .line 892
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    invoke-interface {v4}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasNetworkSelection()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 893
    const/4 v2, 0x0

    .line 897
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " hasNetworkSelection order = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 898
    if-nez v2, :cond_6

    .line 900
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v4, v5, :cond_4

    .line 902
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_1

    .line 903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "network select -1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 904
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    .line 903
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 904
    const-string/jumbo v5, " due to priority"

    .line 903
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 906
    :cond_1
    const/4 v2, -0x1

    .line 915
    :cond_2
    :goto_1
    return v2

    .line 894
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    invoke-interface {v4}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasNetworkSelection()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 895
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiAutoJoinController;->compareSecurity(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    goto :goto_0

    .line 907
    :cond_4
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v4, v5, :cond_2

    .line 909
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_5

    .line 910
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "network select +1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 911
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    .line 910
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 911
    const-string/jumbo v5, " due to priority"

    .line 910
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 913
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 917
    :cond_6
    return v2

    .line 920
    :cond_7
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v4, :cond_8

    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v4, :cond_8

    .line 921
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v4, :cond_8

    .line 922
    iget v4, p2, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v4, :cond_8

    .line 923
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p2, v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 924
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1, v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 925
    const/4 v1, 0x1

    .line 929
    :cond_8
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_a

    iget-boolean v4, p2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_a

    .line 930
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_9

    .line 931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    compareWifiConfigurations ephemeral and prefers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 932
    const-string/jumbo v5, " over "

    .line 931
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 932
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    .line 931
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 934
    :cond_9
    return v7

    .line 936
    :cond_a
    iget-boolean v4, p2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_c

    .line 937
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_b

    .line 938
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    compareWifiConfigurations ephemeral and prefers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 939
    const-string/jumbo v5, " over "

    .line 938
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 939
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    .line 938
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 941
    :cond_b
    const/4 v4, -0x1

    return v4

    .line 946
    :cond_c
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurationsRSSI(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v2, v4, 0x0

    .line 950
    if-nez v1, :cond_10

    .line 953
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I

    move-result v0

    .line 954
    .local v0, "choice":I
    if-lez v0, :cond_e

    .line 956
    sub-int/2addr v2, v0

    .line 957
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_d

    .line 958
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    compareWifiConfigurations prefers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 959
    const-string/jumbo v5, " over "

    .line 958
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 959
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    .line 958
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 960
    const-string/jumbo v5, " due to user choice of "

    .line 958
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 961
    const-string/jumbo v5, " order -> "

    .line 958
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 961
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 958
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 963
    :cond_d
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v4, :cond_e

    .line 964
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iput v0, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceBoost:I

    .line 965
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    .line 969
    :cond_e
    invoke-virtual {p0, p2, p1, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I

    move-result v0

    .line 970
    if-lez v0, :cond_10

    .line 972
    add-int/2addr v2, v0

    .line 973
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_f

    .line 974
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    compareWifiConfigurations prefers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 975
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    .line 974
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 975
    const-string/jumbo v5, " due to user choice of "

    .line 974
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 976
    const-string/jumbo v5, " order ->"

    .line 974
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 976
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 974
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 978
    :cond_f
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v4, :cond_10

    .line 979
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iput v0, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceBoost:I

    .line 980
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    .line 985
    .end local v0    # "choice":I
    :cond_10
    if-nez v2, :cond_12

    .line 988
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v4, v5, :cond_15

    .line 990
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_11

    .line 991
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    compareWifiConfigurations prefers -1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 992
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    .line 991
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 992
    const-string/jumbo v5, " due to priority"

    .line 991
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 995
    :cond_11
    const/4 v2, -0x1

    .line 1006
    :cond_12
    :goto_2
    const-string/jumbo v3, " == "

    .line 1007
    .local v3, "sorder":Ljava/lang/String;
    if-lez v2, :cond_17

    .line 1008
    const-string/jumbo v3, " < "

    .line 1013
    :cond_13
    :goto_3
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_14

    .line 1014
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "compareWifiConfigurations: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1015
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    .line 1014
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1015
    const-string/jumbo v5, " order "

    .line 1014
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1015
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1014
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1018
    :cond_14
    return v2

    .line 996
    .end local v3    # "sorder":Ljava/lang/String;
    :cond_15
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v4, v5, :cond_12

    .line 998
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_16

    .line 999
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    compareWifiConfigurations prefers +1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1000
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    .line 999
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1000
    const-string/jumbo v5, " due to priority"

    .line 999
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1002
    :cond_16
    const/4 v2, 0x1

    goto :goto_2

    .line 1009
    .restart local v3    # "sorder":Ljava/lang/String;
    :cond_17
    if-gez v2, :cond_13

    .line 1010
    const-string/jumbo v3, " > "

    goto :goto_3
.end method

.method compareWifiConfigurationsFromVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;)I
    .locals 9
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration$Visibility;
    .param p2, "aRssiBoost"    # I
    .param p3, "dbgA"    # Ljava/lang/String;
    .param p4, "b"    # Landroid/net/wifi/WifiConfiguration$Visibility;
    .param p5, "bRssiBoost"    # I
    .param p6, "dbgB"    # Ljava/lang/String;

    .prologue
    .line 647
    const/4 v1, 0x0

    .line 648
    .local v1, "aRssiBoost5":I
    const/4 v4, 0x0

    .line 650
    .local v4, "bRssiBoost5":I
    const/4 v2, 0x0

    .line 651
    .local v2, "aScore":I
    const/4 v5, 0x0

    .line 653
    .local v5, "bScore":I
    const/4 v0, 0x0

    .line 654
    .local v0, "aPrefers5GHz":Z
    const/4 v3, 0x0

    .line 663
    .local v3, "bPrefers5GHz":Z
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v1

    .line 664
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v4

    .line 667
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v6, v1

    iget v7, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-le v6, v7, :cond_0

    .line 669
    const/4 v0, 0x1

    .line 673
    :cond_0
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v6, v4

    iget v7, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-le v6, v7, :cond_1

    .line 675
    const/4 v3, 0x1

    .line 678
    :cond_1
    if-eqz v0, :cond_6

    .line 679
    if-eqz v3, :cond_5

    .line 683
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int v2, v6, p2

    .line 692
    :goto_0
    if-eqz v3, :cond_8

    .line 693
    if-eqz v0, :cond_7

    .line 697
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int v5, v6, p5

    .line 706
    :goto_1
    sget-boolean v6, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v6, :cond_2

    .line 707
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "        "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is5="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " score="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 708
    const-string/jumbo v7, " "

    .line 707
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 708
    const-string/jumbo v7, " is5="

    .line 707
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 708
    const-string/jumbo v7, " score="

    .line 707
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 712
    :cond_2
    if-eqz p1, :cond_3

    .line 713
    iput v2, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    .line 714
    iput p2, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->currentNetworkBoost:I

    .line 715
    iput v1, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->bandPreferenceBoost:I

    .line 717
    :cond_3
    if-eqz p4, :cond_4

    .line 718
    iput v5, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    .line 719
    iput p5, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->currentNetworkBoost:I

    .line 720
    iput v4, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->bandPreferenceBoost:I

    .line 726
    :cond_4
    sub-int v6, v5, v2

    return v6

    .line 686
    :cond_5
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v6, p2

    add-int v2, v6, v1

    goto :goto_0

    .line 689
    :cond_6
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    add-int v2, v6, p2

    goto :goto_0

    .line 700
    :cond_7
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v6, p5

    add-int v5, v6, v4

    goto :goto_1

    .line 703
    :cond_8
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    add-int v5, v6, p5

    goto :goto_1
.end method

.method compareWifiConfigurationsRSSI(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 11
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "currentConfiguration"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 738
    const/4 v9, 0x0

    .line 741
    .local v9, "order":I
    const/4 v2, 0x0

    .line 742
    .local v2, "aRssiBoost":I
    const/4 v5, 0x0

    .line 745
    .local v5, "bRssiBoost":I
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .line 746
    .local v7, "astatus":Landroid/net/wifi/WifiConfiguration$Visibility;
    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .line 747
    .local v8, "bstatus":Landroid/net/wifi/WifiConfiguration$Visibility;
    if-eqz v7, :cond_0

    if-nez v8, :cond_1

    .line 749
    :cond_0
    const-string/jumbo v0, "    compareWifiConfigurations NULL band status!"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 750
    return v1

    .line 754
    :cond_1
    if-eqz p3, :cond_2

    .line 755
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 756
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    .line 762
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v0, :cond_3

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    compareWifiConfigurationsRSSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 764
    const-string/jumbo v1, " rssi="

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 764
    iget v1, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 765
    const-string/jumbo v1, ","

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 765
    iget v1, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 766
    const-string/jumbo v1, " boost="

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 766
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 767
    const-string/jumbo v1, " "

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 767
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 767
    const-string/jumbo v1, " rssi="

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 768
    iget v1, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 768
    const-string/jumbo v1, ","

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 769
    iget v1, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 770
    const-string/jumbo v1, " boost="

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 770
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 775
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    .line 776
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 774
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurationsFromVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;)I

    move-result v9

    .line 779
    const/16 v0, 0x32

    if-le v9, v0, :cond_8

    const/16 v9, 0x32

    .line 782
    :cond_4
    :goto_1
    sget-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v0, :cond_6

    .line 783
    const-string/jumbo v10, " = "

    .line 784
    .local v10, "prefer":Ljava/lang/String;
    if-lez v9, :cond_9

    .line 785
    const-string/jumbo v10, " < "

    .line 789
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    compareWifiConfigurationsRSSI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 790
    const-string/jumbo v1, " rssi=("

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 790
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 791
    const-string/jumbo v1, ","

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 791
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    const-string/jumbo v1, ") num=("

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 793
    const-string/jumbo v1, ","

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 793
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 793
    const-string/jumbo v1, ")"

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 794
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 795
    const-string/jumbo v1, " rssi=("

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 795
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 796
    const-string/jumbo v1, ","

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 796
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 797
    const-string/jumbo v1, ") num=("

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 797
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 798
    const-string/jumbo v1, ","

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 798
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 798
    const-string/jumbo v1, ")"

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 799
    const-string/jumbo v1, " -> "

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 802
    .end local v10    # "prefer":Ljava/lang/String;
    :cond_6
    return v9

    .line 757
    :cond_7
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v5, v0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    goto/16 :goto_0

    .line 780
    :cond_8
    const/16 v0, -0x32

    if-ge v9, v0, :cond_4

    const/16 v9, -0x32

    goto/16 :goto_1

    .line 786
    .restart local v10    # "prefer":Ljava/lang/String;
    :cond_9
    if-gez v9, :cond_5

    .line 787
    const-string/jumbo v10, " > "

    goto/16 :goto_2
.end method

.method public enableDebugProgiling(I)V
    .locals 4
    .param p1, "verbose"    # I

    .prologue
    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enableDebugProgiling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2170
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->shouldSwitchNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2171
    const-string/jumbo v0, "wifi.dbg.autojoin"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAutoJoinProfilingInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2174
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAutoJoinProfilingInfo:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2175
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->showDebugPanel()V

    .line 2168
    :goto_0
    return-void

    .line 2178
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAutoJoinProfilingInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2179
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->hideDebugPanel()V

    goto :goto_0
.end method

.method enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 178
    if-lez p1, :cond_0

    .line 179
    sput-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    .line 180
    sput-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    .line 177
    :goto_0
    return-void

    .line 182
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    .line 183
    sput-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    goto :goto_0
.end method

.method getConfigNetworkScore(Landroid/net/wifi/WifiConfiguration;IZ)I
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "age"    # I
    .param p3, "isActive"    # Z

    .prologue
    .line 1273
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    if-nez v7, :cond_1

    .line 1274
    sget-boolean v7, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v7, :cond_0

    .line 1275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "       getConfigNetworkScore for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1276
    const-string/jumbo v8, "  -> no scorer, hence no scores"

    .line 1275
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1278
    :cond_0
    sget v7, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    return v7

    .line 1281
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v7, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v7

    if-nez v7, :cond_3

    .line 1282
    sget-boolean v7, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v7, :cond_2

    .line 1283
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "       getConfigNetworkScore for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1284
    const-string/jumbo v8, " -> no scan cache"

    .line 1283
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1286
    :cond_2
    sget v7, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    return v7

    .line 1290
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1292
    .local v0, "nowMs":J
    const/16 v6, -0x2710

    .line 1295
    .local v6, "startScore":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v7, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "sd$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/ScanDetail;

    .line 1296
    .local v4, "sd":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v2

    .line 1297
    .local v2, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v8

    sub-long v8, v0, v8

    int-to-long v10, p2

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 1298
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v7, v2, p3}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    move-result v3

    .line 1299
    .local v3, "sc":I
    if-le v3, v6, :cond_4

    .line 1300
    move v6, v3

    goto :goto_0

    .line 1304
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v3    # "sc":I
    .end local v4    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_5
    const/16 v7, -0x2710

    if-ne v6, v7, :cond_6

    .line 1305
    sget v6, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    .line 1307
    :cond_6
    sget-boolean v7, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v7, :cond_7

    .line 1308
    sget v7, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    if-ne v6, v7, :cond_8

    .line 1309
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    getConfigNetworkScore for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1310
    const-string/jumbo v8, " -> no available score"

    .line 1309
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1318
    :cond_7
    :goto_1
    return v6

    .line 1312
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    getConfigNetworkScore for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1313
    const-string/jumbo v8, " isActive="

    .line 1312
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1314
    const-string/jumbo v8, " score = "

    .line 1312
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1314
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 1312
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I
    .locals 10
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "target"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "strict"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "choice":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 611
    :cond_0
    return v7

    .line 614
    :cond_1
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    .line 615
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {p2, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 614
    if-eqz v7, :cond_4

    .line 616
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {p2, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 617
    .local v6, "val":Ljava/lang/Integer;
    if-eqz v6, :cond_2

    .line 618
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 634
    .end local v6    # "val":Ljava/lang/Integer;
    :cond_2
    if-nez p3, :cond_3

    if-nez v0, :cond_3

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->getSecurityScore(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 637
    .local v4, "sourceScore":I
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/WifiAutoJoinController;->getSecurityScore(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    .line 638
    .local v5, "targetScore":I
    sub-int v0, v4, v5

    .line 641
    .end local v4    # "sourceScore":I
    .end local v5    # "targetScore":I
    :cond_3
    return v0

    .line 620
    :cond_4
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    .line 621
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 622
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v7, v2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 623
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_5

    .line 624
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v7, :cond_5

    .line 625
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {p2, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 626
    .restart local v6    # "val":Ljava/lang/Integer;
    if-eqz v6, :cond_5

    .line 627
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method getPnoList(Landroid/net/wifi/WifiConfiguration;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "current"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0xa0

    .line 2248
    const/4 v7, -0x1

    .line 2249
    .local v7, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2251
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;>;"
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 2252
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2255
    :cond_0
    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v8, :cond_2

    .line 2256
    const-string/jumbo v6, ""

    .line 2257
    .local v6, "s":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 2258
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2260
    :cond_1
    const-string/jumbo v8, "WifiAutoJoinController "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " get Pno List total size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_5

    .line 2263
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    .line 2268
    .local v2, "configKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "network$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    .line 2269
    .local v4, "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->getWifiConfiguration(Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2270
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_3

    .line 2273
    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-ge v8, v11, :cond_3

    .line 2278
    iget-object v8, v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2279
    const/4 v8, 0x1

    invoke-virtual {p0, v1, p1, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I

    move-result v0

    .line 2280
    .local v0, "choice":I
    if-lez v0, :cond_3

    .line 2282
    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v8, :cond_4

    .line 2283
    const-string/jumbo v8, "WifiAutoJoinController "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Pno List adding:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2284
    const-string/jumbo v10, " choice "

    .line 2283
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2287
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iput v8, v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->rssi_threshold:I

    goto :goto_0

    .line 2292
    .end local v0    # "choice":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configKey":Ljava/lang/String;
    .end local v4    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    .end local v5    # "network$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "network$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    .line 2293
    .restart local v4    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->getWifiConfiguration(Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2294
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_6

    .line 2297
    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-ge v8, v11, :cond_6

    .line 2301
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2302
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iput v8, v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->rssi_threshold:I

    goto :goto_1

    .line 2305
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    :cond_7
    return-object v3
.end method

.method getSecurityScore(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x0

    .line 867
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 868
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 868
    if-nez v0, :cond_0

    .line 870
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 868
    if-eqz v0, :cond_1

    .line 872
    :cond_0
    const/16 v0, 0x64

    return v0

    .line 873
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 875
    const/16 v0, 0x21

    return v0

    .line 877
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 879
    const/16 v0, 0x42

    return v0

    .line 883
    :cond_3
    return v2
.end method

.method getWifiConfiguration(Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "network"    # Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    .prologue
    const/4 v1, 0x0

    .line 2241
    iget-object v0, p1, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2242
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0

    .line 2244
    :cond_0
    return-object v1
.end method

.method public hideDebugPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2151
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2153
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mDebugPanelView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2156
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2155
    check-cast v0, Landroid/view/WindowManager;

    .line 2158
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mDebugPanelView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2159
    iput-object v3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mDebugPanelView:Landroid/view/View;

    .line 2161
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    iput-object v3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mTextView:Landroid/widget/TextView;

    .line 2150
    return-void
.end method

.method isBadCandidate(II)Z
    .locals 2
    .param p1, "rssi5"    # I
    .param p2, "rssi24"    # I

    .prologue
    const/4 v0, 0x0

    .line 1022
    const/16 v1, -0x50

    if-ge p1, v1, :cond_0

    const/16 v1, -0x5a

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method linkQualitySignificantChange()V
    .locals 0

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    .line 386
    return-void
.end method

.method logDbg(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    .line 330
    return-void
.end method

.method logDbg(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Z

    .prologue
    .line 335
    if-eqz p2, :cond_0

    .line 336
    const-string/jumbo v0, "WifiAutoJoinController "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    const-string/jumbo v2, " - "

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    const-string/jumbo v2, " - "

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    const-string/jumbo v2, " - "

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string/jumbo v0, "WifiAutoJoinController "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method newHalScanResults()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 373
    const/4 v1, 0x0

    .line 374
    .local v1, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-static {v2, v2}, Lcom/android/server/wifi/WifiParser;->parse_akm([Lcom/android/server/wifi/WifiParser$IE;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "akm":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->addToScanCache(Ljava/util/List;)I

    .line 377
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->ageScanResultsOut(I)V

    .line 378
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    .line 379
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 372
    return-void
.end method

.method newSupplicantResults(Z)I
    .locals 4
    .param p1, "doAutoJoin"    # Z

    .prologue
    .line 349
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getScanResultsListNoCopyUnsync()Ljava/util/List;

    move-result-object v1

    .line 350
    .local v1, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->addToScanCache(Ljava/util/List;)I

    move-result v0

    .line 351
    .local v0, "numScanResultsKnown":I
    sget v2, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->ageScanResultsOut(I)V

    .line 352
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v2, :cond_0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newSupplicantResults size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 354
    const-string/jumbo v3, " known="

    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 354
    const-string/jumbo v3, " "

    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 357
    :cond_0
    if-eqz p1, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 361
    return v0
.end method

.method public rssiBoostFrom5GHzRssi(ILjava/lang/String;)I
    .locals 3
    .param p1, "rssi"    # I
    .param p2, "dbg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1080
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v1, v1, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    if-nez v1, :cond_0

    .line 1081
    return v2

    .line 1084
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1083
    if-le p1, v1, :cond_3

    .line 1089
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    .line 1090
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int v2, p1, v2

    .line 1089
    mul-int v0, v1, v2

    .line 1091
    .local v0, "boost":I
    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 1094
    const/16 v0, 0x32

    .line 1096
    :cond_1
    sget-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":    rssi5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " 5GHz-boost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1099
    :cond_2
    return v0

    .line 1103
    .end local v0    # "boost":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1102
    if-ge p1, v1, :cond_4

    .line 1105
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    .line 1106
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int v2, p1, v2

    .line 1105
    mul-int v0, v1, v2

    .line 1107
    .restart local v0    # "boost":I
    return v0

    .line 1109
    .end local v0    # "boost":I
    :cond_4
    return v2
.end method

.method setAllowUntrustedConnections(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 1325
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1326
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    .line 1327
    if-eqz v0, :cond_0

    .line 1329
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->startScanForUntrustedSettingChange()V

    .line 1324
    :cond_0
    return-void

    .line 1325
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method setWifiFwkExt(Lcom/mediatek/common/wifi/IWifiFwkExt;)V
    .locals 0
    .param p1, "wifiExt"    # Lcom/mediatek/common/wifi/IWifiFwkExt;

    .prologue
    .line 2308
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    .line 2307
    return-void
.end method

.method public showDebugPanel()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 2104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2106
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2108
    .local v0, "adbInflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mDebugPanelView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 2109
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2110
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2111
    .local v2, "sBuf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mRecentNetworkString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 2112
    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCompareNetworkString:Ljava/lang/String;

    .line 2111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 2112
    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mUserChoiceString:Ljava/lang/String;

    .line 2111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2113
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDebugPanel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2115
    return-void

    .line 2118
    .end local v2    # "sBuf":Ljava/lang/StringBuffer;
    :cond_0
    const v4, 0x8070025

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mDebugPanelView:Landroid/view/View;

    .line 2120
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mDebugPanelView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 2121
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mDebugPanelView:Landroid/view/View;

    .line 2122
    const v5, 0x811009b

    .line 2121
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mTextView:Landroid/widget/TextView;

    .line 2123
    const-string/jumbo v4, "mDebugPanelView != null "

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2126
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2127
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2128
    .restart local v2    # "sBuf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mRecentNetworkString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCompareNetworkString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mUserChoiceString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2129
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDebugPanel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 2134
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2135
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7d6

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2136
    const/16 v4, 0x8

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2137
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2138
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2139
    const/16 v4, 0x13

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2140
    const v4, 0x3f333333    # 0.7f

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2143
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2142
    check-cast v3, Landroid/view/WindowManager;

    .line 2144
    .local v3, "windowManager":Landroid/view/WindowManager;
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mDebugPanelView:Landroid/view/View;

    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2103
    return-void
.end method

.method underHardThreshold(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 1544
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1545
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1544
    :cond_0
    return v0
.end method

.method underSoftThreshold(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 1539
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1540
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1539
    :cond_0
    return v0
.end method

.method underThreshold(Landroid/net/wifi/WifiConfiguration;II)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "rssi24"    # I
    .param p3, "rssi5"    # I

    .prologue
    const/4 v0, 0x0

    .line 1549
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-ge v1, p2, :cond_0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    if-ge v1, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public updateConfigurationHistory(IZZ)V
    .locals 12
    .param p1, "netId"    # I
    .param p2, "userTriggered"    # Z
    .param p3, "connect"    # Z

    .prologue
    .line 470
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 471
    .local v7, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v7, :cond_0

    .line 472
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateConfigurationHistory nid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " no selected configuration!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 473
    return-void

    .line 476
    :cond_0
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 477
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateConfigurationHistory nid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 478
    const-string/jumbo v10, " no SSID in selected configuration!"

    .line 477
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 479
    return-void

    .line 482
    :cond_1
    if-eqz p2, :cond_2

    .line 485
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 486
    const/4 v9, 0x0

    iput-boolean v9, v7, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 487
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 490
    :cond_2
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_3

    if-eqz p2, :cond_3

    .line 491
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v9, :cond_7

    .line 492
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateConfigurationHistory will update "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 493
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 492
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 493
    const-string/jumbo v10, " now: "

    .line 492
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 494
    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 492
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 495
    const-string/jumbo v10, " uid="

    .line 492
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 495
    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 492
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 495
    const/4 v10, 0x1

    .line 492
    invoke-virtual {p0, v9, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    .line 503
    :cond_3
    :goto_0
    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    .line 504
    const/4 v3, 0x0

    .line 505
    .local v3, "found":Z
    const/4 v0, 0x0

    .line 506
    .local v0, "choice":I
    const/4 v8, 0x0

    .line 509
    .local v8, "size":I
    const-string/jumbo v9, "!!!"

    iput-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mUserChoiceString:Ljava/lang/String;

    .line 513
    const/4 v9, 0x0

    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 514
    const/4 v9, 0x0

    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    .line 515
    const/4 v9, 0x0

    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 516
    iget v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    .line 519
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/16 v10, 0x2ee0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wifi/WifiConfigStore;->getRecentConfiguredNetworks(IZ)Ljava/util/List;

    move-result-object v6

    .line 520
    .local v6, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 521
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateConfigurationHistory found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " networks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 522
    if-eqz v6, :cond_e

    .line 523
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "config$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 524
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_6

    .line 525
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateConfigurationHistory got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " nid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 526
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 525
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 529
    :cond_6
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 530
    const/4 v3, 0x1

    .line 531
    goto :goto_1

    .line 497
    .end local v0    # "choice":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "config$iterator":Ljava/util/Iterator;
    .end local v3    # "found":Z
    .end local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v8    # "size":I
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateConfigurationHistory will update "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 498
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 497
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 499
    const-string/jumbo v10, " uid="

    .line 497
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 499
    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 497
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 499
    const/4 v10, 0x1

    .line 497
    invoke-virtual {p0, v9, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 536
    .restart local v0    # "choice":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "config$iterator":Ljava/util/Iterator;
    .restart local v3    # "found":Z
    .restart local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v8    # "size":I
    :cond_8
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v9, :cond_5

    .line 537
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    iget-object v10, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v10, v10, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    if-ge v9, v10, :cond_9

    .line 538
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    iget-object v10, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v10, v10, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    if-lt v9, v10, :cond_5

    .line 543
    :cond_9
    const/16 v0, 0x3c

    .line 549
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-nez v9, :cond_a

    .line 550
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    .line 553
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateConfigurationHistory add a choice "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 554
    const-string/jumbo v10, " over "

    .line 553
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 554
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    .line 553
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 555
    const-string/jumbo v10, " choice "

    .line 553
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 555
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 553
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 559
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mUserChoiceString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 560
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    .line 559
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 561
    const-string/jumbo v10, " over "

    .line 559
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 561
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    .line 559
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 562
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 559
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 562
    const-string/jumbo v10, "\n"

    .line 559
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mUserChoiceString:Ljava/lang/String;

    .line 566
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v9, :cond_5

    .line 569
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v9, :cond_b

    .line 570
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateConfigurationHistory will remove "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 571
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    .line 570
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 571
    const-string/jumbo v10, " from "

    .line 570
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 571
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    .line 570
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 574
    :cond_b
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v9, :cond_5

    .line 579
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "key$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 580
    .local v4, "key":Ljava/lang/String;
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 585
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    :cond_c
    if-nez v3, :cond_d

    .line 590
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateConfigurationHistory try to connect to an old network!! : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 591
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    .line 590
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 594
    :cond_d
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v9, :cond_e

    .line 595
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v9, :cond_e

    .line 596
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateConfigurationHistory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 597
    const-string/jumbo v10, " now: "

    .line 596
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 597
    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 596
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 603
    .end local v0    # "choice":I
    .end local v2    # "config$iterator":Ljava/util/Iterator;
    .end local v3    # "found":Z
    .end local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v8    # "size":I
    :cond_e
    if-nez p2, :cond_f

    if-eqz p3, :cond_10

    .line 604
    :cond_f
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 469
    :cond_10
    return-void
.end method
