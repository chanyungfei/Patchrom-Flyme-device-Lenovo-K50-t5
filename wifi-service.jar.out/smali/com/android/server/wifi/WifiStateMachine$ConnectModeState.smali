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
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 8569
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 8573
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8574
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->connectScanningService()V

    .line 8572
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 68
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 8586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->getClass()Ljava/lang/Class;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move-object/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 8588
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    sparse-switch v63, :sswitch_data_0

    .line 9902
    const/16 v63, 0x0

    return v63

    .line 8590
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get145(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    move-result-object v63

    const/16 v64, 0x1

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiLogger;->captureBugReportData(I)V

    .line 8591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8592
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 8593
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-eqz v63, :cond_1

    .line 8595
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get123(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    .line 8597
    :cond_1
    if-eqz v6, :cond_2

    .line 8599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v64

    monitor-enter v64

    .line 8600
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v65

    .line 8601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v66

    const/16 v67, 0x0

    .line 8600
    move-object/from16 v0, v65

    move/from16 v1, v66

    move/from16 v2, v67

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    move-result v65

    move-object/from16 v0, v63

    move/from16 v1, v65

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v64

    .line 8604
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v63

    const v64, 0x2402b

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 9904
    .end local v6    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_0
    const/16 v63, 0x1

    return v63

    .line 8599
    .restart local v6    # "bssid":Ljava/lang/String;
    :catchall_0
    move-exception v63

    monitor-exit v64

    throw v63

    .line 8607
    .end local v6    # "bssid":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get145(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    move-result-object v63

    const/16 v64, 0x2

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiLogger;->captureBugReportData(I)V

    .line 8608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v63

    const v64, 0x24007

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 8611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v63

    if-eqz v63, :cond_3

    .line 8612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v63

    const/16 v64, 0x1

    invoke-interface/range {v63 .. v64}, Lcom/mediatek/common/wifi/IWifiFwkExt;->setNotificationVisible(Z)V

    goto :goto_0

    .line 8618
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    .line 8619
    .local v49, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    const v64, 0x2400d

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_4

    .line 8620
    const-string/jumbo v21, "temp-disabled"

    .line 8621
    .local v21, "en":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "ConnectModeState SSID state="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " nid="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8622
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v65, v0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 8621
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8622
    const-string/jumbo v65, " ["

    .line 8621
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8622
    const-string/jumbo v65, "]"

    .line 8621
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v64

    monitor-enter v64

    .line 8624
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v65

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v66, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    .line 8625
    const v67, 0x2400e

    .line 8624
    move/from16 v0, v63

    move/from16 v1, v67

    if-ne v0, v1, :cond_5

    const/16 v63, 0x1

    .line 8625
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v67, v0

    invoke-static/range {v67 .. v67}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v67

    .line 8624
    move-object/from16 v0, v65

    move/from16 v1, v66

    move/from16 v2, v63

    move-object/from16 v3, v49

    move-object/from16 v4, v67

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v64

    goto/16 :goto_0

    .line 8620
    .end local v21    # "en":Ljava/lang/String;
    :cond_4
    const-string/jumbo v21, "re-enabled"

    .restart local v21    # "en":Ljava/lang/String;
    goto/16 :goto_1

    .line 8624
    :cond_5
    const/16 v63, 0x0

    goto :goto_2

    .line 8623
    :catchall_1
    move-exception v63

    monitor-exit v64

    throw v63

    .line 8629
    .end local v21    # "en":Ljava/lang/String;
    .end local v49    # "substr":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v47

    .line 8632
    .local v47, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v47 .. v47}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v63

    if-nez v63, :cond_7

    .line 8633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v63

    sget-object v64, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-eq v0, v1, :cond_6

    .line 8634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8636
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Detected an interface down, restart driver"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2000d

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 8647
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-nez v63, :cond_9

    sget-object v63, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_9

    .line 8648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v63

    sget-object v64, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-eq v0, v1, :cond_9

    .line 8649
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v63

    if-eqz v63, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8650
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8657
    :cond_9
    sget-object v63, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_3

    .line 8658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v63

    if-eqz v63, :cond_3

    .line 8659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/net/IpReachabilityMonitor;->probeAll()V

    goto/16 :goto_0

    .line 8664
    .end local v47    # "state":Landroid/net/wifi/SupplicantState;
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_a

    .line 8665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 8666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set71(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 8668
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 8669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set71(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 8673
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 8675
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    .line 8676
    const/16 v65, 0x0

    .line 8675
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v63

    if-nez v63, :cond_b

    .line 8677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Not authorized to update network  config="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8678
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v65, v0

    .line 8677
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8679
    const-string/jumbo v65, " cnid="

    .line 8677
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8679
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 8677
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8680
    const-string/jumbo v65, " uid="

    .line 8677
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8680
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    .line 8677
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, -0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8685
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v41

    .line 8686
    .local v41, "res":I
    if-gez v41, :cond_d

    .line 8687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8713
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x20034

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v41

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8689
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    .line 8690
    .local v13, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v13, :cond_e

    if-eqz v10, :cond_e

    .line 8691
    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v63, v0

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_e

    .line 8692
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v63, v0

    const/16 v64, 0x2

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_e

    .line 8696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 8698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v64, 0x0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 8701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    invoke-static/range {v63 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, 0x1

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 8706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, -0x3

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    invoke-virtual/range {v63 .. v67}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 8709
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_c

    .line 8710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_3

    .line 8716
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v41    # "res":I
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 8717
    .local v31, "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    .line 8718
    const/16 v65, 0x0

    .line 8717
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v31

    move/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v63

    if-nez v63, :cond_f

    .line 8719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Not authorized to remove network  cnid="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8721
    const-string/jumbo v65, " uid="

    .line 8719
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8721
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    .line 8719
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, -0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8726
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v36

    .line 8727
    .local v36, "ok":Z
    if-nez v36, :cond_10

    .line 8728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8730
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_11

    .line 8731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 8732
    if-eqz v36, :cond_11

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_11

    .line 8733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8737
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v65, v0

    if-eqz v36, :cond_12

    const/16 v63, 0x1

    :goto_4
    move-object/from16 v0, v64

    move-object/from16 v1, p1

    move/from16 v2, v65

    move/from16 v3, v63

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_12
    const/16 v63, -0x1

    goto :goto_4

    .line 8740
    .end local v31    # "netId":I
    .end local v36    # "ok":Z
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_14

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v63, v0

    if-nez v63, :cond_14

    .line 8741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v63

    if-nez v63, :cond_13

    .line 8742
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Shouldn\'t auto connect, ignore the enable network operation!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, 0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8746
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->getDisconnectNetworks()Ljava/util/List;

    move-result-object v17

    .line 8747
    .local v17, "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v17

    move-object/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_14

    .line 8748
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Network "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " is disconnected actively, ignore the enable network operation!"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, 0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8754
    .end local v17    # "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v63, v0

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_15

    const/16 v16, 0x1

    .line 8755
    .local v16, "disableOthers":Z
    :goto_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 8756
    .restart local v31    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 8757
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v10, :cond_16

    .line 8758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "No network with id = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, -0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8754
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "disableOthers":Z
    .end local v31    # "netId":I
    :cond_15
    const/16 v16, 0x0

    .restart local v16    # "disableOthers":Z
    goto :goto_5

    .line 8768
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v31    # "netId":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get139(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v63

    .line 8769
    const/16 v64, 0x1

    const/16 v65, 0x0

    .line 8768
    move-object/from16 v0, v63

    move/from16 v1, v31

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 8770
    if-eqz v16, :cond_17

    .line 8773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    invoke-static/range {v63 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, 0x1

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 8781
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "any"

    move-object/from16 v0, v63

    move/from16 v1, v31

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 8783
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v56, v0

    .line 8784
    .local v56, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    move/from16 v2, v16

    move/from16 v3, v56

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    move-result v36

    .line 8785
    .restart local v36    # "ok":Z
    if-nez v36, :cond_18

    .line 8786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8788
    :cond_18
    if-eqz v36, :cond_1a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v63, v0

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1a

    .line 8789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_19

    .line 8790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 8791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8794
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set48(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v63

    .line 8797
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    .line 8796
    const v65, 0x25001

    move-object/from16 v0, v63

    move/from16 v1, v65

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(II)V

    .line 8800
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v65, v0

    if-eqz v36, :cond_1b

    const/16 v63, 0x1

    :goto_6
    move-object/from16 v0, v64

    move-object/from16 v1, p1

    move/from16 v2, v65

    move/from16 v3, v63

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_1b
    const/16 v63, -0x1

    goto :goto_6

    .line 8803
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "disableOthers":Z
    .end local v31    # "netId":I
    .end local v36    # "ok":Z
    .end local v56    # "uid":I
    :sswitch_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v50

    .line 8804
    .local v50, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v64

    sub-long v64, v50, v64

    const-wide/32 v66, 0x927c0

    cmp-long v63, v64, v66

    if-lez v63, :cond_3

    .line 8805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 8806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set47(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_0

    .line 8810
    .end local v50    # "time":J
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    .line 8811
    const/16 v65, 0x5

    .line 8810
    invoke-virtual/range {v63 .. v65}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v63

    if-eqz v63, :cond_1d

    .line 8812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_1c

    .line 8813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->addDisconnectNetwork(I)V

    .line 8814
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1c

    .line 8815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8819
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25013

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 8821
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25012

    .line 8823
    const/16 v65, 0x0

    .line 8822
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8827
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 8828
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_3

    .line 8829
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_3

    .line 8831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x20049

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 8836
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->blackListBssid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8839
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->clearBssidBlacklist()V

    goto/16 :goto_0

    .line 8842
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v36

    .line 8844
    .restart local v36    # "ok":Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v63

    if-eqz v63, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "did save config "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8845
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    if-eqz v36, :cond_1f

    const/16 v63, 0x1

    :goto_7
    const v65, 0x2003a

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    move/from16 v2, v65

    move/from16 v3, v63

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8849
    const-string/jumbo v63, "backup"

    invoke-static/range {v63 .. v63}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v63

    .line 8848
    invoke-static/range {v63 .. v63}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v24

    .line 8850
    .local v24, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v24, :cond_3

    .line 8852
    :try_start_2
    const-string/jumbo v63, "com.android.providers.settings"

    move-object/from16 v0, v24

    move-object/from16 v1, v63

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 8853
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 8845
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v24    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_1f
    const/16 v63, -0x1

    goto :goto_7

    .line 8859
    .end local v36    # "ok":Z
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    .line 8860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v65

    .line 8859
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 8863
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Received SUP_REQUEST_IDENTITY"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8864
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    .line 8865
    .local v32, "networkId":I
    const/16 v26, 0x0

    .line 8866
    .local v26, "identitySent":Z
    const/16 v19, -0x1

    .line 8868
    .local v19, "eapMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get155(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    if-eqz v63, :cond_20

    .line 8869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get155(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v63, v0

    if-eqz v63, :cond_20

    .line 8870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get155(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v19

    .line 8874
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get155(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    if-eqz v63, :cond_23

    .line 8875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get155(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v63, v0

    move/from16 v0, v63

    move/from16 v1, v32

    if-ne v0, v1, :cond_23

    .line 8876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get155(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v63, v0

    .line 8877
    const/16 v64, 0x3

    .line 8876
    invoke-virtual/range {v63 .. v64}, Ljava/util/BitSet;->get(I)Z

    move-result v63

    .line 8874
    if-eqz v63, :cond_23

    .line 8878
    const/16 v63, 0x4

    move/from16 v0, v19

    move/from16 v1, v63

    if-eq v0, v1, :cond_21

    .line 8879
    const/16 v63, 0x5

    move/from16 v0, v19

    move/from16 v1, v63

    if-ne v0, v1, :cond_25

    .line 8882
    :cond_21
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    const-string/jumbo v64, "phone"

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    .line 8881
    check-cast v52, Landroid/telephony/TelephonyManager;

    .line 8883
    .local v52, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v52, :cond_27

    .line 8884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "TelephonyManager != null"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8887
    const-string/jumbo v30, ""

    .line 8888
    .local v30, "mccMnc":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v63

    const/16 v64, 0x2

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_26

    .line 8889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get155(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v64

    move-object/from16 v0, v64

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap20(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)I

    move-result v45

    .line 8890
    .local v45, "slotId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "simSlot: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get155(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v65

    move-object/from16 v0, v65

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v45

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v48

    .line 8892
    .local v48, "subId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "subId: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8893
    move-object/from16 v0, v52

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v27

    .line 8894
    .local v27, "imsi":Ljava/lang/String;
    move-object/from16 v0, v52

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v63

    const/16 v64, 0x5

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_22

    .line 8895
    move-object/from16 v0, v52

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v30

    .line 8903
    .end local v45    # "slotId":I
    .end local v48    # "subId":I
    :cond_22
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "imsi: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "mccMnc: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 8909
    .local v25, "identity":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v63

    if-nez v63, :cond_23

    .line 8910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v32

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->simIdentityResponse(ILjava/lang/String;)Z

    .line 8911
    const/16 v26, 0x1

    .line 8917
    .end local v25    # "identity":Ljava/lang/String;
    .end local v27    # "imsi":Ljava/lang/String;
    .end local v30    # "mccMnc":Ljava/lang/String;
    .end local v52    # "tm":Landroid/telephony/TelephonyManager;
    :cond_23
    :goto_a
    if-nez v26, :cond_3

    .line 8919
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/lang/String;

    .line 8920
    .local v46, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get155(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    if-eqz v63, :cond_24

    if-eqz v46, :cond_24

    .line 8921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get155(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v63, v0

    if-eqz v63, :cond_24

    .line 8922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get155(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "\""

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, "\""

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    .line 8920
    if-eqz v63, :cond_24

    .line 8923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 8924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get155(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v64

    move-object/from16 v0, v64

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v64, v0

    .line 8925
    const-string/jumbo v65, "AUTH_FAILED no identity"

    .line 8924
    const/16 v66, 0x0

    .line 8925
    const/16 v67, 0x0

    .line 8923
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v66

    move-object/from16 v3, v65

    move-object/from16 v4, v67

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 8929
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 8930
    const/16 v64, -0x1

    .line 8929
    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-nez v63, :cond_28

    .line 8932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_0

    .line 8880
    .end local v46    # "ssid":Ljava/lang/String;
    :cond_25
    const/16 v63, 0x6

    move/from16 v0, v19

    move/from16 v1, v63

    if-ne v0, v1, :cond_23

    goto/16 :goto_8

    .line 8898
    .restart local v30    # "mccMnc":Ljava/lang/String;
    .restart local v52    # "tm":Landroid/telephony/TelephonyManager;
    :cond_26
    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v27

    .line 8899
    .restart local v27    # "imsi":Ljava/lang/String;
    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v63

    const/16 v64, 0x5

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_22

    .line 8900
    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_9

    .line 8914
    .end local v27    # "imsi":Ljava/lang/String;
    .end local v30    # "mccMnc":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "TelephonyManager is null"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 8934
    .end local v52    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v46    # "ssid":Ljava/lang/String;
    :cond_28
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Skip SUP_REQUEST_IDENTITY disconnect for customization!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8939
    .end local v19    # "eapMethod":I
    .end local v26    # "identitySent":Z
    .end local v32    # "networkId":I
    .end local v46    # "ssid":Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Received SUP_REQUEST_SIM_AUTH"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8940
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .line 8941
    .local v40, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v40, :cond_2b

    .line 8942
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v63, v0

    const/16 v64, 0x4

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_29

    .line 8943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_0

    .line 8944
    :cond_29
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v63, v0

    const/16 v64, 0x5

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_2a

    .line 8945
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v63, v0

    const/16 v64, 0x6

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_3

    .line 8946
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_0

    .line 8949
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Invalid sim auth request"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8953
    .end local v40    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    .line 8954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/WifiConfigStore;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v65

    .line 8953
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 8957
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v65, v0

    .line 8958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v66

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v66

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    .line 8957
    move-object/from16 v0, v64

    move-object/from16 v1, p1

    move/from16 v2, v65

    move-object/from16 v3, v63

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 8962
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 8963
    const/16 v64, -0x1

    .line 8962
    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_0

    .line 8967
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get139(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    goto/16 :goto_0

    .line 8970
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    invoke-static/range {v63 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_0

    .line 8974
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    move-result v63

    if-eqz v63, :cond_3

    .line 8975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Reconnecting to give a chance to un-connected TLS networks"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 8977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_2c

    .line 8978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8980
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    invoke-static/range {v63 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_0

    .line 8985
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8986
    const/16 v63, 0x1

    return v63

    .line 8988
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_30

    .line 9001
    :cond_2d
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 9002
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "LOADED"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_32

    .line 9003
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v59

    .line 9004
    .local v59, "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "EAP value:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9005
    const/16 v63, 0x4

    move/from16 v0, v59

    move/from16 v1, v63

    if-eq v0, v1, :cond_2e

    .line 9006
    const/16 v63, 0x5

    move/from16 v0, v59

    move/from16 v1, v63

    if-ne v0, v1, :cond_31

    .line 9008
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "ABSENT"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_2f

    .line 9009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "LOCKED"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    .line 9008
    if-nez v63, :cond_2f

    .line 9010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "UNKNOWN"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    .line 9008
    if-eqz v63, :cond_34

    .line 9011
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "AUTO_CONNECT EAP-SIM AP, but card is "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9012
    const-string/jumbo v65, ", set autojoinStatus to "

    .line 9011
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9013
    const-string/jumbo v65, "AUTO_JOIN_DISABLED_EAP_SIM_CARD_ABSENT"

    .line 9011
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9014
    const-string/jumbo v65, ", drop this connect"

    .line 9011
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    .line 9018
    .local v20, "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    const/16 v63, 0xa2

    .line 9017
    move-object/from16 v0, v20

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto/16 :goto_0

    .line 8989
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v20    # "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v59    # "value":I
    :cond_30
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Skip CMD_AUTO_CONNECT for customization!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8990
    const/16 v63, 0x1

    return v63

    .line 9007
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v59    # "value":I
    :cond_31
    const/16 v63, 0x6

    move/from16 v0, v59

    move/from16 v1, v63

    if-eq v0, v1, :cond_2e

    .line 9027
    .end local v59    # "value":I
    :cond_32
    const/4 v15, 0x0

    .line 9028
    .local v15, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-eq v0, v1, :cond_33

    .line 9032
    const/4 v15, 0x1

    .line 9033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 9038
    :cond_33
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 9039
    .restart local v31    # "netId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v43, v0

    .line 9040
    .local v43, "roam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v65

    .line 9040
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9042
    const-string/jumbo v65, " my state "

    .line 9040
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v65

    .line 9040
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9043
    const-string/jumbo v65, " nid="

    .line 9040
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9043
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 9040
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9044
    const-string/jumbo v65, " roam="

    .line 9040
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9044
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 9040
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9045
    if-nez v10, :cond_35

    .line 9046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9020
    .end local v15    # "didDisconnect":Z
    .end local v31    # "netId":I
    .end local v43    # "roam":I
    .restart local v59    # "value":I
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "AUTO_CONNECT EAP-SIM AP, but modem is not ready, drop this connect"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9051
    .end local v59    # "value":I
    .restart local v15    # "didDisconnect":Z
    .restart local v31    # "netId":I
    .restart local v43    # "roam":I
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v31

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 9054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9055
    const-string/jumbo v65, " nid="

    .line 9054
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9055
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 9054
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v64, -0x1

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v42

    .line 9057
    .local v42, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v31

    .line 9058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9059
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 9058
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 9063
    if-nez v10, :cond_36

    .line 9064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "CMD_AUTO_CONNECT couldn\'t update the config, got null config"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9067
    :cond_36
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v63, v0

    move/from16 v0, v31

    move/from16 v1, v63

    if-eq v0, v1, :cond_37

    .line 9068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CMD_AUTO_CONNECT couldn\'t update the config, want nid="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9069
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 9068
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9069
    const-string/jumbo v65, " but got"

    .line 9068
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9069
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 9068
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9073
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v63

    if-nez v63, :cond_3

    .line 9075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v63, v0

    .line 9076
    const/16 v64, 0x2

    .line 9075
    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_38

    .line 9077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25002

    .line 9078
    const/16 v65, 0x9

    .line 9077
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9083
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v64, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v31

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 9087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v63

    if-eqz v63, :cond_3b

    .line 9088
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v29, v0

    .line 9090
    .local v29, "lastConnectUid":I
    :goto_b
    const/16 v53, 0x0

    .line 9091
    .local v53, "tmpResult":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_3c

    .line 9092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v64, 0x1

    move-object/from16 v0, v63

    move/from16 v1, v31

    move/from16 v2, v64

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    move-result v53

    .line 9098
    .local v53, "tmpResult":Z
    :goto_c
    if-eqz v53, :cond_42

    .line 9099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v63

    .line 9098
    if-eqz v63, :cond_42

    .line 9100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    invoke-static/range {v63 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set84(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 9103
    if-eqz v10, :cond_39

    .line 9104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v63

    if-eqz v63, :cond_3d

    .line 9120
    :cond_39
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v43

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v63

    if-nez v63, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-eqz v63, :cond_3e

    .line 9122
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get102(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9088
    .end local v29    # "lastConnectUid":I
    .end local v53    # "tmpResult":Z
    :cond_3b
    const/16 v29, -0x1

    .restart local v29    # "lastConnectUid":I
    goto/16 :goto_b

    .line 9094
    .local v53, "tmpResult":Z
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 9095
    const/16 v64, 0x0

    .line 9094
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v29

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v53

    .local v53, "tmpResult":Z
    goto/16 :goto_c

    .line 9117
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 9118
    const/16 v64, -0x1

    .line 9117
    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto :goto_d

    .line 9123
    :cond_3e
    if-eqz v15, :cond_3f

    .line 9124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9127
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get108(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-nez v63, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-eqz v63, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-eqz v63, :cond_41

    .line 9128
    const v14, 0xea60

    .line 9129
    .local v14, "delay":I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get8()Z

    move-result v63

    if-eqz v63, :cond_40

    .line 9130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Starting PNO alarm: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9132
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v63

    .line 9133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    const-wide/32 v66, 0xea60

    add-long v64, v64, v66

    .line 9134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v66

    .line 9132
    const/16 v67, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v67

    move-wide/from16 v2, v64

    move-object/from16 v4, v66

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 9136
    .end local v14    # "delay":I
    :cond_41
    sget v63, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    add-int/lit8 v63, v63, 0x1

    sput v63, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    goto/16 :goto_0

    .line 9139
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Failed to connect config: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " netId: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25002

    .line 9141
    const/16 v65, 0x0

    .line 9140
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9146
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "didDisconnect":Z
    .end local v29    # "lastConnectUid":I
    .end local v31    # "netId":I
    .end local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v43    # "roam":I
    .end local v53    # "tmpResult":Z
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z

    goto/16 :goto_0

    .line 9149
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForUser(I)Z

    goto/16 :goto_0

    .line 9158
    :sswitch_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 9159
    .restart local v31    # "netId":I
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 9160
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, 0x1

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 9161
    const/16 v57, 0x0

    .line 9164
    .local v57, "updatedExisting":Z
    if-eqz v10, :cond_45

    .line 9169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    .line 9170
    const/16 v65, 0x1

    .line 9169
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v63

    if-nez v63, :cond_43

    .line 9171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Not authorized to update network  config="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9172
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v65, v0

    .line 9171
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9173
    const-string/jumbo v65, " cnid="

    .line 9171
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9173
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 9171
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9174
    const-string/jumbo v65, " uid="

    .line 9171
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9174
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    .line 9171
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25002

    .line 9176
    const/16 v65, 0x9

    .line 9175
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9180
    :cond_43
    const/16 v63, 0x1

    move/from16 v0, v63

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v11

    .line 9182
    .local v11, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v11}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    .line 9183
    .local v44, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v44, :cond_44

    .line 9187
    move-object/from16 v10, v44

    .line 9188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CONNECT_NETWORK updating existing config with id="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9189
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 9188
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9189
    const-string/jumbo v65, " configKey="

    .line 9188
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9190
    const/16 v63, 0x0

    move/from16 v0, v63

    iput-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 9191
    const/16 v63, 0x0

    move/from16 v0, v63

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 9192
    const/16 v57, 0x1

    .line 9195
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v42

    .line 9196
    .restart local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v31

    .line 9198
    .end local v11    # "configKey":Ljava/lang/String;
    .end local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v44    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 9200
    if-nez v10, :cond_46

    .line 9201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CONNECT_NETWORK no config for id="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v65

    .line 9201
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9202
    const-string/jumbo v65, " my state "

    .line 9201
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v65

    .line 9201
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25002

    .line 9205
    const/16 v65, 0x0

    .line 9204
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9208
    :cond_46
    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v63, v0

    if-eqz v63, :cond_49

    const-string/jumbo v60, " skipped"

    .line 9209
    .local v60, "wasSkipped":Ljava/lang/String;
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CONNECT_NETWORK id="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9210
    const-string/jumbo v65, " config="

    .line 9209
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9210
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v65, v0

    .line 9209
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9211
    const-string/jumbo v65, " cnid="

    .line 9209
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9211
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 9209
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9212
    const-string/jumbo v65, " supstate="

    .line 9209
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v65

    .line 9209
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9213
    const-string/jumbo v65, " my state "

    .line 9209
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v65

    .line 9209
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9214
    const-string/jumbo v65, " uid = "

    .line 9209
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9214
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    .line 9209
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "any"

    move-object/from16 v0, v63

    move/from16 v1, v31

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 9220
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v63, v0

    const/16 v64, 0x3f2

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_47

    .line 9221
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v63, v0

    const/16 v64, 0x3e8

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_48

    .line 9228
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "CONNECT_NETWORK"

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 9231
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v63

    if-nez v63, :cond_3

    .line 9233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v63, v0

    .line 9234
    const/16 v64, 0x2

    .line 9233
    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_4a

    .line 9235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25002

    .line 9236
    const/16 v65, 0x9

    .line 9235
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9208
    .end local v60    # "wasSkipped":Ljava/lang/String;
    :cond_49
    const-string/jumbo v60, ""

    .restart local v60    # "wasSkipped":Ljava/lang/String;
    goto/16 :goto_e

    .line 9240
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v38

    .line 9245
    .local v38, "persist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get139(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v63

    const/16 v64, 0x1

    move-object/from16 v0, v63

    move/from16 v1, v31

    move/from16 v2, v64

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 9247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9249
    const/4 v15, 0x0

    .line 9250
    .restart local v15    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v63

    const/16 v64, -0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4b

    .line 9251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v63

    move/from16 v0, v63

    move/from16 v1, v31

    if-eq v0, v1, :cond_4b

    .line 9255
    const/4 v15, 0x1

    .line 9256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 9260
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v64, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v31

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 9262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 9263
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    .line 9262
    const/16 v65, 0x1

    move-object/from16 v0, v63

    move/from16 v1, v65

    move/from16 v2, v64

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v63

    if-eqz v63, :cond_4f

    .line 9263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v63

    .line 9262
    if-eqz v63, :cond_4f

    .line 9264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    invoke-static/range {v63 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set84(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v63

    const v64, 0x25001

    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(II)V

    .line 9269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25003

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 9272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set48(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_4c

    .line 9275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 9281
    :cond_4c
    if-eqz v15, :cond_4d

    .line 9283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9284
    :cond_4d
    if-eqz v57, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get21(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_4e

    .line 9285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v63, v0

    move/from16 v0, v63

    move/from16 v1, v31

    if-ne v0, v1, :cond_4e

    .line 9288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap84(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 9294
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9298
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Failed to connect config: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " netId: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25002

    .line 9300
    const/16 v65, 0x0

    .line 9299
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9305
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "didDisconnect":Z
    .end local v31    # "netId":I
    .end local v38    # "persist":Z
    .end local v57    # "updatedExisting":Z
    .end local v60    # "wasSkipped":Ljava/lang/String;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, 0x1

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 9308
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9309
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 9310
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v10, :cond_50

    .line 9311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v65

    .line 9311
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9313
    const-string/jumbo v65, " my state "

    .line 9311
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v65

    .line 9311
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25008

    .line 9316
    const/16 v65, 0x0

    .line 9315
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9319
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v64

    invoke-direct {v0, v10}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9320
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v35, v0

    .line 9321
    .local v35, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "SAVE_NETWORK id="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9322
    const-string/jumbo v65, " config="

    .line 9321
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9322
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v65, v0

    .line 9321
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9323
    const-string/jumbo v65, " nid="

    .line 9321
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9323
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 9321
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9324
    const-string/jumbo v65, " supstate="

    .line 9321
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v65

    .line 9321
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9325
    const-string/jumbo v65, " my state "

    .line 9321
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v65

    .line 9321
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9328
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    const v64, 0x25007

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_56

    const/4 v9, 0x1

    .line 9329
    .local v9, "checkUid":Z
    :goto_f
    if-eqz v9, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    .line 9330
    const/16 v65, 0x0

    .line 9329
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v63

    if-eqz v63, :cond_57

    .line 9340
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v64, -0x1

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v42

    .line 9341
    .restart local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v63

    const/16 v64, -0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_59

    .line 9342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v63

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_53

    .line 9343
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v63

    if-eqz v63, :cond_52

    .line 9347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Reconfiguring IP on connection"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9352
    :cond_52
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v63

    if-eqz v63, :cond_53

    .line 9353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Reconfiguring proxy on connection"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2008c

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap86(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 9357
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25009

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 9358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-static {v0, v1, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap26(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    .line 9360
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get8()Z

    move-result v63

    if-eqz v63, :cond_54

    .line 9361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Success save network nid="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9362
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v65

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 9361
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9365
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v64

    monitor-enter v64

    .line 9371
    :try_start_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    const v65, 0x25007

    move/from16 v0, v63

    move/from16 v1, v65

    if-ne v0, v1, :cond_58

    const/16 v58, 0x1

    .line 9375
    .local v58, "user":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    move-object/from16 v0, v63

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v39

    .line 9377
    .local v39, "persistConnect":Z
    if-eqz v58, :cond_55

    .line 9378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    move-object/from16 v0, v63

    move/from16 v1, v65

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 9379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 9382
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get139(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v63

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v65

    move-object/from16 v0, v63

    move/from16 v1, v65

    move/from16 v2, v58

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 9384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get139(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v64

    .line 9386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 9328
    .end local v9    # "checkUid":Z
    .end local v39    # "persistConnect":Z
    .end local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v58    # "user":Z
    :cond_56
    const/4 v9, 0x0

    .restart local v9    # "checkUid":Z
    goto/16 :goto_f

    .line 9331
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Not authorized to update network  config="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9332
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v65, v0

    .line 9331
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9333
    const-string/jumbo v65, " cnid="

    .line 9331
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9333
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 9331
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9334
    const-string/jumbo v65, " uid="

    .line 9331
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9334
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    .line 9331
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25008

    .line 9336
    const/16 v65, 0x9

    .line 9335
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9371
    .restart local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_58
    const/16 v58, 0x0

    .restart local v58    # "user":Z
    goto/16 :goto_10

    .line 9365
    .end local v58    # "user":Z
    :catchall_2
    move-exception v63

    monitor-exit v64

    throw v63

    .line 9390
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Failed to save network"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25008

    .line 9393
    const/16 v65, 0x0

    .line 9392
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9399
    .end local v9    # "checkUid":Z
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v35    # "nid":I
    .end local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v54

    .line 9400
    .local v54, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v54, :cond_5a

    .line 9401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9406
    :goto_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 9408
    .restart local v31    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    .line 9409
    const/16 v65, 0x0

    .line 9408
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v31

    move/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v63

    if-nez v63, :cond_5b

    .line 9410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Not authorized to forget network  cnid="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9412
    const-string/jumbo v65, " uid="

    .line 9410
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9412
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    .line 9410
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25005

    .line 9414
    const/16 v65, 0x9

    .line 9413
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9403
    .end local v31    # "netId":I
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v64

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_11

    .line 9418
    .restart local v31    # "netId":I
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v63

    if-eqz v63, :cond_5e

    .line 9419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_5c

    .line 9420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 9421
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_5c

    .line 9422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9426
    :cond_5c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_5d

    .line 9427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, -0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set48(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    const v65, 0x25004

    move-object/from16 v0, v63

    move/from16 v1, v65

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(II)V

    .line 9431
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25006

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 9432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    .line 9433
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/net/wifi/WifiConfiguration;

    .line 9432
    const/16 v65, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v65

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap26(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 9435
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Failed to forget network"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25005

    .line 9437
    const/16 v65, 0x0

    .line 9436
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9441
    .end local v31    # "netId":I
    .end local v54    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_5f

    .line 9442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9446
    :cond_5f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/net/wifi/WpsInfo;

    .line 9448
    .local v61, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v61

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v63, v0

    packed-switch v63, :pswitch_data_0

    .line 9470
    new-instance v62, Landroid/net/wifi/WpsResult;

    sget-object v63, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v62 .. v63}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 9471
    .local v62, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Invalid setup for WPS"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9474
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 9475
    const/16 v64, -0x1

    .line 9474
    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9476
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v63, v0

    sget-object v64, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_63

    .line 9477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500b

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 9478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get153(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9450
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_12

    .line 9454
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-eqz v63, :cond_62

    .line 9455
    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    if-nez v63, :cond_61

    .line 9456
    :cond_60
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Invalid pin code."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0xa

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 9458
    const/16 v63, 0x1

    return v63

    .line 9460
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9464
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_12

    .line 9467
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_12

    .line 9480
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Failed to start WPS with config "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v61 .. v61}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9485
    .end local v61    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_20
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v63

    if-eqz v63, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Network connection established"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9486
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_65

    .line 9487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9489
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 9494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 9496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap58(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9509
    :sswitch_21
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v63

    if-eqz v63, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9510
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9514
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, [Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->processPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_0

    .line 9517
    :sswitch_23
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "WAPI no certification!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    new-instance v64, Landroid/content/Intent;

    const-string/jumbo v65, "android.net.wifi.NO_CERTIFICATION"

    invoke-direct/range {v64 .. v65}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v65, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v63 .. v65}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 9521
    :sswitch_24
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "EAP-FAST new pac updated!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    new-instance v64, Landroid/content/Intent;

    const-string/jumbo v65, "android.net.wifi.NEW_PAC_UPDATED"

    invoke-direct/range {v64 .. v65}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v65, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v63 .. v65}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 9525
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-eqz v63, :cond_67

    .line 9526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap80(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2501b

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 9529
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2501c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9534
    :sswitch_26
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-nez v63, :cond_68

    .line 9535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9538
    :cond_68
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/net/wifi/WpsInfo;

    .line 9539
    .restart local v61    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string/jumbo v64, "nfc_pw"

    const/16 v65, 0x0

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    .line 9540
    .local v34, "nfcPw":I
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "START_WPS_REG, nfcPw:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9541
    move-object/from16 v0, v61

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v63, v0

    const/16 v64, 0x2

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_6f

    .line 9542
    if-nez v34, :cond_69

    .line 9543
    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    if-nez v63, :cond_6a

    .line 9544
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Invalid pin code."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0xa

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 9546
    const/16 v63, 0x1

    return v63

    .line 9549
    :cond_69
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Using pin from NFC."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9550
    const-string/jumbo v63, "nfc-pw"

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 9552
    :cond_6a
    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_6b

    .line 9553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/lang/String;->getBytes()[B

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v23

    .line 9554
    .local v23, "hexStr":Ljava/lang/String;
    if-eqz v23, :cond_6d

    .line 9555
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    .line 9560
    .end local v23    # "hexStr":Ljava/lang/String;
    :cond_6b
    :goto_13
    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_6c

    .line 9561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/lang/String;->getBytes()[B

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v23

    .line 9562
    .restart local v23    # "hexStr":Ljava/lang/String;
    if-eqz v23, :cond_6e

    .line 9563
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    .line 9568
    .end local v23    # "hexStr":Ljava/lang/String;
    :cond_6c
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsReg(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .line 9569
    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9574
    :goto_15
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v63, v0

    sget-object v64, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_70

    .line 9575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500b

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 9576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get153(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9557
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    .restart local v23    # "hexStr":Ljava/lang/String;
    :cond_6d
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    goto/16 :goto_13

    .line 9565
    :cond_6e
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    goto :goto_14

    .line 9571
    .end local v23    # "hexStr":Ljava/lang/String;
    :cond_6f
    new-instance v62, Landroid/net/wifi/WpsResult;

    sget-object v63, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v62 .. v63}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 9572
    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Invalid setup for WPS REG"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 9578
    :cond_70
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Failed to start WPS REG with config "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v61 .. v61}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9583
    .end local v34    # "nfcPw":I
    .end local v61    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_27
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-nez v63, :cond_71

    .line 9584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9587
    :cond_71
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/net/wifi/WpsInfo;

    .line 9588
    .restart local v61    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "START_WPS_ER, mEnrolleeUuid:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", mEnrolleeBssid:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get47(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9589
    move-object/from16 v0, v61

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v63, v0

    packed-switch v63, :pswitch_data_1

    .line 9611
    :pswitch_3
    new-instance v62, Landroid/net/wifi/WpsResult;

    sget-object v63, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v62 .. v63}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 9612
    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Invalid setup for WPS ER!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9615
    :goto_16
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v63, v0

    sget-object v64, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_75

    .line 9616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500b

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 9617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get153(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9622
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 9591
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_72

    .line 9592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->startWpsErPbc(Ljava/lang/String;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_16

    .line 9594
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set74(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set81(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v63

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    const-wide/32 v66, 0x1d4c0

    add-long v64, v64, v66

    .line 9597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v66

    .line 9596
    const/16 v67, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v67

    move-wide/from16 v2, v64

    move-object/from16 v4, v66

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 9598
    const/16 v63, 0x1

    return v63

    .line 9602
    :pswitch_5
    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_73

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    if-nez v63, :cond_74

    .line 9603
    :cond_73
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Invalid pin code."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0xa

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 9605
    const/16 v63, 0x1

    return v63

    .line 9607
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->startWpsErPinAny(Ljava/lang/String;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_16

    .line 9619
    :cond_75
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Failed to start WPS ER with config "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v61 .. v61}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_17

    .line 9626
    .end local v61    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_28
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-nez v63, :cond_76

    .line 9627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9630
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v64

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    const/16 v65, 0x1

    move/from16 v0, v63

    move/from16 v1, v65

    if-ne v0, v1, :cond_78

    const/16 v63, 0x1

    :goto_18
    move-object/from16 v0, v64

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcToken(Z)Ljava/lang/String;

    move-result-object v37

    .line 9631
    .local v37, "passwordToken":Ljava/lang/String;
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Item22: GET_WPS_PIN_AND_CONNECT, passwordToken:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9632
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_77

    const-string/jumbo v63, "UNKNOWN COMMAND"

    move-object/from16 v0, v37

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_79

    .line 9643
    :cond_77
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Failed to get password token!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9630
    .end local v37    # "passwordToken":Ljava/lang/String;
    :cond_78
    const/16 v63, 0x0

    goto :goto_18

    .line 9633
    .restart local v37    # "passwordToken":Ljava/lang/String;
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap59(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->startWpsNfc()Landroid/net/wifi/WpsResult;

    move-result-object v62

    .line 9635
    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v63, v0

    sget-object v64, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_7a

    .line 9636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500b

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 9637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get153(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9639
    :cond_7a
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Failed to start WPS NFC!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9648
    .end local v37    # "passwordToken":Ljava/lang/String;
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_29
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-nez v63, :cond_7b

    .line 9649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2502d

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9652
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v64

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    const/16 v65, 0x1

    move/from16 v0, v63

    move/from16 v1, v65

    if-ne v0, v1, :cond_7d

    const/16 v63, 0x1

    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v64

    move/from16 v1, v63

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->wpsErNfcConfigToken(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 9653
    .local v12, "credential":Ljava/lang/String;
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Item26: GET_WPS_CRED_AND_CONNECT, credential:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9654
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_7c

    const-string/jumbo v63, "UNKNOWN COMMAND"

    move-object/from16 v0, v63

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_7e

    .line 9658
    :cond_7c
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Failed to get WPS credential, mErApUuid:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2502d

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9652
    .end local v12    # "credential":Ljava/lang/String;
    :cond_7d
    const/16 v63, 0x0

    goto :goto_19

    .line 9655
    .restart local v12    # "credential":Ljava/lang/String;
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-static {v0, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2502e

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 9663
    .end local v12    # "credential":Ljava/lang/String;
    :sswitch_2a
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-nez v63, :cond_7f

    .line 9664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25033

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9667
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    const/16 v64, 0x1

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverToken(Z)Ljava/lang/String;

    move-result-object v37

    .line 9668
    .restart local v37    # "passwordToken":Ljava/lang/String;
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Item28: get requester token, passwordToken: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9669
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_80

    const-string/jumbo v63, "UNKNOWN COMMAND"

    move-object/from16 v0, v37

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_81

    .line 9675
    :cond_80
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Failed to get requester token!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25033

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9670
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap64(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string/jumbo v64, "wps_nfc_pubkey"

    const/16 v65, 0x0

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 9672
    .local v28, "keyType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcCfgKeyType(I)Z

    .line 9673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25034

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 9680
    .end local v28    # "keyType":I
    .end local v37    # "passwordToken":Ljava/lang/String;
    :sswitch_2b
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-nez v63, :cond_82

    .line 9681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25030

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9684
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    const/16 v64, 0x0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverToken(Z)Ljava/lang/String;

    move-result-object v37

    .line 9685
    .restart local v37    # "passwordToken":Ljava/lang/String;
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Item29: get selector token, passwordToken: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9686
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_83

    const-string/jumbo v63, "UNKNOWN COMMAND"

    move-object/from16 v0, v37

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_84

    .line 9694
    :cond_83
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Failed to get selector token!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25030

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9687
    :cond_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set75(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get150(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v63

    const v64, 0x200c4

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 9689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap66(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string/jumbo v64, "wps_nfc_pubkey"

    const/16 v65, 0x0

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 9691
    .restart local v28    # "keyType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcCfgKeyType(I)Z

    .line 9692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25031

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 9699
    .end local v28    # "keyType":I
    .end local v37    # "passwordToken":Ljava/lang/String;
    :sswitch_2c
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-nez v63, :cond_85

    .line 9700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25039

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9703
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap62(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2503a

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 9707
    :sswitch_2d
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-nez v63, :cond_86

    .line 9708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25036

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9711
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap63(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25037

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 9715
    :sswitch_2e
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9718
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 9719
    .local v22, "event":Ljava/lang/String;
    const-string/jumbo v63, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v55

    .line 9720
    .local v55, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v63, v0

    const/16 v64, 0x3

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_89

    .line 9721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    aget-object v64, v55, v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x2

    aget-object v64, v55, v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9723
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "WPS_ER_ENROLLEE_ADD_EVENT, mEnrolleeUuid:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9724
    const-string/jumbo v65, ", mEnrolleeBssid:"

    .line 9723
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get47(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    .line 9723
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9724
    const-string/jumbo v65, ", mWpsErMethod:"

    .line 9723
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get152(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v65

    .line 9723
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9725
    const-string/jumbo v65, ", mWaitingForEnrollee:"

    .line 9723
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get134(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v65

    .line 9723
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get134(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set74(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 9729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get152(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v63

    if-nez v63, :cond_87

    .line 9730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->startWpsErPbc(Ljava/lang/String;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .line 9734
    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :goto_1a
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v63, v0

    sget-object v64, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_88

    .line 9735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get153(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9739
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 9732
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_87
    new-instance v62, Landroid/net/wifi/WpsResult;

    sget-object v63, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v62 .. v63}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_1a

    .line 9737
    :cond_88
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Failed to start WPS ER!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 9743
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_89
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "WPS_ER_ENROLLEE_ADD_EVENT format error, event:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9747
    .end local v22    # "event":Ljava/lang/String;
    .end local v55    # "tokens":[Ljava/lang/String;
    :sswitch_2f
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9750
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 9751
    .restart local v22    # "event":Ljava/lang/String;
    const-string/jumbo v63, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v55

    .line 9752
    .restart local v55    # "tokens":[Ljava/lang/String;
    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v63, v0

    const/16 v64, 0x3

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_8a

    .line 9753
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "WPS_ER_AP_ADD_EVENT format error, event:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9756
    :cond_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string/jumbo v64, "nfc_pw"

    const/16 v65, 0x0

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    .line 9757
    .restart local v34    # "nfcPw":I
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "WPS_ER_AP_ADD_EVENT, erApUuid:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const/16 v65, 0x1

    aget-object v65, v55, v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", erApBssid:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const/16 v65, 0x2

    aget-object v65, v55, v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9758
    const-string/jumbo v65, ", mErApPin:"

    .line 9757
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    .line 9757
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9758
    const-string/jumbo v65, ", mLastBssid:"

    .line 9757
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    .line 9757
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9758
    const-string/jumbo v65, ", nfcPw:"

    .line 9757
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9759
    const/16 v63, 0x1

    aget-object v63, v55, v63

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_3

    const/16 v63, 0x2

    aget-object v63, v55, v63

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_3

    const/16 v63, 0x2

    aget-object v63, v55, v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    aget-object v64, v55, v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9761
    if-nez v34, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_3

    .line 9762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v63 .. v65}, Lcom/android/server/wifi/WifiNative;->wpsErLearn(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 9767
    .end local v22    # "event":Ljava/lang/String;
    .end local v34    # "nfcPw":I
    .end local v55    # "tokens":[Ljava/lang/String;
    :sswitch_30
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcTagRead(Ljava/lang/String;)Z

    .line 9771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    if-nez v63, :cond_8b

    .line 9772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    goto/16 :goto_0

    .line 9774
    :cond_8b
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "M_CMD_START_WPS_NFC_TAG_READ, mErApPin:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9778
    :sswitch_31
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-nez v63, :cond_8c

    .line 9779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9782
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/String;

    const/16 v65, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->nfcRxHandoverToken(Ljava/lang/String;Z)Z

    .line 9783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->startWpsNfc()Landroid/net/wifi/WpsResult;

    move-result-object v62

    .line 9784
    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v63, v0

    sget-object v64, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_8d

    .line 9785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500b

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 9786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get153(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9788
    :cond_8d
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Failed to start WPS NFC!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9793
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_32
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/String;

    const/16 v65, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->nfcRxHandoverToken(Ljava/lang/String;Z)Z

    .line 9797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set75(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 9804
    :sswitch_33
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "M_CMD_SET_NETWORK_AUTO_CONNECTABLE, NetworkId: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", AutoConnectable: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v64

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v65, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v63, v0

    const/16 v66, 0x1

    move/from16 v0, v63

    move/from16 v1, v66

    if-ne v0, v1, :cond_8e

    const/16 v63, 0x1

    :goto_1c
    move-object/from16 v0, v64

    move/from16 v1, v65

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkAutoConnectable(IZ)Z

    move-result v63

    if-nez v63, :cond_8f

    .line 9808
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "M_CMD_SET_NETWORK_AUTO_CONNECTABLE, setNetworkAutoConnectable() failed"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, -0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9806
    :cond_8e
    const/16 v63, 0x0

    goto :goto_1c

    .line 9813
    :cond_8f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v63, v0

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_92

    .line 9815
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Set Auto Connectable to TRUE, NetworkId: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", currentNetworkId: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_91

    .line 9819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v63

    if-nez v63, :cond_90

    .line 9821
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Set Auto Connectable to TRUE, Auto Connect is NOT allowed, Ignore enable operation"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, 0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9827
    :cond_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->getDisconnectNetworks()Ljava/util/List;

    move-result-object v17

    .line 9829
    .restart local v17    # "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v17

    move-object/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_91

    .line 9831
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Set Auto Connectable to TRUE, Network "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " is disconnected actively, ignore the enable network operation!"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, 0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9838
    .end local v17    # "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    const-string/jumbo v65, "any"

    invoke-virtual/range {v63 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 9840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    const/16 v66, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v66

    move/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    move-result v63

    if-nez v63, :cond_93

    .line 9842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, -0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9849
    :cond_92
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Set Auto Connectable to FALSE, NetworkId: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", currentNetworkId: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_93

    .line 9854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    const/16 v65, 0x0

    invoke-virtual/range {v63 .. v65}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v63

    if-eqz v63, :cond_95

    .line 9856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_93

    .line 9858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->addDisconnectNetwork(I)V

    .line 9869
    :cond_93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_96

    .line 9871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_94

    .line 9876
    :cond_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, 0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9863
    :cond_95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, -0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9881
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, 0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9888
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v33

    .line 9889
    .local v33, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v33, :cond_98

    .line 9890
    invoke-interface/range {v33 .. v33}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "c$iterator":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_97

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 9891
    .local v7, "c":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    goto :goto_1d

    .line 9893
    .end local v7    # "c":Landroid/net/wifi/WifiConfiguration;
    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .line 9894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "M_CMD_FACTORY_RESET, "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9895
    const-string/jumbo v65, " configured networks are removed"

    .line 9894
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9897
    .end local v8    # "c$iterator":Ljava/util/Iterator;
    :cond_98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "M_CMD_FACTORY_RESET networks is null"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8588
    nop

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
        0x20049 -> :sswitch_13
        0x2004a -> :sswitch_14
        0x2004b -> :sswitch_15
        0x20061 -> :sswitch_19
        0x20062 -> :sswitch_a
        0x20063 -> :sswitch_12
        0x2008e -> :sswitch_16
        0x2008f -> :sswitch_18
        0x20091 -> :sswitch_17
        0x20092 -> :sswitch_1d
        0x20098 -> :sswitch_1a
        0x2009c -> :sswitch_22
        0x200c1 -> :sswitch_30
        0x200c2 -> :sswitch_31
        0x200c3 -> :sswitch_32
        0x200e9 -> :sswitch_34
        0x200fa -> :sswitch_33
        0x2300c -> :sswitch_4
        0x24003 -> :sswitch_20
        0x24004 -> :sswitch_21
        0x24006 -> :sswitch_3
        0x24007 -> :sswitch_1
        0x2400d -> :sswitch_2
        0x2400e -> :sswitch_2
        0x2400f -> :sswitch_f
        0x24010 -> :sswitch_10
        0x2402b -> :sswitch_0
        0x24050 -> :sswitch_23
        0x24051 -> :sswitch_24
        0x24053 -> :sswitch_2e
        0x24054 -> :sswitch_2f
        0x25001 -> :sswitch_1b
        0x25004 -> :sswitch_1e
        0x25007 -> :sswitch_1c
        0x2500a -> :sswitch_1f
        0x25011 -> :sswitch_9
        0x2501a -> :sswitch_25
        0x25029 -> :sswitch_26
        0x2502a -> :sswitch_27
        0x2502b -> :sswitch_28
        0x2502c -> :sswitch_29
        0x2502f -> :sswitch_2b
        0x25032 -> :sswitch_2a
        0x25035 -> :sswitch_2d
        0x25038 -> :sswitch_2c
    .end sparse-switch

    .line 9448
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 9589
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
