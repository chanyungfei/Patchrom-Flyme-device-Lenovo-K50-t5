.class Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiMonitorSingleton"
.end annotation


# static fields
.field private static final sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;


# instance fields
.field private mConnected:Z

.field private final mIfaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mQuitMonitorFlag:Z

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mQuitMonitorFlag:Z

    return v0
.end method

.method static synthetic -get2()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Z
    .locals 1
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->dispatchEvent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 661
    new-instance v0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    .line 660
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    .line 664
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 665
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mQuitMonitorFlag:Z

    .line 668
    return-void
.end method

.method private declared-synchronized dispatchEvent(Ljava/lang/String;)Z
    .locals 12
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    monitor-enter p0

    .line 797
    :try_start_0
    const-string/jumbo v8, "IFNAME="

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 798
    const/16 v8, 0x20

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 799
    .local v7, "space":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 800
    const/4 v8, 0x7

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "iface":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "p2p-"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 805
    const-string/jumbo v1, "p2p0"

    .line 807
    :cond_0
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 820
    .end local v7    # "space":I
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get1()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Dispatching event to interface: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_1
    const/4 v4, 0x0

    .line 824
    .local v4, "m":Lcom/android/server/wifi/WifiMonitor;
    const-string/jumbo v8, "unkown0"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 826
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    const-string/jumbo v9, "ap0"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "m":Lcom/android/server/wifi/WifiMonitor;
    check-cast v4, Lcom/android/server/wifi/WifiMonitor;

    .line 827
    .local v4, "m":Lcom/android/server/wifi/WifiMonitor;
    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/android/server/wifi/WifiMonitor;->-get3(Lcom/android/server/wifi/WifiMonitor;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 837
    :goto_1
    if-eqz v4, :cond_a

    .line 838
    invoke-static {v4}, Lcom/android/server/wifi/WifiMonitor;->-get3(Lcom/android/server/wifi/WifiMonitor;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 839
    invoke-static {v4, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->-wrap0(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 840
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 843
    invoke-static {v4}, Lcom/android/server/wifi/WifiMonitor;->-get2(Lcom/android/server/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ap0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 844
    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiMonitor;->-set0(Lcom/android/server/wifi/WifiMonitor;Z)Z

    .line 845
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->closeSupplicantConnection()V

    .line 846
    const-string/jumbo v8, "WifiMonitor"

    const-string/jumbo v9, "ap0 get TEMINATING 1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    :cond_2
    const/4 v8, 0x1

    monitor-exit p0

    return v8

    .line 812
    .end local v1    # "iface":Ljava/lang/String;
    .end local v4    # "m":Lcom/android/server/wifi/WifiMonitor;
    .restart local v7    # "space":I
    :cond_3
    :try_start_1
    const-string/jumbo v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Dropping malformed event (unparsable iface): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 813
    return v11

    .line 817
    .end local v7    # "space":I
    :cond_4
    :try_start_2
    const-string/jumbo v1, "unkown0"

    .restart local v1    # "iface":Ljava/lang/String;
    goto/16 :goto_0

    .line 831
    .restart local v4    # "m":Lcom/android/server/wifi/WifiMonitor;
    :cond_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    const-string/jumbo v9, "p2p0"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "m":Lcom/android/server/wifi/WifiMonitor;
    check-cast v4, Lcom/android/server/wifi/WifiMonitor;

    .restart local v4    # "m":Lcom/android/server/wifi/WifiMonitor;
    goto :goto_1

    .line 834
    .local v4, "m":Lcom/android/server/wifi/WifiMonitor;
    :cond_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "m":Lcom/android/server/wifi/WifiMonitor;
    check-cast v4, Lcom/android/server/wifi/WifiMonitor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v4, "m":Lcom/android/server/wifi/WifiMonitor;
    goto :goto_1

    :cond_7
    monitor-exit p0

    .line 851
    return v11

    .line 853
    :cond_8
    :try_start_3
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string/jumbo v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Dropping event because ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") is stopped"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    monitor-exit p0

    .line 854
    return v11

    .line 857
    :cond_a
    :try_start_4
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string/jumbo v8, "WifiMonitor"

    const-string/jumbo v9, "Sending to all monitors because there\'s no matching iface"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_b
    const/4 v0, 0x0

    .line 859
    .local v0, "done":Z
    const/4 v2, 0x0

    .line 860
    .local v2, "isMonitoring":Z
    const/4 v3, 0x0

    .line 861
    .local v3, "isTerminating":Z
    const-string/jumbo v8, "CTRL-EVENT-"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 862
    const-string/jumbo v8, "TERMINATING"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 861
    if-eqz v8, :cond_c

    .line 863
    const/4 v3, 0x1

    .line 865
    :cond_c
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "monitor$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiMonitor;

    .line 866
    .local v5, "monitor":Lcom/android/server/wifi/WifiMonitor;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMonitor;->-get3(Lcom/android/server/wifi/WifiMonitor;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 867
    const/4 v2, 0x1

    .line 868
    invoke-static {v5, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->-wrap0(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 869
    const/4 v0, 0x1

    goto :goto_2

    .line 874
    .end local v5    # "monitor":Lcom/android/server/wifi/WifiMonitor;
    :cond_e
    if-nez v2, :cond_f

    if-eqz v3, :cond_f

    .line 875
    const/4 v0, 0x1

    .line 878
    :cond_f
    if-eqz v0, :cond_10

    .line 879
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 881
    if-eqz v4, :cond_10

    invoke-static {v4}, Lcom/android/server/wifi/WifiMonitor;->-get2(Lcom/android/server/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ap0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 882
    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiMonitor;->-set0(Lcom/android/server/wifi/WifiMonitor;Z)Z

    .line 883
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->closeSupplicantConnection()V

    .line 884
    const-string/jumbo v8, "WifiMonitor"

    const-string/jumbo v9, "ap0 get TEMINATING 2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_10
    monitor-exit p0

    .line 888
    return v0

    .end local v0    # "done":Z
    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "isMonitoring":Z
    .end local v3    # "isTerminating":Z
    .end local v4    # "m":Lcom/android/server/wifi/WifiMonitor;
    .end local v6    # "monitor$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method


# virtual methods
.method public declared-synchronized isMonitoring(Ljava/lang/String;)Z
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMonitor;

    .line 734
    .local v0, "m":Lcom/android/server/wifi/WifiMonitor;
    if-nez v0, :cond_0

    .line 735
    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMonitoring iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already gone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 739
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMonitoring("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->-get3(Lcom/android/server/wifi/WifiMonitor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_1
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->-get3(Lcom/android/server/wifi/WifiMonitor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .end local v0    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized killHotspot()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 790
    :try_start_0
    const-string/jumbo v0, "WifiMonitor"

    const-string/jumbo v1, "killHotspot!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 788
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized killSupplicant(Z)V
    .locals 7
    .param p1, "p2pSupported"    # Z

    .prologue
    monitor-enter p0

    .line 768
    :try_start_0
    const-string/jumbo v4, "init.svc.wpa_supplicant"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, "suppState":Ljava/lang/String;
    if-nez v3, :cond_0

    const-string/jumbo v3, "unknown"

    .line 770
    :cond_0
    const-string/jumbo v4, "init.svc.p2p_supplicant"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, "p2pSuppState":Ljava/lang/String;
    if-nez v2, :cond_1

    const-string/jumbo v2, "unknown"

    .line 773
    :cond_1
    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "killSupplicant p2p"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 774
    const-string/jumbo v6, " init.svc.wpa_supplicant="

    .line 773
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 775
    const-string/jumbo v6, " init.svc.p2p_supplicant="

    .line 773
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->killSupplicant(Z)Z

    .line 777
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 778
    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "m$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMonitor;

    .line 779
    .local v0, "m":Lcom/android/server/wifi/WifiMonitor;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiMonitor;->-set0(Lcom/android/server/wifi/WifiMonitor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "m":Lcom/android/server/wifi/WifiMonitor;
    .end local v1    # "m$iterator":Ljava/util/Iterator;
    .end local v2    # "p2pSuppState":Ljava/lang/String;
    .end local v3    # "suppState":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 782
    .restart local v1    # "m$iterator":Ljava/util/Iterator;
    .restart local v2    # "p2pSuppState":Ljava/lang/String;
    .restart local v3    # "suppState":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->quitMonitoring()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 767
    return-void
.end method

.method public declared-synchronized quitMonitoring()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 785
    :try_start_0
    const-string/jumbo v0, "WifiMonitor"

    const-string/jumbo v1, "quit Monitoring!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mQuitMonitorFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 784
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerInterfaceMonitor(Ljava/lang/String;Lcom/android/server/wifi/WifiMonitor;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "m"    # Lcom/android/server/wifi/WifiMonitor;

    .prologue
    monitor-enter p0

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rmIfaceMap put "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    if-nez v0, :cond_0

    .line 749
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWifiNative == null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-static {p2}, Lcom/android/server/wifi/WifiMonitor;->-get5(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 744
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 672
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiMonitor;

    .line 673
    .local v3, "m":Lcom/android/server/wifi/WifiMonitor;
    if-nez v3, :cond_0

    .line 674
    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startMonitor called with unknown iface="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 675
    return-void

    .line 678
    :cond_0
    :try_start_1
    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startMonitoring("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") with mConnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    if-eqz v4, :cond_1

    .line 681
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiMonitor;->-set0(Lcom/android/server/wifi/WifiMonitor;Z)Z

    .line 682
    invoke-static {v3}, Lcom/android/server/wifi/WifiMonitor;->-get4(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x24001

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 671
    return-void

    .line 684
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiMonitor"

    const-string/jumbo v5, "connecting to supplicant"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_2
    const/4 v0, 0x0

    .local v0, "connectTries":I
    move v1, v0

    .line 687
    .end local v0    # "connectTries":I
    .local v1, "connectTries":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->connectToSupplicant()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 688
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiMonitor;->-set0(Lcom/android/server/wifi/WifiMonitor;Z)Z

    .line 689
    invoke-static {v3}, Lcom/android/server/wifi/WifiMonitor;->-get4(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x24001

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 690
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mQuitMonitorFlag:Z

    .line 691
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    .line 692
    new-instance v4, Lcom/android/server/wifi/WifiMonitor$MonitorThread;

    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-direct {v4, v5, p0}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)V

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "connectTries":I
    .end local v3    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 695
    .restart local v1    # "connectTries":I
    .restart local v3    # "m":Lcom/android/server/wifi/WifiMonitor;
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    const/4 v4, 0x5

    if-ge v1, v4, :cond_4

    .line 697
    const-wide/16 v4, 0x3e8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    move v1, v0

    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    goto :goto_1

    .line 698
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    :catch_0
    move-exception v2

    .local v2, "ignore":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 702
    .end local v2    # "ignore":Ljava/lang/InterruptedException;
    :cond_4
    :try_start_4
    invoke-static {v3}, Lcom/android/server/wifi/WifiMonitor;->-get2(Lcom/android/server/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ap0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 703
    invoke-static {v3}, Lcom/android/server/wifi/WifiMonitor;->-get4(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x24002

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 706
    :cond_5
    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startMonitoring("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 714
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMonitor;

    .line 715
    .local v0, "m":Lcom/android/server/wifi/WifiMonitor;
    if-nez v0, :cond_0

    .line 716
    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopMonitoring iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already gone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 717
    return-void

    .line 721
    :cond_0
    :try_start_1
    const-string/jumbo v1, "ap0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->killHotspot()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 723
    return-void

    .line 726
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopMonitoring("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->-get4(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->-set0(Lcom/android/server/wifi/WifiMonitor;Z)Z

    .line 728
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->-get4(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24002

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 713
    return-void

    .end local v0    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopSupplicant()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 763
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterInterfaceMonitor(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 758
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMonitor;

    .line 759
    .local v0, "m":Lcom/android/server/wifi/WifiMonitor;
    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rmIfaceMap remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterInterface("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->-get4(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 754
    return-void

    .end local v0    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
