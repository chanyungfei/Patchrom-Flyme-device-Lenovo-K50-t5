.class Lcom/android/server/wifi/WifiWatchdogStateMachine$1;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1577
    new-instance v4, Ljava/text/DecimalFormat;

    const-string/jumbo v5, "#.##"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1579
    .local v4, "df":Ljava/text/DecimalFormat;
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1580
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v6, "mPoorLinkProfilingInfo mCurrentBssid=null return"

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1604
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get10(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get18(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1576
    return-void

    .line 1582
    :cond_0
    const-wide/16 v0, 0x0

    .line 1583
    .local v0, "clValue":D
    const-wide/16 v2, 0x0

    .line 1584
    .local v2, "clVolume":D
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1585
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v0

    .line 1586
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v2

    .line 1588
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1589
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    .line 1590
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Link Status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v7, v7, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1591
    const-string/jumbo v7, "RSSI: "

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1591
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get12(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v7

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1591
    const-string/jumbo v7, "\n"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1592
    const-string/jumbo v7, "LinkSpeed: "

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1592
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get14(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v7

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1592
    const-string/jumbo v7, "\n"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1593
    const-string/jumbo v7, "GoodLinkTargetRssi: "

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1593
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-get3(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v7

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1593
    const-string/jumbo v7, "\n"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1594
    const-string/jumbo v7, "GoodLinkTargetCount: "

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1594
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v7

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1594
    const-string/jumbo v7, "\n"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1595
    const-string/jumbo v7, "SampleCount: "

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1595
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get22(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v7

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1595
    const-string/jumbo v7, "\n"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1596
    const-string/jumbo v7, "CurrentLossValue:"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1596
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v0

    invoke-virtual {v4, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1596
    const-string/jumbo v7, "%"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1596
    const-string/jumbo v7, "\n"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1597
    const-string/jumbo v7, "CurrentLossVolume:"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1597
    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1597
    const-string/jumbo v7, "\n"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1598
    const-string/jumbo v7, "\n"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1599
    const-string/jumbo v7, "p2pStart:"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1599
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-boolean v7, v7, Lcom/android/server/wifi/WifiWatchdogStateMachine;->p2pStart:Z

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1599
    const-string/jumbo v7, "\n"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1600
    const-string/jumbo v7, "PoorLinkThreshold: "

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1600
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get19(Lcom/android/server/wifi/WifiWatchdogStateMachine;)D

    move-result-wide v8

    .line 1590
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1600
    const-string/jumbo v7, "\n"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1601
    const-string/jumbo v7, "GoodLinkThreshold: "

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1601
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get9(Lcom/android/server/wifi/WifiWatchdogStateMachine;)D

    move-result-wide v8

    .line 1590
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1601
    const-string/jumbo v7, "\n"

    .line 1590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1589
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
