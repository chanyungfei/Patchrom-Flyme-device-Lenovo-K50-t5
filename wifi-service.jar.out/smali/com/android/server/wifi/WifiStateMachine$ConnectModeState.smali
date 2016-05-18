.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 7570
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 7573
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7574
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 48
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 7584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move-object/from16 v2, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 7586
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    sparse-switch v42, :sswitch_data_0

    .line 8629
    const/16 v42, 0x0

    .line 8631
    :goto_0
    return v42

    .line 7588
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$17502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7589
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 7590
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_1

    .line 7592
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    .line 7594
    :cond_1
    if-eqz v6, :cond_2

    .line 7596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$17600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v43

    monitor-enter v43

    .line 7597
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    move-result v44

    move-object/from16 v0, v42

    move/from16 v1, v44

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$17502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7599
    monitor-exit v43
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7601
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v42

    const v43, 0x2402b

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 8631
    .end local v6    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_1
    const/16 v42, 0x1

    goto :goto_0

    .line 7599
    .restart local v6    # "bssid":Ljava/lang/String;
    :catchall_0
    move-exception v42

    :try_start_1
    monitor-exit v43
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v42

    .line 7604
    .end local v6    # "bssid":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v42

    const v43, 0x24007

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto :goto_1

    .line 7608
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    .line 7609
    .local v31, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    const v43, 0x2400d

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_4

    const-string v13, "temp-disabled"

    .line 7611
    .local v13, "en":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "ConnectModeState SSID state="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " nid="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " ["

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "]"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$17600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v43

    monitor-enter v43

    .line 7614
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    const v46, 0x2400e

    move/from16 v0, v42

    move/from16 v1, v46

    if-ne v0, v1, :cond_5

    const/16 v42, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v42

    move-object/from16 v3, v31

    move-object/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 7616
    monitor-exit v43

    goto/16 :goto_1

    :catchall_1
    move-exception v42

    monitor-exit v43
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v42

    .line 7609
    .end local v13    # "en":Ljava/lang/String;
    :cond_4
    const-string v13, "re-enabled"

    goto/16 :goto_2

    .line 7614
    .restart local v13    # "en":Ljava/lang/String;
    :cond_5
    const/16 v42, 0x0

    goto :goto_3

    .line 7619
    .end local v13    # "en":Ljava/lang/String;
    .end local v31    # "substr":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$12600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v30

    .line 7622
    .local v30, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v30 .. v30}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 7623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v42

    sget-object v43, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-eq v0, v1, :cond_6

    .line 7624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10400(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7626
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Detected an interface down, restart driver"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$12800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$17700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2000d

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 7637
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$17800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v42

    if-nez v42, :cond_3

    sget-object v42, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v42

    sget-object v43, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-eq v0, v1, :cond_3

    .line 7639
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v42

    if-eqz v42, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7640
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10400(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$14600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$17900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7645
    .end local v30    # "state":Landroid/net/wifi/SupplicantState;
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_9

    .line 7646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$3302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 7649
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 7650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$3302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 7654
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 7655
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v25

    .line 7656
    .local v25, "res":I
    if-gez v25, :cond_b

    .line 7657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3100()I

    move-result v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7681
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x20034

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v25

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7659
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 7660
    .local v10, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_c

    if-eqz v7, :cond_c

    .line 7661
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v42, v0

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_c

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v42, v0

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_c

    .line 7666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, -0x3

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-virtual/range {v42 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 7677
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_a

    .line 7678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkIfEapNetworkChanged(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$18000(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_4

    .line 7684
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v25    # "res":I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v21

    .line 7685
    .local v21, "ok":Z
    if-nez v21, :cond_d

    .line 7686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3100()I

    move-result v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7688
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_e

    .line 7689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 7690
    if-eqz v21, :cond_e

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_e

    .line 7691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanForWeakSignal:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7695
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    if-eqz v21, :cond_f

    const/16 v42, 0x1

    :goto_5
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_f
    const/16 v42, -0x1

    goto :goto_5

    .line 7698
    .end local v21    # "ok":Z
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_11

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v42, v0

    if-nez v42, :cond_11

    .line 7699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v42

    if-nez v42, :cond_10

    .line 7700
    const-string v42, "WifiStateMachine"

    const-string v43, "Shouldn\'t auto connect, ignore the enable network operation!"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7704
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->getDisconnectNetworks()Ljava/util/List;

    move-result-object v12

    .line 7705
    .local v12, "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_11

    .line 7706
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Network "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " is disconnected actively, ignore the enable network operation!"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7712
    .end local v12    # "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_16

    const/16 v22, 0x1

    .line 7716
    .local v22, "others":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    const/16 v44, 0x1

    const/16 v45, 0x0

    invoke-virtual/range {v42 .. v45}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 7718
    if-eqz v22, :cond_12

    .line 7721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7729
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    const-string v44, "any"

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 7731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v42, v0

    const/16 v45, 0x1

    move/from16 v0, v42

    move/from16 v1, v45

    if-ne v0, v1, :cond_17

    const/16 v42, 0x1

    :goto_7
    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v21

    .line 7732
    .restart local v21    # "ok":Z
    if-nez v21, :cond_13

    .line 7733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3100()I

    move-result v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7735
    :cond_13
    if-eqz v21, :cond_15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_15

    .line 7736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_14

    .line 7737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 7738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanForWeakSignal:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7741
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastExplicitNetworkId:I
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$3902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v42

    const v43, 0x25001

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(II)V

    .line 7746
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    if-eqz v21, :cond_18

    const/16 v42, 0x1

    :goto_8
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7712
    .end local v21    # "ok":Z
    .end local v22    # "others":Z
    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 7731
    .restart local v22    # "others":Z
    :cond_17
    const/16 v42, 0x0

    goto/16 :goto_7

    .line 7746
    .restart local v21    # "ok":Z
    :cond_18
    const/16 v42, -0x1

    goto :goto_8

    .line 7749
    .end local v21    # "ok":Z
    .end local v22    # "others":Z
    :sswitch_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    .line 7750
    .local v32, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$18100(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v42

    sub-long v42, v32, v42

    const-wide/32 v44, 0x927c0

    cmp-long v42, v42, v44

    if-lez v42, :cond_3

    .line 7751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 7752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v32

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18102(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 7756
    .end local v32    # "time":J
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    const/16 v44, 0x5

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_1a

    .line 7758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_19

    .line 7759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->addDisconnectNetwork(I)V

    .line 7760
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_19

    .line 7761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanForWeakSignal:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7765
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25013

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 7767
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3100()I

    move-result v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25012

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7773
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v43

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 7774
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_3

    .line 7775
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3

    .line 7777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x20049

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 7782
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 7785
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    goto/16 :goto_1

    .line 7788
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v21

    .line 7790
    .restart local v21    # "ok":Z
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v42

    if-eqz v42, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "wifistatemachine did save config "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7791
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x2003a

    if-eqz v21, :cond_1c

    const/16 v42, 0x1

    :goto_9
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 7794
    const-string v42, "backup"

    invoke-static/range {v42 .. v42}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v16

    .line 7796
    .local v16, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v16, :cond_3

    .line 7798
    :try_start_3
    const-string v42, "com.android.providers.settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 7799
    :catch_0
    move-exception v42

    goto/16 :goto_1

    .line 7791
    .end local v16    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_1c
    const/16 v42, -0x1

    goto :goto_9

    .line 7805
    .end local v21    # "ok":Z
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move-object/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 7809
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Received SUP_REQUEST_IDENTITY"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7811
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    .line 7813
    .local v29, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v42

    if-eqz v42, :cond_1d

    if-eqz v29, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "\""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1d

    .line 7816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "AUTH_FAILED no identity"

    const/16 v46, 0x0

    invoke-virtual/range {v42 .. v46}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 7820
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    const/16 v43, -0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-nez v42, :cond_1e

    .line 7823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 7825
    :cond_1e
    const-string v42, "WifiStateMachine"

    const-string v43, "Skip SUP_REQUEST_IDENTITY for customization!"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7829
    .end local v29    # "ssid":Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Received SUP_REQUEST_SIM_AUTH"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$18400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7830
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .line 7831
    .local v24, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v24, :cond_20

    .line 7832
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v42, v0

    const/16 v43, 0x4

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_1f

    .line 7833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 7834
    :cond_1f
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v42, v0

    const/16 v43, 0x5

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3

    .line 7835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 7838
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Invalid sim auth request"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7842
    .end local v24    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move-object/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 7847
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    const/16 v43, -0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 7852
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    goto/16 :goto_1

    .line 7855
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    .line 7859
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    move-result v42

    if-eqz v42, :cond_3

    .line 7860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Reconnecting to give a chance to un-connected TLS networks"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_21

    .line 7863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7865
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 7870
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2600()I

    move-result v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7871
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 7873
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v42

    if-nez v42, :cond_22

    .line 7874
    const-string v42, "WifiStateMachine"

    const-string v43, "Skip CMD_AUTO_CONNECT for customization!"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7875
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 7885
    :cond_22
    const/4 v11, 0x0

    .line 7886
    .local v11, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$14600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-eq v0, v1, :cond_23

    .line 7890
    const/4 v11, 0x1

    .line 7891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7895
    :cond_23
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 7896
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 7897
    .local v18, "netId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    .line 7898
    .local v27, "roam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " my state "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$18700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " nid="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " roam="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7903
    if-nez v7, :cond_24

    .line 7904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7909
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v42

    move/from16 v1, v18

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 7912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " nid="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    const/16 v43, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v26

    .line 7915
    .local v26, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v18

    .line 7916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v18

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 7921
    const/16 v34, 0x0

    .line 7922
    .local v34, "tmpResult":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_27

    .line 7923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    const/16 v43, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v18

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v34

    .line 7927
    :goto_a
    if-eqz v34, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v42

    if-eqz v42, :cond_29

    .line 7929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$18302(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 7931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 7932
    if-eqz v7, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v42

    if-nez v42, :cond_25

    .line 7946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    const/16 v43, -0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7949
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v27

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18802(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v42

    if-nez v42, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$17800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_28

    .line 7951
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$19000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7925
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v34

    goto/16 :goto_a

    .line 7952
    :cond_28
    if-eqz v11, :cond_3

    .line 7953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$19100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$19200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7958
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Failed to connect config: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " netId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25002

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7971
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "didDisconnect":Z
    .end local v18    # "netId":I
    .end local v26    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v27    # "roam":I
    .end local v34    # "tmpResult":Z
    :sswitch_18
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 7972
    .restart local v18    # "netId":I
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 7973
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7974
    const/16 v37, 0x0

    .line 7977
    .local v37, "updatedExisting":Z
    if-eqz v7, :cond_2b

    .line 7978
    const/16 v42, 0x1

    move/from16 v0, v42

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v8

    .line 7979
    .local v8, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v28

    .line 7981
    .local v28, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v28, :cond_2a

    .line 7985
    move-object/from16 v7, v28

    .line 7986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CONNECT_NETWORK updating existing config with id="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " configKey="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7988
    const/16 v42, 0x0

    move/from16 v0, v42

    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 7989
    const/16 v42, 0x0

    move/from16 v0, v42

    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 7990
    const/16 v37, 0x1

    .line 7993
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v26

    .line 7994
    .restart local v26    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v18

    .line 7996
    .end local v8    # "configKey":Ljava/lang/String;
    .end local v26    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v28    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 7998
    if-nez v7, :cond_30

    .line 7999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CONNECT_NETWORK id="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " my state "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$19300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8013
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "any"

    move-object/from16 v0, v42

    move/from16 v1, v18

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 8015
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v42, v0

    const/16 v43, 0x3f2

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_2c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v42, v0

    const/16 v43, 0x3e8

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_2d

    .line 8023
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "CONNECT_NETWORK"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 8026
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$18802(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v42

    const/16 v43, 0x1

    const/16 v44, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v18

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 8031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8033
    const/4 v11, 0x0

    .line 8034
    .restart local v11    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v42

    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v42

    move/from16 v0, v42

    move/from16 v1, v18

    if-eq v0, v1, :cond_2e

    .line 8039
    const/4 v11, 0x1

    .line 8040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 8044
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v18

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 8046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v42

    if-eqz v42, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v42

    if-eqz v42, :cond_34

    .line 8048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$18302(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v42

    const v43, 0x25001

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(II)V

    .line 8053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25003

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$3902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v18

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastExplicitNetworkId:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_2f

    .line 8059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanForWeakSignal:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 8065
    :cond_2f
    if-eqz v11, :cond_32

    .line 8067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$19100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$19500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8003
    .end local v11    # "didDisconnect":Z
    :cond_30
    iget-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v42, v0

    if-eqz v42, :cond_31

    const-string v39, " skipped"

    .line 8004
    .local v39, "wasSkipped":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CONNECT_NETWORK id="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " config="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " cnid="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " supstate="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " my state "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$19400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " uid = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 8003
    .end local v39    # "wasSkipped":Ljava/lang/String;
    :cond_31
    const-string v39, ""

    goto/16 :goto_c

    .line 8068
    .restart local v11    # "didDisconnect":Z
    :cond_32
    if-eqz v37, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$19700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v42, v0

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_33

    .line 8072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    .line 8078
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$14600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$19900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8082
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Failed to connect config: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " netId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25002

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8089
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "didDisconnect":Z
    .end local v18    # "netId":I
    .end local v37    # "updatedExisting":Z
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 8092
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20002(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8093
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 8094
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v7, :cond_35

    .line 8095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " my state "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$20100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3100()I

    move-result v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25008

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8103
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v43

    invoke-direct {v0, v7}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20002(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8104
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    .line 8105
    .local v20, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SAVE_NETWORK id="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " config="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " nid="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " supstate="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " my state "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$20200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    const/16 v43, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v26

    .line 8112
    .restart local v26    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v42

    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_3a

    .line 8113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v42

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_37

    .line 8114
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v42

    if-eqz v42, :cond_36

    .line 8118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Reconfiguring IP on connection"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8123
    :cond_36
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v42

    if-eqz v42, :cond_37

    .line 8124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Reconfiguring proxy on connection"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2008c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 8128
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25009

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8129
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$200()Z

    move-result v42

    if-eqz v42, :cond_38

    .line 8130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Success save network nid="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8134
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$17600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v43

    monitor-enter v43

    .line 8140
    :try_start_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    const v44, 0x25007

    move/from16 v0, v42

    move/from16 v1, v44

    if-ne v0, v1, :cond_39

    const/16 v38, 0x1

    .line 8141
    .local v38, "user":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v42

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v44

    const/16 v45, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v44

    move/from16 v2, v38

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 8143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    .line 8144
    monitor-exit v43
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 8145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_3

    .line 8146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkIfEapNetworkChanged(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$18000(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    .line 8140
    .end local v38    # "user":Z
    :cond_39
    const/16 v38, 0x0

    goto :goto_d

    .line 8144
    :catchall_2
    move-exception v42

    :try_start_5
    monitor-exit v43
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v42

    .line 8149
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Failed to save network"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3100()I

    move-result v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25008

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8157
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v20    # "nid":I
    .end local v26    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v35

    .line 8159
    .local v35, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v35, :cond_3d

    .line 8160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20502(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8164
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v42

    if-eqz v42, :cond_3e

    .line 8165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_3b

    .line 8166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 8167
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3b

    .line 8168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanForWeakSignal:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8172
    :cond_3b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastExplicitNetworkId:I
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3c

    .line 8173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, -0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastExplicitNetworkId:I
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$3902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v42

    const v43, 0x25004

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(II)V

    .line 8177
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25006

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8162
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v43

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20502(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_e

    .line 8179
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Failed to forget network"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25005

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8185
    .end local v35    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_3f

    .line 8186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanForWeakSignal:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->disableLastNetwork()V
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$20600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8190
    :cond_3f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/net/wifi/WpsInfo;

    .line 8192
    .local v40, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v40

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v42, v0

    packed-switch v42, :pswitch_data_0

    .line 8214
    new-instance v41, Landroid/net/wifi/WpsResult;

    sget-object v42, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v41 .. v42}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 8215
    .local v41, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Invalid setup for WPS"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8218
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    const/16 v43, -0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8220
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v42, v0

    sget-object v43, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_43

    .line 8221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500b

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move-object/from16 v3, v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 8222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8194
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v41

    .line 8195
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_f

    .line 8198
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-eqz v42, :cond_42

    .line 8199
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    if-nez v42, :cond_41

    .line 8200
    :cond_40
    const-string v42, "WifiStateMachine"

    const-string v43, "Invalid pin code."

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0xa

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8202
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 8204
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v43, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8208
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v41

    .line 8209
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_f

    .line 8211
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v41

    .line 8212
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_f

    .line 8224
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Failed to start WPS with config "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v40 .. v40}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8229
    .end local v40    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_1d
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v42

    if-eqz v42, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Network connection established"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8230
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_45

    .line 8231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectOperation:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8233
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$3902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6102(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 8238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 8240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$21000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8253
    :sswitch_1e
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v42

    if-eqz v42, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8254
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10400(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$14600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$21100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8258
    :sswitch_1f
    const-string v42, "WifiStateMachine"

    const-string v43, "WAPI no certification!"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    new-instance v43, Landroid/content/Intent;

    const-string v44, "android.net.wifi.NO_CERTIFICATION"

    invoke-direct/range {v43 .. v44}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v44, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v42 .. v44}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 8262
    :sswitch_20
    const-string v42, "WifiStateMachine"

    const-string v43, "EAP-FAST new pac updated!"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    new-instance v43, Landroid/content/Intent;

    const-string v44, "android.net.wifi.NEW_PAC_UPDATED"

    invoke-direct/range {v43 .. v44}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v44, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v42 .. v44}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 8266
    :sswitch_21
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkCtpppoe:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$4000()Z

    move-result v42

    if-eqz v42, :cond_47

    .line 8267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->stopPPPoE()V
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$21200(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2501b

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8270
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2501c

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8275
    :sswitch_22
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-nez v42, :cond_48

    .line 8276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8279
    :cond_48
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/net/wifi/WpsInfo;

    .line 8280
    .restart local v40    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "nfc_pw"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 8281
    .local v19, "nfcPw":I
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "START_WPS_REG, nfcPw:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8282
    move-object/from16 v0, v40

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v42, v0

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_4f

    .line 8283
    if-nez v19, :cond_49

    .line 8284
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    if-nez v42, :cond_4a

    .line 8285
    const-string v42, "WifiStateMachine"

    const-string v43, "Invalid pin code."

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0xa

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8287
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 8290
    :cond_49
    const-string v42, "WifiStateMachine"

    const-string v43, "Using pin from NFC."

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8291
    const-string v42, "nfc-pw"

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 8293
    :cond_4a
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_4b

    .line 8294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->getBytes()[B

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$21300(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v15

    .line 8295
    .local v15, "hexStr":Ljava/lang/String;
    if-eqz v15, :cond_4d

    .line 8296
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    .line 8301
    .end local v15    # "hexStr":Ljava/lang/String;
    :cond_4b
    :goto_10
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_4c

    .line 8302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->getBytes()[B

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->bytesToHexString([B)Ljava/lang/String;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$21300(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v15

    .line 8303
    .restart local v15    # "hexStr":Ljava/lang/String;
    if-eqz v15, :cond_4e

    .line 8304
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    .line 8309
    .end local v15    # "hexStr":Ljava/lang/String;
    :cond_4c
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsReg(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v41

    .line 8310
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v43, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8315
    :goto_12
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v42, v0

    sget-object v43, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_50

    .line 8316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500b

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move-object/from16 v3, v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 8317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8298
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    .restart local v15    # "hexStr":Ljava/lang/String;
    :cond_4d
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    goto/16 :goto_10

    .line 8306
    :cond_4e
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    goto :goto_11

    .line 8312
    .end local v15    # "hexStr":Ljava/lang/String;
    :cond_4f
    new-instance v41, Landroid/net/wifi/WpsResult;

    sget-object v42, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v41 .. v42}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 8313
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    const-string v42, "WifiStateMachine"

    const-string v43, "Invalid setup for WPS REG"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 8319
    :cond_50
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Failed to start WPS REG with config "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v40 .. v40}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8324
    .end local v19    # "nfcPw":I
    .end local v40    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_23
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-nez v42, :cond_51

    .line 8325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8328
    :cond_51
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/net/wifi/WpsInfo;

    .line 8329
    .restart local v40    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "START_WPS_ER, mEnrolleeUuid:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", mEnrolleeBssid:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeBssid:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8330
    move-object/from16 v0, v40

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v42, v0

    packed-switch v42, :pswitch_data_1

    .line 8352
    :pswitch_3
    new-instance v41, Landroid/net/wifi/WpsResult;

    sget-object v42, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v41 .. v42}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 8353
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    const-string v42, "WifiStateMachine"

    const-string v43, "Invalid setup for WPS ER!"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8356
    :goto_13
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v42, v0

    sget-object v43, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_55

    .line 8357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500b

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move-object/from16 v3, v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 8358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$21600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8363
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7102(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeBssid:Ljava/lang/String;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 8332
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_52

    .line 8333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->startWpsErPbc(Ljava/lang/String;)Landroid/net/wifi/WpsResult;

    move-result-object v41

    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_13

    .line 8335
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForEnrollee:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsErMethod:I
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v42

    const/16 v43, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    const-wide/32 v46, 0x1d4c0

    add-long v44, v44, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mClearWaitFlagIntent:Landroid/app/PendingIntent;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$21500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v46

    invoke-virtual/range {v42 .. v46}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 8339
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 8343
    :pswitch_5
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    if-nez v42, :cond_54

    .line 8344
    :cond_53
    const-string v42, "WifiStateMachine"

    const-string v43, "Invalid pin code."

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0xa

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8346
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 8348
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->startWpsErPinAny(Ljava/lang/String;)Landroid/net/wifi/WpsResult;

    move-result-object v41

    .line 8350
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_13

    .line 8360
    :cond_55
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Failed to start WPS ER with config "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v40 .. v40}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_14

    .line 8367
    .end local v40    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_24
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-nez v42, :cond_56

    .line 8368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8371
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    const/16 v44, 0x1

    move/from16 v0, v42

    move/from16 v1, v44

    if-ne v0, v1, :cond_57

    const/16 v42, 0x1

    :goto_15
    move-object/from16 v0, v43

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcToken(Z)Ljava/lang/String;

    move-result-object v23

    .line 8372
    .local v23, "passwordToken":Ljava/lang/String;
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Item22: GET_WPS_PIN_AND_CONNECT, passwordToken:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8373
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_59

    const-string v42, "UNKNOWN COMMAND"

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_59

    .line 8374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendPinToNfcBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$21700(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->startWpsNfc()Landroid/net/wifi/WpsResult;

    move-result-object v41

    .line 8376
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v42, v0

    sget-object v43, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_58

    .line 8377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500b

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move-object/from16 v3, v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 8378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$21800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8371
    .end local v23    # "passwordToken":Ljava/lang/String;
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_57
    const/16 v42, 0x0

    goto/16 :goto_15

    .line 8380
    .restart local v23    # "passwordToken":Ljava/lang/String;
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_58
    const-string v42, "WifiStateMachine"

    const-string v43, "Failed to start WPS NFC!"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8384
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_59
    const-string v42, "WifiStateMachine"

    const-string v43, "Failed to get password token!"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8389
    .end local v23    # "passwordToken":Ljava/lang/String;
    :sswitch_25
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-nez v42, :cond_5a

    .line 8390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2502d

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8393
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    const/16 v44, 0x1

    move/from16 v0, v42

    move/from16 v1, v44

    if-ne v0, v1, :cond_5b

    const/16 v42, 0x1

    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApUuid:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move/from16 v1, v42

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->wpsErNfcConfigToken(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8394
    .local v9, "credential":Ljava/lang/String;
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Item26: GET_WPS_CRED_AND_CONNECT, credential:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8395
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_5c

    const-string v42, "UNKNOWN COMMAND"

    move-object/from16 v0, v42

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_5c

    .line 8396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendCredentialToNfcBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$21900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2502e

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8393
    .end local v9    # "credential":Ljava/lang/String;
    :cond_5b
    const/16 v42, 0x0

    goto :goto_16

    .line 8399
    .restart local v9    # "credential":Ljava/lang/String;
    :cond_5c
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Failed to get WPS credential, mErApUuid:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApUuid:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2502d

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8404
    .end local v9    # "credential":Ljava/lang/String;
    :sswitch_26
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-nez v42, :cond_5d

    .line 8405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25033

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8408
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverToken(Z)Ljava/lang/String;

    move-result-object v23

    .line 8409
    .restart local v23    # "passwordToken":Ljava/lang/String;
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Item28: get requester token, passwordToken: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8410
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_5e

    const-string v42, "UNKNOWN COMMAND"

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_5e

    .line 8411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendRequesterActionToNfc(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$22000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "wps_nfc_pubkey"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 8413
    .local v17, "keyType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcCfgKeyType(I)Z

    .line 8414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25034

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8416
    .end local v17    # "keyType":I
    :cond_5e
    const-string v42, "WifiStateMachine"

    const-string v43, "Failed to get requester token!"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25033

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8421
    .end local v23    # "passwordToken":Ljava/lang/String;
    :sswitch_27
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-nez v42, :cond_5f

    .line 8422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25030

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8425
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverToken(Z)Ljava/lang/String;

    move-result-object v23

    .line 8426
    .restart local v23    # "passwordToken":Ljava/lang/String;
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Item29: get selector token, passwordToken: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8427
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_60

    const-string v42, "UNKNOWN COMMAND"

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_60

    .line 8428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForHrToken:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$4102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    const v43, 0x200ba

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 8430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendSelectorActionToNfc(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$22100(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "wps_nfc_pubkey"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 8432
    .restart local v17    # "keyType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcCfgKeyType(I)Z

    .line 8433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25031

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8435
    .end local v17    # "keyType":I
    :cond_60
    const-string v42, "WifiStateMachine"

    const-string v43, "Failed to get selector token!"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25030

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8440
    .end local v23    # "passwordToken":Ljava/lang/String;
    :sswitch_28
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-nez v42, :cond_61

    .line 8441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25039

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8444
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendReadCredRequestToNfcBroadcast()V
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$22200(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2503a

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8448
    :sswitch_29
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-nez v42, :cond_62

    .line 8449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25036

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8452
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendReadPinRequestToNfcBroadcast()V
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$22300(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x25037

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 8456
    :sswitch_2a
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-eqz v42, :cond_3

    .line 8459
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 8460
    .local v14, "event":Ljava/lang/String;
    const-string v42, " "

    move-object/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 8461
    .local v36, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v42, v0

    const/16 v43, 0x3

    move/from16 v0, v42

    move/from16 v1, v43

    if-lt v0, v1, :cond_65

    .line 8462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    aget-object v43, v36, v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7102(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x2

    aget-object v43, v36, v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeBssid:Ljava/lang/String;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8464
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "WPS_ER_ENROLLEE_ADD_EVENT, mEnrolleeUuid:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", mEnrolleeBssid:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeBssid:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", mWpsErMethod:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsErMethod:I
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", mWaitingForEnrollee:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForEnrollee:Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForEnrollee:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_3

    .line 8468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForEnrollee:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mClearWaitFlagIntent:Landroid/app/PendingIntent;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$21500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 8470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsErMethod:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v42

    if-nez v42, :cond_63

    .line 8471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->startWpsErPbc(Ljava/lang/String;)Landroid/net/wifi/WpsResult;

    move-result-object v41

    .line 8475
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :goto_17
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v42, v0

    sget-object v43, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_64

    .line 8476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$22400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8480
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeUuid:Ljava/lang/String;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7102(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnrolleeBssid:Ljava/lang/String;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 8473
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_63
    new-instance v41, Landroid/net/wifi/WpsResult;

    sget-object v42, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v41 .. v42}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_17

    .line 8478
    :cond_64
    const-string v42, "WifiStateMachine"

    const-string v43, "Failed to start WPS ER!"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 8484
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_65
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "WPS_ER_ENROLLEE_ADD_EVENT format error, event:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8488
    .end local v14    # "event":Ljava/lang/String;
    .end local v36    # "tokens":[Ljava/lang/String;
    :sswitch_2b
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-eqz v42, :cond_3

    .line 8491
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 8492
    .restart local v14    # "event":Ljava/lang/String;
    const-string v42, " "

    move-object/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 8493
    .restart local v36    # "tokens":[Ljava/lang/String;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v42, v0

    const/16 v43, 0x3

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_66

    .line 8494
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "WPS_ER_AP_ADD_EVENT format error, event:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8497
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "nfc_pw"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 8498
    .restart local v19    # "nfcPw":I
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "WPS_ER_AP_ADD_EVENT, erApUuid:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x1

    aget-object v44, v36, v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", erApBssid:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x2

    aget-object v44, v36, v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", mErApPin:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", mLastBssid:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", nfcPw:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8500
    const/16 v42, 0x1

    aget-object v42, v36, v42

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_3

    const/16 v42, 0x2

    aget-object v42, v36, v42

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_3

    const/16 v42, 0x2

    aget-object v42, v36, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_3

    .line 8501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    aget-object v43, v36, v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mErApUuid:Ljava/lang/String;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7302(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8502
    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_3

    .line 8503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApUuid:Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->wpsErLearn(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 8508
    .end local v14    # "event":Ljava/lang/String;
    .end local v19    # "nfcPw":I
    .end local v36    # "tokens":[Ljava/lang/String;
    :sswitch_2c
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-eqz v42, :cond_3

    .line 8511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcTagRead(Ljava/lang/String;)Z

    .line 8512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v42

    if-nez v42, :cond_67

    .line 8513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    goto/16 :goto_1

    .line 8515
    :cond_67
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "M_CMD_START_WPS_NFC_TAG_READ, mErApPin:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mErApPin:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8519
    :sswitch_2d
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-nez v42, :cond_68

    .line 8520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8523
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->nfcRxHandoverToken(Ljava/lang/String;Z)Z

    .line 8524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->startWpsNfc()Landroid/net/wifi/WpsResult;

    move-result-object v41

    .line 8525
    .restart local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v42, v0

    sget-object v43, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_69

    .line 8526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500b

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move-object/from16 v3, v41

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 8527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$20700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$22500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8529
    :cond_69
    const-string v42, "WifiStateMachine"

    const-string v43, "Failed to start WPS NFC!"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const v43, 0x2500c

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8534
    .end local v41    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_2e
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6900()Z

    move-result v42

    if-eqz v42, :cond_3

    .line 8537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->nfcRxHandoverToken(Ljava/lang/String;Z)Z

    .line 8538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForHrToken:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$4102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 8545
    :sswitch_2f
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "M_CMD_SET_NETWORK_AUTO_CONNECTABLE, NetworkId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", AutoConnectable: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v42, v0

    const/16 v45, 0x1

    move/from16 v0, v42

    move/from16 v1, v45

    if-ne v0, v1, :cond_6a

    const/16 v42, 0x1

    :goto_19
    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkAutoConnectable(IZ)Z

    move-result v42

    if-nez v42, :cond_6b

    .line 8549
    const-string v42, "WifiStateMachine"

    const-string v43, "M_CMD_SET_NETWORK_AUTO_CONNECTABLE, setNetworkAutoConnectable() failed"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const/16 v44, -0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8547
    :cond_6a
    const/16 v42, 0x0

    goto :goto_19

    .line 8554
    :cond_6b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_6e

    .line 8556
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Set Auto Connectable to TRUE, NetworkId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", currentNetworkId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_6d

    .line 8560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v42

    if-nez v42, :cond_6c

    .line 8562
    const-string v42, "WifiStateMachine"

    const-string v43, "Set Auto Connectable to TRUE, Auto Connect is NOT allowed, Ignore enable operation"

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8568
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->getDisconnectNetworks()Ljava/util/List;

    move-result-object v12

    .line 8570
    .restart local v12    # "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_6d

    .line 8572
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Set Auto Connectable to TRUE, Network "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " is disconnected actively, ignore the enable network operation!"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8579
    .end local v12    # "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    const-string v44, "any"

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 8581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v42

    if-nez v42, :cond_6f

    .line 8583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3100()I

    move-result v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const/16 v44, -0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8590
    :cond_6e
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Set Auto Connectable to FALSE, NetworkId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", currentNetworkId: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_6f

    .line 8595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_71

    .line 8597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_6f

    .line 8599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->addDisconnectNetwork(I)V

    .line 8610
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_72

    .line 8612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v42

    if-eqz v42, :cond_70

    .line 8617
    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8604
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const/16 v44, -0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8622
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7586
    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_5
        0x20035 -> :sswitch_6
        0x20036 -> :sswitch_7
        0x20037 -> :sswitch_8
        0x20038 -> :sswitch_b
        0x20039 -> :sswitch_c
        0x2003a -> :sswitch_d
        0x2003b -> :sswitch_e
        0x2003e -> :sswitch_11
        0x20049 -> :sswitch_12
        0x2004a -> :sswitch_13
        0x2004b -> :sswitch_14
        0x20062 -> :sswitch_a
        0x2008e -> :sswitch_15
        0x2008f -> :sswitch_17
        0x20091 -> :sswitch_16
        0x20092 -> :sswitch_1a
        0x200b7 -> :sswitch_2c
        0x200b8 -> :sswitch_2d
        0x200b9 -> :sswitch_2e
        0x200fa -> :sswitch_2f
        0x2300c -> :sswitch_4
        0x24003 -> :sswitch_1d
        0x24004 -> :sswitch_1e
        0x24006 -> :sswitch_3
        0x24007 -> :sswitch_1
        0x2400d -> :sswitch_2
        0x2400e -> :sswitch_2
        0x2400f -> :sswitch_f
        0x24010 -> :sswitch_10
        0x2402b -> :sswitch_0
        0x24050 -> :sswitch_1f
        0x24051 -> :sswitch_20
        0x24053 -> :sswitch_2a
        0x24054 -> :sswitch_2b
        0x25001 -> :sswitch_18
        0x25004 -> :sswitch_1b
        0x25007 -> :sswitch_19
        0x2500a -> :sswitch_1c
        0x25011 -> :sswitch_9
        0x2501a -> :sswitch_21
        0x25029 -> :sswitch_22
        0x2502a -> :sswitch_23
        0x2502b -> :sswitch_24
        0x2502c -> :sswitch_25
        0x2502f -> :sswitch_27
        0x25032 -> :sswitch_26
        0x25035 -> :sswitch_29
        0x25038 -> :sswitch_28
    .end sparse-switch

    .line 8192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 8330
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
