.class final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 653
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 652
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 658
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 656
    :goto_0
    return-void

    .line 660
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    goto :goto_0

    .line 663
    :pswitch_1
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    .line 664
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)V

    .line 667
    :try_start_0
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-wrap0(Lcom/android/server/DeviceIdleController;)Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 668
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get2(Lcom/android/server/DeviceIdleController;)Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/mediatek/datashaping/IDataShapingManager;->setDeviceIdleMode(Z)V

    .line 671
    :cond_0
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 672
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8, v6}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 675
    :goto_1
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 676
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    goto :goto_0

    .line 679
    :pswitch_2
    const-string/jumbo v5, "unknown"

    invoke-static {v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 680
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)V

    .line 682
    :try_start_1
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 683
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8, v6}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ZLjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 686
    :goto_2
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 687
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    goto/16 :goto_0

    .line 690
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 691
    .local v0, "activeReason":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 692
    .local v1, "activeUid":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    .line 694
    .local v3, "needBroadcast":Z
    :goto_3
    if-eqz v0, :cond_4

    move-object v5, v0

    .line 693
    :goto_4
    invoke-static {v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 695
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)V

    .line 698
    :try_start_2
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-wrap0(Lcom/android/server/DeviceIdleController;)Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 699
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get2(Lcom/android/server/DeviceIdleController;)Lcom/mediatek/datashaping/IDataShapingManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/mediatek/datashaping/IDataShapingManager;->setDeviceIdleMode(Z)V

    .line 702
    :cond_1
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 703
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ZLjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 706
    :goto_5
    if-eqz v3, :cond_2

    .line 707
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 709
    :cond_2
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    goto/16 :goto_0

    .line 692
    .end local v3    # "needBroadcast":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "needBroadcast":Z
    goto :goto_3

    .line 694
    :cond_4
    const-string/jumbo v5, "unknown"

    goto :goto_4

    .line 712
    .end local v0    # "activeReason":Ljava/lang/String;
    .end local v1    # "activeUid":I
    .end local v3    # "needBroadcast":Z
    :pswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 713
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v5, v4}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    goto/16 :goto_0

    .line 704
    .end local v4    # "uid":I
    .restart local v0    # "activeReason":Ljava/lang/String;
    .restart local v1    # "activeUid":I
    .restart local v3    # "needBroadcast":Z
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_5

    .line 684
    .end local v0    # "activeReason":Ljava/lang/String;
    .end local v1    # "activeUid":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "needBroadcast":Z
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 673
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 658
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
