.class Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 708
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set9(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 710
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get21(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set8(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v2

    const v3, 0x2100b

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 714
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 715
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v1, "poor link"

    iput-object v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 707
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get10(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get18(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 806
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap4(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 807
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v1, "N/A"

    iput-object v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 804
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 721
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 797
    return v10

    .line 723
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 724
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get20(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 725
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap8(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    .line 799
    :cond_0
    :goto_0
    return v11

    .line 730
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get23(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap9(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 734
    :sswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get21(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 735
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get27(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v6, 0x25014

    invoke-virtual {v3, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 736
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get21(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set8(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v7

    const v8, 0x2100b

    invoke-virtual {v6, v8, v7, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 737
    const-wide/16 v8, 0x3e8

    .line 736
    invoke-virtual {v3, v6, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 742
    :sswitch_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 745
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    .line 746
    .local v0, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v2, v0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 747
    .local v2, "rssi":I
    iget v1, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    .line 748
    .local v1, "linkspeed":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget v6, v0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set7(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 749
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set5(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 751
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fetch RSSI succeed, rssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 753
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 754
    .local v4, "time":J
    cmp-long v3, v4, v12

    if-gtz v3, :cond_3

    .line 756
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v6, "Max avoid time elapsed"

    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 757
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap8(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_0

    .line 759
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get4(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v6, :cond_5

    .line 760
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v6, "Roaming case with privious connected- always send true at first"

    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 761
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap8(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    .line 762
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set1(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 763
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v6, "isRoaming = false"

    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 765
    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get4(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 766
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set1(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 767
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Roaming case with privious disconnected- should check isRoaming= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 768
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get4(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    .line 767
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 768
    const-string/jumbo v7, " currentDetailState "

    .line 767
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 768
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    .line 767
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 774
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-get3(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v3

    if-lt v2, v3, :cond_9

    .line 775
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get22(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set9(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 777
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Good link detected, rssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 778
    :cond_7
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v3

    invoke-static {v3, v12, v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-set0(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 779
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap8(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_0

    .line 770
    :cond_8
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "privious disconnected- should check isRoaming= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 771
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get4(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    .line 770
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 771
    const-string/jumbo v7, " currentDetailState "

    .line 770
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 771
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    .line 770
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 782
    :cond_9
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set9(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 783
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Link is still poor, time left="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 789
    .end local v0    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v1    # "linkspeed":I
    .end local v2    # "rssi":I
    .end local v4    # "time":J
    :sswitch_4
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v6, "RSSI_FETCH_FAILED"

    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 793
    :sswitch_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_0

    .line 721
    nop

    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_0
        0x21007 -> :sswitch_1
        0x2100b -> :sswitch_2
        0x2102c -> :sswitch_5
        0x25015 -> :sswitch_3
        0x25016 -> :sswitch_4
    .end sparse-switch
.end method
