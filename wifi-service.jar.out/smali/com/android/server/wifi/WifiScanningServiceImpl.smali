.class public Lcom/android/server/wifi/WifiScanningServiceImpl;
.super Landroid/net/wifi/IWifiScanner$Stub;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27100

.field private static final CMD_DRIVER_LOADED:I = 0x27106

.field private static final CMD_DRIVER_UNLOADED:I = 0x27107

.field private static final CMD_FULL_SCAN_RESULTS:I = 0x27101

.field private static final CMD_HOTLIST_AP_FOUND:I = 0x27102

.field private static final CMD_HOTLIST_AP_LOST:I = 0x27103

.field private static final CMD_SCAN_PAUSED:I = 0x27108

.field private static final CMD_SCAN_RESTARTED:I = 0x27109

.field private static final CMD_SCAN_RESULTS_AVAILABLE:I = 0x27100

.field private static final CMD_STOP_SCAN_INTERNAL:I = 0x2710a

.field private static final CMD_WIFI_CHANGES_STABILIZED:I = 0x27105

.field private static final CMD_WIFI_CHANGE_DETECTED:I = 0x27104

.field private static final DBG:Z = false

.field private static final INVALID_KEY:I = 0x0

.field private static final MIN_PERIOD_PER_CHANNEL_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "WifiScanningService"

.field private static final UNKNOWN_PID:I = -0x1

.field private static final VDBG:Z

.field private static mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

.field private static final mLocalLog:Landroid/util/LocalLog;


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

.field mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

.field private mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

.field mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3()Landroid/util/LocalLog;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    return-object v0
.end method

.method static synthetic -wrap0(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 1
    .param p0, "band"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([Landroid/net/wifi/WifiScanner$ChannelSpec;)I
    .locals 1
    .param p0, "channels"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I
    .locals 1
    .param p0, "channels"    # [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiScanningServiceImpl;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->enforceLocationHardwarePermission(I)V

    return-void
.end method

.method static synthetic -wrap4(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    .line 71
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/net/wifi/IWifiScanner$Stub;-><init>()V

    .line 237
    new-instance v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ScanCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .line 567
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    .line 239
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    invoke-direct {p0}, Landroid/net/wifi/IWifiScanner$Stub;-><init>()V

    .line 237
    new-instance v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ScanCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .line 567
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    .line 242
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    .line 241
    return-void
.end method

.method private static copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V
    .locals 4
    .param p0, "channelSpec"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;
    .param p1, "offset"    # I
    .param p2, "channels"    # [I

    .prologue
    .line 1814
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1815
    add-int v1, p1, v0

    new-instance v2, Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget v3, p2, v0

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v2, p0, v1

    .line 1814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1813
    :cond_0
    return-void
.end method

.method static describe(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;
    .locals 4
    .param p0, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 1943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1944
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "  band:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1945
    const-string/jumbo v2, "  period:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1946
    const-string/jumbo v2, "  reportEvents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1947
    const-string/jumbo v2, "  numBssidsPerScan:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1948
    const-string/jumbo v2, "  maxScansToCache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    const-string/jumbo v2, "  channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1952
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v2, :cond_0

    .line 1953
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1954
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1955
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1958
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private enforceLocationHardwarePermission(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    .line 121
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    .line 123
    const-string/jumbo v2, "LocationHardware"

    .line 122
    const/4 v3, -0x1

    .line 120
    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 119
    return-void
.end method

.method private static getBandFromChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;)I
    .locals 6
    .param p0, "channels"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .prologue
    .line 1899
    const/4 v0, 0x0

    .line 1900
    .local v0, "band":I
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, p0, v2

    .line 1901
    .local v1, "channel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/16 v5, 0x960

    if-gt v5, v4, :cond_1

    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/16 v5, 0x9c4

    if-ge v4, v5, :cond_1

    .line 1902
    or-int/lit8 v0, v0, 0x1

    .line 1900
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1903
    :cond_1
    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v4}, Lcom/android/server/wifi/WifiScanningServiceImpl;->isDfs(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1904
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 1905
    :cond_2
    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/16 v5, 0x13ec

    if-gt v5, v4, :cond_0

    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/16 v5, 0x1770

    if-ge v4, v5, :cond_0

    .line 1906
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1909
    .end local v1    # "channel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_3
    return v0
.end method

.method private static getBandFromChannels([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I
    .locals 6
    .param p0, "channels"    # [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .prologue
    .line 1913
    const/4 v0, 0x0

    .line 1914
    .local v0, "band":I
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, p0, v2

    .line 1915
    .local v1, "channel":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    if-eqz v1, :cond_0

    .line 1916
    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    const/16 v5, 0x960

    if-gt v5, v4, :cond_1

    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    const/16 v5, 0x9c4

    if-ge v4, v5, :cond_1

    .line 1917
    or-int/lit8 v0, v0, 0x1

    .line 1914
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1918
    :cond_1
    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    invoke-static {v4}, Lcom/android/server/wifi/WifiScanningServiceImpl;->isDfs(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1919
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 1920
    :cond_2
    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    const/16 v5, 0x13ec

    if-gt v5, v4, :cond_0

    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    const/16 v5, 0x1770

    if-ge v4, v5, :cond_0

    .line 1921
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1925
    .end local v1    # "channel":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    :cond_3
    return v0
.end method

.method private static getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 2
    .param p0, "band"    # I

    .prologue
    .line 1878
    invoke-static {}, Lcom/android/server/wifi/WifiScanningServiceImpl;->initChannels()Z

    .line 1880
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    .line 1882
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 1884
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static initChannels()Z
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1820
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v3, :cond_0

    .line 1822
    return v7

    .line 1825
    :cond_0
    invoke-static {v7}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v0

    .line 1826
    .local v0, "channels24":[I
    if-nez v0, :cond_1

    .line 1827
    const-string/jumbo v3, "Could not get channels for 2.4 GHz"

    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 1828
    return v6

    .line 1831
    :cond_1
    invoke-static {v5}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v1

    .line 1832
    .local v1, "channels5":[I
    if-nez v1, :cond_2

    .line 1833
    const-string/jumbo v3, "Could not get channels for 5 GHz"

    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 1834
    return v6

    .line 1837
    :cond_2
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v2

    .line 1838
    .local v2, "channelsDfs":[I
    if-nez v2, :cond_3

    .line 1839
    const-string/jumbo v3, "Could not get channels for DFS"

    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 1840
    return v6

    .line 1843
    :cond_3
    const/16 v3, 0x8

    new-array v3, v3, [[Landroid/net/wifi/WifiScanner$ChannelSpec;

    sput-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 1845
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-array v4, v6, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v4, v3, v6

    .line 1847
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v4, v0

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v4, v3, v7

    .line 1848
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v3, v3, v7

    invoke-static {v3, v6, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1850
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v4, v1

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v4, v3, v5

    .line 1851
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v3, v3, v5

    invoke-static {v3, v6, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1853
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 1854
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3, v6, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1855
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    array-length v4, v0

    invoke-static {v3, v4, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1857
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v4, v2

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 1858
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v3, v6, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1860
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v4, v0

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 1861
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v3, v6, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1862
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    array-length v4, v0

    invoke-static {v3, v4, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1864
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 1865
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v3, v6, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1866
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    array-length v4, v1

    invoke-static {v3, v4, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1868
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 1869
    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    array-length v5, v2

    add-int/2addr v4, v5

    .line 1868
    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v4, v3, v8

    .line 1870
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v3, v3, v8

    invoke-static {v3, v6, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1871
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v3, v3, v8

    array-length v4, v0

    invoke-static {v3, v4, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1872
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v3, v3, v8

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    invoke-static {v3, v4, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1874
    return v7
.end method

.method private static isDfs(I)Z
    .locals 3
    .param p0, "channel"    # I

    .prologue
    .line 1888
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    .line 1890
    .local v0, "dfsChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1891
    aget-object v2, v0, v1

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    if-ne p0, v2, :cond_0

    .line 1892
    const/4 v2, 0x1

    return v2

    .line 1890
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1895
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static localLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string/jumbo v0, "WifiScanningService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string/jumbo v0, "WifiScanningService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 87
    return-void
.end method


# virtual methods
.method addScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 5
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v4, 0x0

    .line 1242
    if-nez p1, :cond_0

    .line 1243
    const-string/jumbo v1, "WifiScanningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failing scan request ClientInfo not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    return v4

    .line 1246
    :cond_0
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failing scan request because periodInMs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1248
    return v4

    .line 1251
    :cond_1
    const/4 v0, 0x0

    .line 1252
    .local v0, "minSupportedPeriodMs":I
    iget-object v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v1, :cond_3

    .line 1253
    iget-object v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, v1

    mul-int/lit16 v0, v1, 0xc8

    .line 1269
    :cond_2
    :goto_0
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-ge v1, v0, :cond_6

    .line 1270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failing scan request because minSupportedPeriodMs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1271
    const-string/jumbo v2, " but the request wants "

    .line 1270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1271
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 1270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1272
    return v4

    .line 1255
    :cond_3
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    .line 1257
    const/16 v0, 0x3e8

    .line 1259
    :cond_4
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 1261
    add-int/lit16 v0, v0, 0x3e8

    .line 1263
    :cond_5
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    .line 1265
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_0

    .line 1275
    :cond_6
    const-string/jumbo v1, "addScanRequest"

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 1276
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;I)V

    .line 1277
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1278
    const/4 v1, 0x1

    return v1

    .line 1280
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    .line 1281
    const-string/jumbo v1, "Failing scan request because failed to reset scan"

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1282
    return v4
.end method

.method addSingleScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1287
    if-nez p1, :cond_0

    .line 1288
    const-string/jumbo v0, "WifiScanningService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failing single scan request ClientInfo not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    return v3

    .line 1291
    :cond_0
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    if-nez v0, :cond_1

    .line 1292
    iput v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 1294
    :cond_1
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-nez v0, :cond_2

    .line 1295
    const/16 v0, 0x2710

    iput v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 1298
    :cond_2
    const-string/jumbo v0, "addSingleScanRequest"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 1299
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;I)V

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1302
    iput v3, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 1303
    return v1

    .line 1305
    :cond_3
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    .line 1306
    const-string/jumbo v0, "Failing scan request because failed to reset scan"

    invoke-static {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1307
    return v3
.end method

.method configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->configure(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    .line 1394
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump WifiScanner from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1933
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1934
    const-string/jumbo v1, ", uid="

    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1934
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1935
    const-string/jumbo v1, " without permission "

    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1936
    const-string/jumbo v1, "android.permission.DUMP"

    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1937
    return-void

    .line 1939
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1929
    return-void
.end method

.method public getAvailableChannels(I)Landroid/os/Bundle;
    .locals 7
    .param p1, "band"    # I

    .prologue
    .line 109
    invoke-static {p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v2

    .line 110
    .local v2, "channelSpecs":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 112
    .local v1, "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v6, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "Channels"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 116
    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0

    .line 102
    :cond_0
    const-string/jumbo v0, "WifiScanningServiceImpl trying to get messenger w/o initialization"

    invoke-static {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 103
    return-object v1
.end method

.method logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 2
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p3, "id"    # I
    .param p4, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 1225
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1226
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1227
    const-string/jumbo v1, "\nClient "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1228
    invoke-virtual {p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1229
    const-string/jumbo v1, "\nId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1230
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1231
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1232
    if-eqz p4, :cond_0

    .line 1233
    invoke-static {p4}, Lcom/android/server/wifi/WifiScanningServiceImpl;->describe(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1234
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1236
    :cond_0
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1237
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method removeScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 2
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    const/4 v1, 0x0

    .line 1312
    if-eqz p1, :cond_0

    .line 1313
    const-string/jumbo v0, "removeScanRequest"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 1314
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    .line 1315
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    .line 1311
    :cond_0
    return-void
.end method

.method replyFailed(Landroid/os/Message;ILjava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 925
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 926
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 927
    .local v1, "reply":Landroid/os/Message;
    const v2, 0x27012

    iput v2, v1, Landroid/os/Message;->what:I

    .line 928
    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 929
    new-instance v2, Landroid/net/wifi/WifiScanner$OperationResult;

    invoke-direct {v2, p2, p3}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 931
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    .end local v1    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 932
    .restart local v1    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method replySucceeded(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 910
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 911
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 912
    .local v1, "reply":Landroid/os/Message;
    const v2, 0x27011

    iput v2, v1, Landroid/os/Message;->what:I

    .line 913
    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 915
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    .end local v1    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 916
    .restart local v1    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method reportScanResults()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1320
    invoke-static {v5}, Lcom/android/server/wifi/WifiNative;->getScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v3

    .line 1321
    .local v3, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1322
    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ci2$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1323
    .local v0, "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    goto :goto_0

    .line 1326
    .end local v0    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return v5
.end method

.method reportWifiChanged([Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 1399
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1400
    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ci$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1401
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportWifiChanged([Landroid/net/wifi/ScanResult;)V

    goto :goto_0

    .line 1398
    .end local v0    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return-void
.end method

.method reportWifiStabilized([Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 1406
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1407
    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ci$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1408
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportWifiStabilized([Landroid/net/wifi/ScanResult;)V

    goto :goto_0

    .line 1405
    .end local v0    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return-void
.end method

.method resetBuckets()Z
    .locals 20

    .prologue
    .line 1177
    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;)V

    .line 1178
    .local v2, "c":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 1179
    .local v5, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ci$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1180
    .local v3, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScanSettings()Ljava/util/Collection;

    move-result-object v13

    .line 1181
    .local v13, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1182
    .local v10, "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {v2, v10}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->prepChannelMap(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    goto :goto_0

    .line 1186
    .end local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v10    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v12    # "s$iterator":Ljava/util/Iterator;
    .end local v13    # "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1187
    .restart local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScans()Ljava/util/Iterator;

    move-result-object v8

    .line 1188
    .local v8, "it":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1190
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1191
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1192
    .local v7, "id":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1193
    .restart local v10    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {v2, v10}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->addScanRequestToBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v9

    .line 1194
    .local v9, "newPeriodInMs":I
    const/4 v14, -0x1

    if-ne v9, v14, :cond_4

    .line 1196
    const/4 v14, 0x0

    return v14

    .line 1198
    :cond_4
    iget v14, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-eq v9, v14, :cond_3

    .line 1199
    invoke-virtual {v3, v7, v10, v9}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportPeriodChanged(ILandroid/net/wifi/WifiScanner$ScanSettings;I)V

    goto :goto_1

    .line 1204
    .end local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v7    # "id":I
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v9    # "newPeriodInMs":I
    .end local v10    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->compressBuckets()V

    .line 1206
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->getComputedSettings()Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-result-object v11

    .line 1207
    .local v11, "s":Lcom/android/server/wifi/WifiNative$ScanSettings;
    iget v14, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-nez v14, :cond_6

    .line 1209
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopScan()V

    .line 1210
    const/4 v14, 0x1

    return v14

    .line 1212
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiNative;->startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1213
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Successfully started scan of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " buckets at"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1214
    const-string/jumbo v15, "time = "

    .line 1213
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    .line 1213
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1214
    const-string/jumbo v15, " period "

    .line 1213
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1215
    iget v15, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    .line 1213
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1216
    const/4 v14, 0x1

    return v14

    .line 1218
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to start scan of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " buckets"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 1219
    const/4 v14, 0x0

    return v14
.end method

.method resetHotlist()V
    .locals 13

    .prologue
    .line 1330
    iget-object v12, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 1331
    .local v4, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    const/4 v7, 0x0

    .line 1333
    .local v7, "num_hotlist_ap":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ci$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1334
    .local v2, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getHotlistSettings()Ljava/util/Collection;

    move-result-object v1

    .line 1335
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiScanner$HotlistSettings;

    .line 1336
    .local v8, "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iget-object v12, v8, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v12, v12

    add-int/2addr v7, v12

    goto :goto_0

    .line 1340
    .end local v1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    .end local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v8    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    .end local v9    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    if-nez v7, :cond_2

    .line 1341
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->resetHotlist()V

    .line 1329
    :goto_1
    return-void

    .line 1343
    :cond_2
    new-array v0, v7, [Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 1344
    .local v0, "bssidInfos":[Landroid/net/wifi/WifiScanner$BssidInfo;
    const/4 v6, 0x0

    .line 1345
    .local v6, "index":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1346
    .restart local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getHotlistSettings()Ljava/util/Collection;

    move-result-object v11

    .line 1347
    .local v11, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "s$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiScanner$HotlistSettings;

    .line 1348
    .restart local v8    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v12, v8, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v12, v12

    if-ge v5, v12, :cond_4

    .line 1349
    iget-object v12, v8, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aget-object v12, v12, v5

    aput-object v12, v0, v6

    .line 1348
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1354
    .end local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v5    # "i":I
    .end local v8    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    .end local v9    # "s$iterator":Ljava/util/Iterator;
    .end local v11    # "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    :cond_5
    new-instance v10, Landroid/net/wifi/WifiScanner$HotlistSettings;

    invoke-direct {v10}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    .line 1355
    .local v10, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iput-object v0, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 1356
    const/4 v12, 0x3

    iput v12, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    .line 1357
    iget-object v12, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-static {v10, v12}, Lcom/android/server/wifi/WifiNative;->setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z

    goto :goto_1
.end method

.method resetHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1367
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeHostlistSettings(I)V

    .line 1368
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist()V

    .line 1366
    return-void
.end method

.method setHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;

    .prologue
    .line 1362
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addHostlistSettings(Landroid/net/wifi/WifiScanner$HotlistSettings;I)V

    .line 1363
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist()V

    .line 1361
    return-void
.end method

.method public startService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    .line 248
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WifiScanningService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 251
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    .line 252
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    .line 253
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    .line 254
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 256
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    .line 257
    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;)V

    .line 269
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "wifi_scan_available"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->start()V

    .line 272
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->start()V

    .line 245
    return-void
.end method

.method trackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->enable()V

    .line 1375
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addSignificantWifiChange(I)V

    .line 1373
    return-void
.end method

.method untrackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1379
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeSignificantWifiChange(I)V

    .line 1380
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1381
    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ci2$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1382
    .local v0, "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getWifiChangeHandlers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1385
    return-void

    .line 1391
    .end local v0    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->disable()V

    .line 1378
    return-void
.end method
