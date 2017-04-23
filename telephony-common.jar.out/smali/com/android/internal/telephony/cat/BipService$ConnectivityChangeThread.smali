.class public Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;
.super Ljava/lang/Object;
.source "BipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectivityChangeThread"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipService;Landroid/content/Intent;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/BipService;
    .param p2, "in"    # Landroid/content/Intent;

    .prologue
    .line 1784
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1786
    const-string/jumbo v0, "[BIP]"

    const-string/jumbo v1, "ConnectivityChangeThread Init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    .line 1784
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1793
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "ConnectivityChangeThread Enter"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "Connectivity changed"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    const/4 v3, 0x0

    .line 1796
    .local v3, "ret":I
    const/4 v2, 0x0

    .line 1798
    .local v2, "response":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    const-string/jumbo v10, "networkInfo"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1800
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    const-string/jumbo v10, "subId"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1801
    .local v6, "strSubId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1802
    .local v7, "subId":I
    if-nez v6, :cond_0

    .line 1803
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "No subId in intet extra."

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    return-void

    .line 1807
    :cond_0
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1811
    :goto_0
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1812
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid subId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    return-void

    .line 1808
    :catch_0
    move-exception v0

    .line 1809
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid long string. strSubId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1815
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 1816
    .local v4, "simId":I
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "EXTRA_SIM_ID :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",mSlotId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/BipService;->-get11(Lcom/android/internal/telephony/cat/BipService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    if-eqz v1, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get11(Lcom/android/internal/telephony/cat/BipService;)I

    move-result v9

    if-eq v4, v9, :cond_3

    .line 1818
    :cond_2
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "receive CONN intent sim!="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/BipService;->-get11(Lcom/android/internal/telephony/cat/BipService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    return-void

    .line 1821
    :cond_3
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "receive valid CONN intent"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 1825
    .local v8, "type":I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 1826
    .local v5, "state":Landroid/net/NetworkInfo$State;
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network type is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network state is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 1830
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get0(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1831
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1833
    :cond_4
    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v9, :cond_6

    .line 1835
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "network state - connected."

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    .end local v2    # "response":Landroid/os/Message;
    :cond_5
    :goto_1
    return-void

    .line 1836
    .restart local v2    # "response":Landroid/os/Message;
    :cond_6
    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v9, :cond_5

    .line 1837
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "network state - disconnected"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get5(Lcom/android/internal/telephony/cat/BipService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1839
    :try_start_1
    const-string/jumbo v9, "[BIP]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mIsCloseInProgress: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v12}, Lcom/android/internal/telephony/cat/BipService;->-get7(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get7(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1841
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v11, "Return TR for close channel."

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v11, 0xc

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1843
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    const/4 v11, 0x0

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/BipService;->-set1(Lcom/android/internal/telephony/cat/BipService;Z)Z

    .line 1844
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v9

    .line 1845
    iget-object v11, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/BipService;->-get6(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipCmdMessage;

    move-result-object v11

    .line 1844
    const/16 v12, 0x10

    .line 1845
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1844
    invoke-virtual {v9, v12, v13, v14, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1846
    .local v2, "response":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "response":Landroid/os/Message;
    :cond_7
    monitor-exit v10

    goto :goto_1

    .line 1838
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method
