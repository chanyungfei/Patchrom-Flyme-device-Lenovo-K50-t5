.class Lcom/mediatek/audioprofile/AudioProfileService$6;
.super Landroid/content/BroadcastReceiver;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 542
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mUpgradeReceiver start update profile: action = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string/jumbo v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 547
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get20(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 549
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap7(Lcom/mediatek/audioprofile/AudioProfileService;)V

    .line 550
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get14(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get11(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "profileKey$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 552
    .local v1, "profileKey":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get17(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 554
    .local v12, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get9(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->-get1()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 555
    iput-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 559
    :cond_1
    iget-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 560
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    iget-object v13, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-ne v0, v13, :cond_3

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get9(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->-get0()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 561
    iput-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 565
    :cond_3
    iget-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    if-nez v0, :cond_4

    .line 567
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get9(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->-get3()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 566
    iput-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 570
    :cond_4
    iget-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get9(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->-get2()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 571
    iput-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 550
    .end local v1    # "profileKey":Ljava/lang/String;
    .end local v11    # "profileKey$iterator":Ljava/util/Iterator;
    .end local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .restart local v11    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_5
    monitor-exit v2

    .line 579
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    .line 580
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get9(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->-get1()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 579
    :goto_1
    invoke-static {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-set5(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z

    .line 583
    .end local v11    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get23(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, "volumePath":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v7, "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get11(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 588
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 589
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "profileKey$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 590
    .restart local v1    # "profileKey":Ljava/lang/String;
    const-string/jumbo v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mUpgradeReceive deal case: profileKey = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v9, 0x0

    .line 592
    .local v9, "newUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v12

    .line 594
    .restart local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const-string/jumbo v0, "ro.mtk_multisim_ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 597
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get8(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v10

    .line 598
    .local v10, "numSlots":I
    const-wide/16 v4, -0x1

    .line 599
    .local v4, "simId":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v10, :cond_8

    .line 600
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    int-to-long v4, v0

    .line 602
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    .line 603
    const/4 v2, 0x1

    .line 602
    invoke-static/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap9(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 606
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    .line 607
    const/16 v2, 0x8

    .line 606
    invoke-static/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap9(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 599
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 580
    .end local v1    # "profileKey":Ljava/lang/String;
    .end local v3    # "volumePath":[Ljava/lang/String;
    .end local v4    # "simId":J
    .end local v7    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v9    # "newUri":Landroid/net/Uri;
    .end local v10    # "numSlots":I
    .end local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 613
    .restart local v1    # "profileKey":Ljava/lang/String;
    .restart local v3    # "volumePath":[Ljava/lang/String;
    .restart local v7    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "newUri":Landroid/net/Uri;
    .restart local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_8
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap8(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap8(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap8(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap8(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 627
    .end local v1    # "profileKey":Ljava/lang/String;
    .end local v9    # "newUri":Landroid/net/Uri;
    .end local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_9
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap4(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 628
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap4(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 629
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap4(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 630
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap4(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 632
    .end local v3    # "volumePath":[Ljava/lang/String;
    .end local v7    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_a
    const-string/jumbo v0, "AudioProfileService"

    const-string/jumbo v2, "mUpgradeReceiver<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void
.end method
