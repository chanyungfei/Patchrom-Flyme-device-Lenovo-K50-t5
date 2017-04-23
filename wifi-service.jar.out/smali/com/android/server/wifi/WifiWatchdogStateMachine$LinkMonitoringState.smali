.class Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkMonitoringState"
.end annotation


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mLastFailedCount:J

.field private mLastMultipleRetryCount:J

.field private mLastRetryCount:J

.field private mLastRssi:I

.field private mLastTxBad:I

.field private mLastTxGood:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 893
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set9(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 895
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)V

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set2(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 896
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get21(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set8(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v2

    const v3, 0x2100b

    invoke-virtual {v1, v3, v2, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 898
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 899
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get5(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mCm:Landroid/net/ConnectivityManager;

    .line 902
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v1, "good link"

    iput-object v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 892
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get10(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get18(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1087
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap4(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 1088
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v1, "N/A"

    iput-object v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 1085
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 42
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 908
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v35, v0

    sparse-switch v35, :sswitch_data_0

    .line 1078
    const/16 v35, 0x0

    return v35

    .line 910
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap2(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v36

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set3(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get8(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v35

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_1

    .line 1080
    :cond_0
    :goto_0
    const/16 v35, 0x1

    return v35

    .line 915
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get17(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap9(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 920
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get13(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap9(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 924
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v35

    if-nez v35, :cond_2

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get16(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap9(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 926
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get21(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get27(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v35

    const v36, 0x25014

    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get21(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v38

    add-int/lit8 v38, v38, 0x1

    invoke-static/range {v37 .. v38}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set8(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v37

    const v38, 0x2100b

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v38

    move/from16 v2, v37

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v36

    .line 929
    const-wide/16 v38, 0x3e8

    .line 928
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 934
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 937
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/net/wifi/RssiPacketCountInfo;

    .line 938
    .local v16, "info":Landroid/net/wifi/RssiPacketCountInfo;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    move/from16 v23, v0

    .line 939
    .local v23, "rssi":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    move/from16 v35, v0

    add-int v35, v35, v23

    div-int/lit8 v22, v35, 0x2

    .line 940
    .local v22, "mrssi":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    move/from16 v33, v0

    .line 941
    .local v33, "txbad":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    move/from16 v34, v0

    .line 944
    .local v34, "txgood":I
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->rFailedCount:J

    move-wide/from16 v26, v0

    .line 945
    .local v26, "rFailedCount":J
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->rRetryCount:J

    move-wide/from16 v30, v0

    .line 946
    .local v30, "rRetryCount":J
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->rMultipleRetryCount:J

    move-wide/from16 v28, v0

    .line 947
    .local v28, "rMultipleRetryCount":J
    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    move/from16 v17, v0

    .line 948
    .local v17, "linkspeed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set7(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set5(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 960
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 961
    .local v24, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-get4(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v36

    sub-long v36, v24, v36

    const-wide/16 v38, 0x7d0

    cmp-long v35, v36, v38

    if-gez v35, :cond_6

    .line 964
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxBad:I

    move/from16 v35, v0

    sub-int v11, v33, v35

    .line 965
    .local v11, "dbad":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxGood:I

    move/from16 v35, v0

    sub-int v13, v34, v35

    .line 966
    .local v13, "dgood":I
    add-int v14, v11, v13

    .line 969
    .local v14, "dtotal":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastFailedCount:J

    move-wide/from16 v36, v0

    sub-long v4, v26, v36

    .line 970
    .local v4, "dFailCount":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRetryCount:J

    move-wide/from16 v36, v0

    sub-long v8, v30, v36

    .line 971
    .local v8, "dRetryCount":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastMultipleRetryCount:J

    move-wide/from16 v36, v0

    sub-long v6, v28, v36

    .line 974
    .local v6, "dMultipleRetryCount":J
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v35

    if-eqz v35, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Fetch RSSI succeed, rssi="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " mrssi="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " txbad="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 975
    const-string/jumbo v37, " txgood="

    .line 974
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 975
    const-string/jumbo v37, " linkspeed="

    .line 974
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 975
    const-string/jumbo v37, " dbad="

    .line 974
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 976
    const-string/jumbo v37, " dRetryCount="

    .line 974
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 976
    const-string/jumbo v37, " dMultipleRetryCount="

    .line 974
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 979
    :cond_3
    if-lez v14, :cond_6

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWeightAlgo:Z

    move/from16 v35, v0

    if-nez v35, :cond_7

    .line 983
    int-to-double v0, v11

    move-wide/from16 v36, v0

    int-to-double v0, v14

    move-wide/from16 v38, v0

    div-double v18, v36, v38

    .line 985
    .local v18, "loss":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 987
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v35

    if-eqz v35, :cond_4

    .line 988
    new-instance v12, Ljava/text/DecimalFormat;

    const-string/jumbo v35, "#.##"

    move-object/from16 v0, v35

    invoke-direct {v12, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 989
    .local v12, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Incremental loss="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "/"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " Current loss="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v38

    const-wide/high16 v40, 0x4059000000000000L    # 100.0

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    invoke-virtual {v12, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v37

    .line 989
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 990
    const-string/jumbo v37, "% volume="

    .line 989
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v38

    move-wide/from16 v0, v38

    invoke-virtual {v12, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v37

    .line 989
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 994
    .end local v12    # "df":Ljava/text/DecimalFormat;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v22

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->updateLoss(IDI)V

    .line 1027
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get19(Lcom/android/server/wifi/WifiWatchdogStateMachine;)D

    move-result-wide v38

    cmpl-double v35, v36, v38

    if-lez v35, :cond_a

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v36

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    cmpl-double v35, v36, v38

    if-lez v35, :cond_a

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get22(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set9(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v35

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_6

    .line 1030
    const/4 v10, 0x0

    .line 1032
    .local v10, "dataenabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get5(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v35

    const-string/jumbo v36, "phone"

    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    .line 1031
    check-cast v32, Landroid/telephony/TelephonyManager;

    .line 1033
    .local v32, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v32, :cond_5

    .line 1034
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v10

    .line 1036
    .end local v10    # "dataenabled":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "dataenabled="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1037
    if-eqz v10, :cond_9

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    const-string/jumbo v36, "get true"

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap8(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get21(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set8(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 1055
    .end local v4    # "dFailCount":J
    .end local v6    # "dMultipleRetryCount":J
    .end local v8    # "dRetryCount":J
    .end local v11    # "dbad":I
    .end local v13    # "dgood":I
    .end local v14    # "dtotal":I
    .end local v18    # "loss":D
    .end local v32    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-set3(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 1056
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxBad:I

    .line 1057
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxGood:I

    .line 1058
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    .line 1061
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastFailedCount:J

    .line 1062
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRetryCount:J

    .line 1063
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastMultipleRetryCount:J

    goto/16 :goto_0

    .line 999
    .restart local v4    # "dFailCount":J
    .restart local v6    # "dMultipleRetryCount":J
    .restart local v8    # "dRetryCount":J
    .restart local v11    # "dbad":I
    .restart local v13    # "dgood":I
    .restart local v14    # "dtotal":I
    :cond_7
    int-to-double v0, v11

    move-wide/from16 v36, v0

    int-to-double v0, v14

    move-wide/from16 v38, v0

    div-double v18, v36, v38

    .line 1000
    .restart local v18    # "loss":D
    new-instance v12, Ljava/text/DecimalFormat;

    const-string/jumbo v35, "#.##"

    move-object/from16 v0, v35

    invoke-direct {v12, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1004
    .restart local v12    # "df":Ljava/text/DecimalFormat;
    mul-int/lit8 v35, v11, 0x10

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v36, v0

    add-long v36, v36, v8

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    .line 1005
    mul-int/lit8 v35, v11, 0x10

    add-int v35, v35, v13

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v38, v0

    add-long v38, v38, v8

    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v38, v0

    .line 1004
    div-double v20, v36, v38

    .line 1006
    .local v20, "loss_withRetry":D
    mul-int/lit8 v35, v11, 0x10

    add-int v35, v35, v13

    long-to-int v0, v8

    move/from16 v36, v0

    add-int v15, v35, v36

    .line 1009
    .local v15, "dtotalRetry":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get14(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_8

    const/16 v35, -0x55

    move/from16 v0, v23

    move/from16 v1, v35

    if-ge v0, v1, :cond_8

    .line 1011
    mul-int/lit8 v35, v11, 0x10

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v36, v0

    add-long v36, v36, v8

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    mul-int/lit8 v35, v11, 0x10

    add-int v35, v35, v13

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v38, v0

    add-long v38, v38, v8

    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v38, v0

    div-double v20, v36, v38

    .line 1012
    mul-int/lit8 v35, v11, 0x10

    add-int v35, v35, v13

    long-to-int v0, v8

    move/from16 v36, v0

    add-int v15, v35, v36

    .line 1019
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v22

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->updateLoss(IDI)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "conclusion, LinkSpeed="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get14(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " Current loss="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v38

    const-wide/high16 v40, 0x4059000000000000L    # 100.0

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    invoke-virtual {v12, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "%"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " rssi="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " txgood="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " txbad="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " dtotal="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 1023
    const-string/jumbo v37, " dRetryCount="

    .line 1022
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1014
    :cond_8
    int-to-double v0, v11

    move-wide/from16 v36, v0

    int-to-double v0, v14

    move-wide/from16 v38, v0

    div-double v20, v36, v38

    .line 1015
    move v15, v14

    goto/16 :goto_3

    .line 1044
    .end local v12    # "df":Ljava/text/DecimalFormat;
    .end local v15    # "dtotalRetry":I
    .end local v20    # "loss_withRetry":D
    .restart local v32    # "tm":Landroid/telephony/TelephonyManager;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    const-string/jumbo v36, "dont\' count cause mobile data not enable"

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1049
    .end local v32    # "tm":Landroid/telephony/TelephonyManager;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set9(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_2

    .line 1070
    .end local v4    # "dFailCount":J
    .end local v6    # "dMultipleRetryCount":J
    .end local v8    # "dRetryCount":J
    .end local v11    # "dbad":I
    .end local v13    # "dgood":I
    .end local v14    # "dtotal":I
    .end local v16    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v17    # "linkspeed":I
    .end local v18    # "loss":D
    .end local v22    # "mrssi":I
    .end local v23    # "rssi":I
    .end local v24    # "now":J
    .end local v26    # "rFailedCount":J
    .end local v28    # "rMultipleRetryCount":J
    .end local v30    # "rRetryCount":J
    .end local v33    # "txbad":I
    .end local v34    # "txgood":I
    :sswitch_4
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v35

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    const-string/jumbo v36, "RSSI_FETCH_FAILED"

    invoke-static/range {v35 .. v36}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1074
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_0

    .line 908
    nop

    :sswitch_data_0
    .sparse-switch
        0x21003 -> :sswitch_0
        0x21007 -> :sswitch_1
        0x2100b -> :sswitch_2
        0x2102c -> :sswitch_5
        0x25015 -> :sswitch_3
        0x25016 -> :sswitch_4
    .end sparse-switch
.end method
