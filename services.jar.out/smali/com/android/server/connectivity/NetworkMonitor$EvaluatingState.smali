.class Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvaluatingState"
.end annotation


# instance fields
.field private mAttempts:I

.field private mReevaluateDelayMs:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 470
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->-set3(Lcom/android/server/connectivity/NetworkMonitor;I)I

    move-result v1

    const v2, 0x82006

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    .line 471
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get14(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get14(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 473
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->-set4(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 475
    :cond_0
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    .line 476
    iput v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    .line 469
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 581
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 580
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0xcc

    const/16 v6, 0xc8

    const/4 v8, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 481
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 575
    :pswitch_0
    return v3

    .line 483
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 484
    :cond_0
    return v2

    .line 502
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get4(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;

    move-result-object v4

    iget-object v4, v4, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 503
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 502
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 504
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get16(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 505
    return v2

    .line 515
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 516
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get13()Z

    move-result v4

    .line 515
    if-eqz v4, :cond_3

    .line 517
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v4, "consider Mobile validated directly"

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get16(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 519
    return v2

    .line 522
    :cond_3
    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    .line 529
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal()I

    move-result v0

    .line 530
    .local v0, "httpResponseCode":I
    if-eq v0, v7, :cond_6

    if-lt v0, v6, :cond_6

    const/16 v4, 0x18f

    if-gt v0, v4, :cond_6

    .line 532
    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkAutoAuthentication;->autoAutheticate(Landroid/content/Context;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    .line 533
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal()I

    move-result v0

    .line 536
    :cond_4
    if-ne v0, v7, :cond_7

    .line 537
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get16(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 568
    :cond_5
    :goto_1
    return v2

    .line 531
    :cond_6
    const/16 v4, 0x257

    if-ne v0, v4, :cond_4

    goto :goto_0

    .line 538
    :cond_7
    if-lt v0, v6, :cond_8

    const/16 v4, 0x18f

    if-gt v0, v4, :cond_8

    .line 539
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get1(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 547
    :cond_8
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 548
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get13()Z

    move-result v4

    .line 547
    if-eqz v4, :cond_9

    .line 549
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v4, "consider Wi-Fi validated directly"

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 550
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get16(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 551
    return v2

    .line 554
    :cond_9
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->-set3(Lcom/android/server/connectivity/NetworkMonitor;I)I

    move-result v5

    const v6, 0x82006

    invoke-virtual {v4, v6, v5, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 555
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    int-to-long v6, v5

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 556
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 558
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v6

    .line 557
    const v7, 0x82002

    .line 556
    invoke-virtual {v5, v7, v2, v3, v6}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 559
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    if-lt v3, v8, :cond_a

    .line 561
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 563
    :cond_a
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    .line 564
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    const v4, 0x927c0

    if-le v3, v4, :cond_5

    .line 565
    const v3, 0x927c0

    iput v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    goto/16 :goto_1

    .line 573
    .end local v0    # "httpResponseCode":I
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_2
    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    if-ge v4, v8, :cond_b

    :goto_2
    return v2

    :cond_b
    move v2, v3

    goto :goto_2

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x82006
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
