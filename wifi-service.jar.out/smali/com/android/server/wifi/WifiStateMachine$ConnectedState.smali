.class Lcom/android/server/wifi/WifiStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 10968
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 10972
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v4, 0x3e8

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap25(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;

    .line 10973
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10974
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Enter ConnectedState  mScreenOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10975
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get108(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    .line 10974
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10976
    const-string/jumbo v5, " scanperiod="

    .line 10974
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10977
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 10974
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10978
    const-string/jumbo v5, " useGscan="

    .line 10974
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10978
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    .line 10974
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10978
    const-string/jumbo v5, "/"

    .line 10974
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10979
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    .line 10974
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10980
    const-string/jumbo v5, " mHalBasedPnoEnableInDevSettings "

    .line 10974
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10980
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    .line 10974
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10983
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 10985
    .local v2, "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_2

    .line 10987
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 10989
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 10990
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 10991
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 10992
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autoConnectable:I

    if-nez v3, :cond_1

    .line 10994
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v7}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    goto :goto_0

    .line 10999
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11000
    const-string/jumbo v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Enter ConnectedState, mPppoeInfo.status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get96(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11001
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get96(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v4, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v3, v4, :cond_3

    .line 11002
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    .line 11006
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get108(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11007
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getEnableAutoJoinWhenAssociated()Z

    move-result v3

    .line 11006
    if-eqz v3, :cond_4

    .line 11008
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 11009
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v4, "connectedEnter"

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap13(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    .line 11016
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->registerConnected()V

    .line 11017
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11018
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set84(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 11020
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11023
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11025
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get156(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11026
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get157(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set85(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11027
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ConnectedState Enter start disconnect test "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 11028
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get157(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    .line 11027
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 11029
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 11030
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get157(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    .line 11029
    const v6, 0x20059

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 11030
    const-wide/16 v6, 0x3a98

    .line 11029
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 11034
    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 11036
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->-set46(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 10970
    return-void

    .line 11012
    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v3, v4, v8, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap78(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_1
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 11349
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "WifiStateMachine: Leaving Connected state"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 11350
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap70(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 11351
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set46(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11353
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;)Z

    .line 11355
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set76(Lcom/android/server/wifi/WifiStateMachine;[Ljava/lang/String;)[Ljava/lang/String;

    .line 11348
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 37
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 11043
    const/4 v8, 0x0

    .line 11044
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->getClass()Ljava/lang/Class;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 11046
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    sparse-switch v32, :sswitch_data_0

    .line 11342
    const/16 v32, 0x0

    return v32

    .line 11048
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    sget v33, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_0

    .line 11049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get5()I

    move-result v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11050
    const/16 v32, 0x1

    return v32

    .line 11056
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v32

    if-eqz v32, :cond_1

    .line 11057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_2

    .line 11059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string/jumbo v33, "connectedRestart"

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-wrap13(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    .line 11344
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    const/16 v32, 0x1

    return v32

    .line 11063
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 11064
    .local v22, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    move-wide/from16 v32, v0

    cmp-long v32, v22, v32

    if-lez v32, :cond_1

    .line 11065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    move-wide/from16 v32, v0

    sub-long v32, v22, v32

    .line 11066
    const-wide/32 v34, 0x1d4c0

    .line 11065
    cmp-long v32, v32, v34

    if-lez v32, :cond_1

    .line 11067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    move-wide/from16 v32, v0

    .line 11068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    .line 11067
    cmp-long v32, v32, v34

    if-gez v32, :cond_1

    .line 11070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string/jumbo v33, "Connected restart gscan"

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-wrap11(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    goto :goto_0

    .line 11076
    .end local v22    # "now":J
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->updateAssociatedScanPermission()V

    goto :goto_0

    .line 11079
    :sswitch_2
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v32

    if-eqz v32, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string/jumbo v33, "Watchdog reports poor link"

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11081
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11088
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-get132(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 11084
    :catch_0
    move-exception v14

    .line 11085
    .local v14, "e":Ljava/lang/IllegalStateException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Failed to disable IPv6: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 11082
    .end local v14    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v26

    .line 11083
    .local v26, "re":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Failed to disable IPv6: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 11091
    .end local v26    # "re":Landroid/os/RemoteException;
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    if-nez v32, :cond_6

    .line 11092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lcom/android/server/wifi/WifiConfigStore;->handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V

    .line 11093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 11094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v32

    if-eqz v32, :cond_4

    .line 11095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11097
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 11121
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    :goto_2
    const/16 v32, 0x1

    return v32

    .line 11098
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_7

    .line 11099
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    .line 11100
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v32

    if-nez v32, :cond_9

    .line 11101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 11102
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_5

    .line 11104
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_8

    .line 11105
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 11108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 11109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v32

    .line 11110
    const/16 v33, -0x1

    .line 11109
    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 11113
    :cond_8
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 11114
    const/16 v32, 0x1

    move/from16 v0, v32

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 11115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    goto/16 :goto_2

    .line 11118
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string/jumbo v33, "Skip unwanted operation because of customization!"

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 11123
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_c

    .line 11124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 11125
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_c

    .line 11126
    iget-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move/from16 v32, v0

    if-eqz v32, :cond_a

    .line 11127
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v32, v0

    if-eqz v32, :cond_b

    .line 11128
    :cond_a
    const/16 v32, 0x1

    move/from16 v0, v32

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 11131
    :cond_b
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 11132
    const/16 v32, 0x1

    move/from16 v0, v32

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 11133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 11136
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    const/16 v32, 0x1

    return v32

    .line 11138
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    if-eqz v32, :cond_e

    const/4 v4, 0x1

    .line 11139
    .local v4, "accept":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 11140
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_d

    .line 11141
    iput-boolean v4, v8, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 11143
    :cond_d
    const/16 v32, 0x1

    return v32

    .line 11138
    .end local v4    # "accept":Z
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_e
    const/4 v4, 0x0

    .restart local v4    # "accept":Z
    goto :goto_3

    .line 11146
    .end local v4    # "accept":Z
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-get157(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 11147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 11148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v32

    if-eqz v32, :cond_1

    .line 11149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 11156
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set46(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11157
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    .line 11158
    .local v31, "toBSSID":Ljava/lang/String;
    if-eqz v31, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 11161
    :cond_f
    :goto_4
    const/16 v32, 0x0

    return v32

    .line 11159
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConfigStore;->driverRoamedFrom(Landroid/net/wifi/WifiInfo;)V

    goto :goto_4

    .line 11163
    .end local v31    # "toBSSID":Ljava/lang/String;
    :sswitch_8
    const-wide/16 v20, 0x0

    .line 11164
    .local v20, "lastRoam":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_11

    .line 11166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v34

    sub-long v20, v32, v34

    .line 11167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-wide/16 v34, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set46(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11169
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->unexpectedDisconnectedReason(I)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 11170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get145(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    move-result-object v32

    .line 11171
    const/16 v33, 0x5

    .line 11170
    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiLogger;->captureBugReportData(I)V

    .line 11173
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 11174
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get108(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 11175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v32

    if-eqz v32, :cond_15

    .line 11209
    :cond_13
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v32

    if-eqz v32, :cond_1

    .line 11210
    const/4 v5, -0x1

    .line 11211
    .local v5, "ajst":I
    if-eqz v8, :cond_14

    iget v5, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 11212
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v34

    .line 11212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11214
    const-string/jumbo v34, " RSSI="

    .line 11212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v34

    .line 11212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11215
    const-string/jumbo v34, " freq="

    .line 11212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v34

    .line 11212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11216
    const-string/jumbo v34, " was debouncing="

    .line 11212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v34

    .line 11212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11217
    const-string/jumbo v34, " reason="

    .line 11212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11217
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    .line 11212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11218
    const-string/jumbo v34, " ajst="

    .line 11212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11176
    .end local v5    # "ajst":I
    :cond_15
    if-eqz v8, :cond_13

    .line 11177
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v32, v0

    if-nez v32, :cond_13

    .line 11178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v32

    if-nez v32, :cond_13

    .line 11179
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    .line 11180
    const-wide/16 v32, 0x0

    cmp-long v32, v20, v32

    if-lez v32, :cond_13

    const-wide/16 v32, 0x7d0

    cmp-long v32, v20, v32

    if-gez v32, :cond_13

    .line 11181
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v32

    invoke-static/range {v32 .. v32}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v32

    if-eqz v32, :cond_18

    .line 11182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v32

    .line 11183
    sget v33, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    .line 11182
    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_18

    .line 11187
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v32

    if-nez v32, :cond_13

    .line 11194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 11195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    .line 11198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v34

    .line 11197
    const v35, 0x20057

    .line 11198
    const/16 v36, 0x0

    .line 11197
    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    .line 11198
    const-wide/16 v34, 0x1b58

    .line 11197
    invoke-virtual/range {v32 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 11199
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v32

    if-eqz v32, :cond_17

    .line 11200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v34

    .line 11200
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11202
    const-string/jumbo v34, " RSSI="

    .line 11200
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v34

    .line 11200
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11203
    const-string/jumbo v34, " freq="

    .line 11200
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v34

    .line 11200
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11204
    const-string/jumbo v34, " reason="

    .line 11200
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11204
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    .line 11200
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11205
    const-string/jumbo v34, " -> debounce"

    .line 11200
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11207
    :cond_17
    const/16 v32, 0x1

    return v32

    .line 11184
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v32

    invoke-static/range {v32 .. v32}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 11185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v32

    .line 11186
    sget v33, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    .line 11185
    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_13

    goto/16 :goto_5

    .line 11224
    .end local v20    # "lastRoam":J
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-wide/16 v34, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set46(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v32

    if-eqz v32, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v32

    if-eqz v32, :cond_1b

    .line 11230
    :cond_19
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 11231
    .local v7, "candidate":Landroid/net/wifi/ScanResult;
    const-string/jumbo v6, "any"

    .line 11232
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v32

    if-eqz v32, :cond_1a

    .line 11234
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 11236
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v19

    .line 11237
    .local v19, "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 11240
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v8, :cond_1c

    .line 11241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string/jumbo v33, "AUTO_ROAM and no config, bail out..."

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11226
    .end local v6    # "bssid":Ljava/lang/String;
    .end local v7    # "candidate":Landroid/net/wifi/ScanResult;
    .end local v19    # "netId":I
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1b
    const-string/jumbo v32, "WifiStateMachine"

    const-string/jumbo v33, "Skip CMD_AUTO_ROAM for customization!"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11227
    const/16 v32, 0x1

    return v32

    .line 11245
    .restart local v6    # "bssid":Ljava/lang/String;
    .restart local v7    # "candidate":Landroid/net/wifi/ScanResult;
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v19    # "netId":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "CMD_AUTO_ROAM sup state "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v34

    .line 11245
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11247
    const-string/jumbo v34, " my state "

    .line 11245
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v34

    .line 11245
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11248
    const-string/jumbo v34, " nid="

    .line 11245
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11248
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    .line 11245
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11249
    const-string/jumbo v34, " config "

    .line 11245
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11249
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v34

    .line 11245
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11250
    const-string/jumbo v34, " roam="

    .line 11245
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11250
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    .line 11245
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11251
    const-string/jumbo v34, " to "

    .line 11245
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11252
    const-string/jumbo v34, " targetRoamBSSID "

    .line 11245
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 11252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->-get123(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v34

    .line 11245
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 11255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v6}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v32

    if-eqz v32, :cond_1e

    .line 11263
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 11265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v32

    if-nez v32, :cond_1

    .line 11267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v32, v0

    .line 11268
    const/16 v33, 0x2

    .line 11267
    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1f

    .line 11269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const v33, 0x25002

    .line 11270
    const/16 v34, 0x9

    .line 11269
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 11256
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const-string/jumbo v33, "AUTO_ROAM nothing to do"

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 11258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 11274
    :cond_1f
    const/16 v28, 0x0

    .line 11275
    .local v28, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v19

    if-eq v0, v1, :cond_22

    .line 11276
    const/16 v30, 0x0

    .line 11277
    .local v30, "tmpResult":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v32

    if-eqz v32, :cond_21

    .line 11278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v32

    const/16 v33, 0x1

    .line 11279
    const/16 v34, -0x1

    .line 11278
    move-object/from16 v0, v32

    move/from16 v1, v19

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    move-result v30

    .line 11285
    .local v30, "tmpResult":Z
    :goto_6
    if-eqz v30, :cond_20

    .line 11286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v32

    .line 11285
    if-eqz v32, :cond_20

    .line 11287
    const/16 v28, 0x1

    .line 11292
    .end local v28    # "ret":Z
    .end local v30    # "tmpResult":Z
    :cond_20
    :goto_7
    if-eqz v28, :cond_23

    .line 11293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-set84(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 11297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-get102(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 11281
    .restart local v28    # "ret":Z
    .local v30, "tmpResult":Z
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v32

    .line 11282
    const/16 v33, 0x0

    .line 11283
    const/16 v34, -0x1

    .line 11281
    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v30

    .local v30, "tmpResult":Z
    goto :goto_6

    .line 11290
    .end local v30    # "tmpResult":Z
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    move-result v28

    .local v28, "ret":Z
    goto :goto_7

    .line 11301
    .end local v28    # "ret":Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Failed to connect config: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " netId: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    const v33, 0x25002

    .line 11303
    const/16 v34, 0x0

    .line 11302
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 11304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 11309
    .end local v6    # "bssid":Ljava/lang/String;
    .end local v7    # "candidate":Landroid/net/wifi/ScanResult;
    .end local v19    # "netId":I
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 11310
    .local v29, "slot":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    .line 11311
    .local v18, "intervalSeconds":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/server/connectivity/KeepalivePacketData;

    .line 11315
    .local v24, "pkt":Lcom/android/server/connectivity/KeepalivePacketData;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v32

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    move-object/from16 v33, v0

    .line 11314
    invoke-static/range {v32 .. v33}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v16

    .line 11316
    .local v16, "gateway":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->-wrap24(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 11317
    .local v13, "dstMacStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v12

    .line 11324
    .local v12, "dstMac":[B
    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstMac:[B

    .line 11325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v29

    move-object/from16 v2, v24

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->startWifiIPPacketOffload(ILcom/android/server/connectivity/KeepalivePacketData;I)I

    move-result v27

    .line 11326
    .local v27, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    .line 11318
    .end local v12    # "dstMac":[B
    .end local v13    # "dstMacStr":Ljava/lang/String;
    .end local v16    # "gateway":Ljava/net/InetAddress;
    .end local v27    # "result":I
    :catch_2
    move-exception v15

    .line 11319
    .local v15, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Can\'t find MAC address for next hop to "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v32

    .line 11321
    const/16 v33, -0x15

    .line 11320
    move-object/from16 v0, v32

    move/from16 v1, v29

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    .line 11330
    .end local v15    # "e":Ljava/lang/RuntimeException;
    .end local v18    # "intervalSeconds":I
    .end local v24    # "pkt":Lcom/android/server/connectivity/KeepalivePacketData;
    .end local v29    # "slot":I
    :sswitch_b
    const-string/jumbo v32, "WifiStateMachine"

    const-string/jumbo v33, "Update DNS for pppoe!"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiStateMachine;->-get97(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v11

    .line 11332
    .local v11, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 11333
    .local v25, "pppoeDnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "dns$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_24

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/InetAddress;

    .line 11334
    .local v9, "dns":Ljava/net/InetAddress;
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 11336
    .end local v9    # "dns":Ljava/net/InetAddress;
    :cond_24
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_9
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_1

    .line 11337
    const-string/jumbo v33, "WifiStateMachine"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Set net.dns"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    add-int/lit8 v34, v17, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v34, " to "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11338
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "net.dns"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    add-int/lit8 v33, v17, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 11336
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 11046
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_b
        0x20059 -> :sswitch_6
        0x20090 -> :sswitch_3
        0x20091 -> :sswitch_9
        0x20093 -> :sswitch_7
        0x20094 -> :sswitch_4
        0x20099 -> :sswitch_5
        0x2009a -> :sswitch_0
        0x2009e -> :sswitch_1
        0x200a0 -> :sswitch_a
        0x21015 -> :sswitch_2
        0x24004 -> :sswitch_8
    .end sparse-switch
.end method
