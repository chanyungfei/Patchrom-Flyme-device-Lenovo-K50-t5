.class Lcom/android/server/net/NetworkStatsService$9;
.super Landroid/net/INetworkStatsSession$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsService;->createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCallingPackage:Ljava/lang/String;

.field private mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

.field private mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$callingPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;
    .param p2, "val$callingPackage"    # Ljava/lang/String;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService$9;->val$callingPackage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/net/INetworkStatsSession$Stub;-><init>()V

    .line 511
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->val$callingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    .line 508
    return-void
.end method

.method private getUidComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get3(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get4(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get3(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get5(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 602
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 603
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 601
    return-void
.end method

.method public getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap3(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 541
    new-instance v8, Landroid/net/NetworkStats;

    sub-long v0, p4, p2

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 542
    .local v8, "result":Landroid/net/NetworkStats;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 544
    .local v6, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->-wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    return-object v8

    .line 545
    :catchall_0
    move-exception v0

    .line 546
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 545
    throw v0
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->-wrap0(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 580
    if-nez p4, :cond_0

    .line 581
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 592
    if-nez p4, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getMobileTotalBytes(IJJ)J
    .locals 16
    .param p1, "subSim"    # I
    .param p2, "start_time"    # J
    .param p4, "end_time"    # J

    .prologue
    .line 610
    const/4 v11, 0x0

    .line 611
    .local v11, "subscriberId":Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 613
    .local v14, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->-get0(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 614
    .local v12, "tele":Landroid/telephony/TelephonyManager;
    if-eqz v12, :cond_4

    .line 616
    :try_start_0
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    .line 617
    const/4 v9, -0x1

    .line 618
    .local v9, "subId":I
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    .line 619
    .local v10, "subIds":[I
    if-eqz v10, :cond_0

    array-length v2, v10

    if-eqz v2, :cond_0

    .line 620
    const/4 v2, 0x0

    aget v9, v10, v2

    .line 623
    :cond_0
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 625
    const-string/jumbo v2, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dual sim subSim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 626
    const-string/jumbo v5, " fetch subID fail, always fetch default"

    .line 625
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v9

    .line 630
    :cond_1
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 631
    invoke-virtual {v12, v9}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v11

    .line 632
    .local v11, "subscriberId":Ljava/lang/String;
    invoke-static {v11}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 633
    .local v3, "templete":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 646
    .end local v3    # "templete":Landroid/net/NetworkTemplate;
    .end local v9    # "subId":I
    .end local v10    # "subIds":[I
    .end local v11    # "subscriberId":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMobileTotalBytes subSim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " subscriberId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 647
    const-string/jumbo v5, " start_time="

    .line 646
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 647
    const-string/jumbo v5, " end_time"

    .line 646
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 648
    const-string/jumbo v5, " totalBytes="

    .line 646
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-wide v14

    .line 635
    .restart local v9    # "subId":I
    .restart local v10    # "subIds":[I
    .local v11, "subscriberId":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "NetworkStats"

    const-string/jumbo v4, "getMobileTotalBytes subId not valid"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 640
    .end local v9    # "subId":I
    .end local v10    # "subIds":[I
    .end local v11    # "subscriberId":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 641
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMobileTotalBytes Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 638
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "subscriberId":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string/jumbo v2, "NetworkStats"

    const-string/jumbo v4, "getMobileTotalBytes SimState != SIM_STATE_READY"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 644
    :cond_4
    const-string/jumbo v2, "NetworkStats"

    const-string/jumbo v4, "getMobileTotalBytes TelephonyManager is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getRelevantUids()[I
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 534
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids()[I

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 567
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v6

    .line 568
    .local v6, "stats":Landroid/net/NetworkStats;
    if-eqz p6, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v7

    .line 571
    .local v7, "tagStats":Landroid/net/NetworkStats;
    invoke-virtual {v6, v7}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 573
    .end local v7    # "tagStats":Landroid/net/NetworkStats;
    :cond_0
    return-object v6
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap3(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->-wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method
