.class final Lcom/android/server/am/ActivityManagerService$UiHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1522
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1521
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 33
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1527
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1526
    :cond_0
    :goto_0
    return-void

    .line 1529
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/HashMap;

    .line 1530
    .local v24, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1531
    const-string/jumbo v4, "anr_show_background"

    const/4 v5, 0x0

    .line 1530
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v29, 0x1

    .line 1533
    .local v29, "showBackground":Z
    :goto_1
    const/4 v7, 0x0

    .line 1534
    .local v7, "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1535
    :try_start_0
    const-string/jumbo v3, "app"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ProcessRecord;

    .line 1536
    .local v27, "proc":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v3, "result"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/AppErrorResult;

    .line 1537
    .local v28, "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v27, :cond_3

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_3

    .line 1538
    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "App already has crash dialog: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    if-eqz v28, :cond_1

    .line 1540
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v5

    .line 1542
    return-void

    .line 1530
    .end local v7    # "d":Landroid/app/Dialog;
    .end local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v28    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v29    # "showBackground":Z
    :cond_2
    const/16 v29, 0x0

    .restart local v29    # "showBackground":Z
    goto :goto_1

    .line 1544
    .restart local v7    # "d":Landroid/app/Dialog;
    .restart local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "res":Lcom/android/server/am/AppErrorResult;
    :cond_3
    :try_start_1
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 1545
    const/16 v4, 0x2710

    .line 1544
    if-lt v3, v4, :cond_5

    .line 1546
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_4

    const/16 v25, 0x1

    .line 1547
    .local v25, "isBackground":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v3, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    const/4 v3, 0x0

    array-length v9, v8

    move v4, v3

    .end local v25    # "isBackground":Z
    :goto_3
    if-ge v4, v9, :cond_7

    aget v31, v8, v4

    .line 1548
    .local v31, "userId":I
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, v31

    if-eq v3, v0, :cond_6

    const/4 v3, 0x1

    :goto_4
    and-int v25, v25, v3

    .line 1547
    .local v25, "isBackground":Z
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    .line 1546
    .end local v25    # "isBackground":Z
    .end local v31    # "userId":I
    :cond_4
    const/16 v25, 0x0

    .local v25, "isBackground":Z
    goto :goto_2

    .line 1544
    .end local v25    # "isBackground":Z
    :cond_5
    const/16 v25, 0x0

    .restart local v25    # "isBackground":Z
    goto :goto_2

    .line 1548
    .end local v25    # "isBackground":Z
    .restart local v31    # "userId":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 1550
    .end local v31    # "userId":I
    :cond_7
    if-eqz v25, :cond_8

    if-eqz v29, :cond_c

    .line 1557
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1573
    :cond_9
    if-eqz v28, :cond_a

    .line 1574
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "d":Landroid/app/Dialog;
    :cond_a
    :goto_5
    monitor-exit v5

    .line 1580
    if-eqz v7, :cond_b

    .line 1581
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 1584
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1551
    .restart local v7    # "d":Landroid/app/Dialog;
    :cond_c
    :try_start_2
    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Skipping crash dialog of "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ": background"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    if-eqz v28, :cond_d

    .line 1553
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    monitor-exit v5

    .line 1555
    return-void

    .line 1557
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_9

    .line 1561
    new-instance v23, Lcom/android/server/am/LenovoAppErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1561
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/am/LenovoAppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1569
    .end local v7    # "d":Landroid/app/Dialog;
    .local v23, "d":Landroid/app/Dialog;
    :try_start_4
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    move-object/from16 v7, v23

    .line 1557
    .end local v23    # "d":Landroid/app/Dialog;
    .local v7, "d":Landroid/app/Dialog;
    goto :goto_5

    .line 1534
    .end local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v28    # "res":Lcom/android/server/am/AppErrorResult;
    .local v7, "d":Landroid/app/Dialog;
    :catchall_0
    move-exception v3

    .end local v7    # "d":Landroid/app/Dialog;
    :goto_6
    monitor-exit v5

    throw v3

    .line 1587
    .end local v24    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v29    # "showBackground":Z
    :sswitch_1
    const/16 v23, 0x0

    .line 1588
    .local v23, "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 1589
    :try_start_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/HashMap;

    .line 1590
    .restart local v24    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "app"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ProcessRecord;

    .line 1591
    .restart local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v27, :cond_f

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_f

    .line 1592
    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "App already has anr dialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v32

    .line 1593
    return-void

    .line 1596
    :cond_f
    :try_start_6
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.ANR"

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1597
    .local v6, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v3, :cond_10

    .line 1598
    const/high16 v3, 0x50000000

    invoke-virtual {v6, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1601
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1603
    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1601
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1602
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    .line 1603
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x3e8

    const/16 v19, 0x0

    .line 1601
    invoke-static/range {v3 .. v19}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1607
    new-instance v7, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 1609
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_12

    const/4 v12, 0x1

    :goto_7
    move-object/from16 v10, v27

    .line 1607
    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1611
    .local v7, "d":Landroid/app/Dialog;
    :try_start_7
    move-object/from16 v0, v27

    iput-object v7, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .end local v23    # "d":Landroid/app/Dialog;
    :goto_8
    monitor-exit v32

    .line 1619
    if-eqz v7, :cond_11

    .line 1620
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 1623
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1609
    .end local v7    # "d":Landroid/app/Dialog;
    .restart local v23    # "d":Landroid/app/Dialog;
    :cond_12
    const/4 v12, 0x0

    goto :goto_7

    .line 1614
    :cond_13
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v7, v23

    .restart local v7    # "d":Landroid/app/Dialog;
    goto :goto_8

    .line 1588
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "d":Landroid/app/Dialog;
    .end local v24    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v3

    move-object/from16 v7, v23

    .end local v23    # "d":Landroid/app/Dialog;
    .restart local v7    # "d":Landroid/app/Dialog;
    :goto_9
    monitor-exit v32

    throw v3

    .line 1626
    .end local v7    # "d":Landroid/app/Dialog;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/HashMap;

    .line 1627
    .restart local v24    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 1628
    .local v7, "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1629
    :try_start_9
    const-string/jumbo v3, "app"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ProcessRecord;

    .line 1630
    .restart local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v27, :cond_15

    .line 1631
    const-string/jumbo v3, "ActivityManager"

    const-string/jumbo v5, "App not found when showing strict mode dialog."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v24    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_14
    :goto_a
    monitor-exit v4

    goto/16 :goto_0

    .line 1634
    .restart local v24    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_15
    :try_start_a
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_16

    .line 1635
    const-string/jumbo v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "App already has strict mode dialog: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    monitor-exit v4

    .line 1636
    return-void

    .line 1638
    :cond_16
    :try_start_b
    const-string/jumbo v3, "result"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/AppErrorResult;

    .line 1639
    .restart local v28    # "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1648
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .end local v7    # "d":Landroid/app/Dialog;
    :goto_b
    monitor-exit v4

    .line 1652
    if-eqz v7, :cond_18

    .line 1653
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 1656
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1639
    .restart local v7    # "d":Landroid/app/Dialog;
    :cond_19
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_17

    .line 1641
    new-instance v23, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1642
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1641
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1644
    .end local v7    # "d":Landroid/app/Dialog;
    .local v23, "d":Landroid/app/Dialog;
    :try_start_d
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-object/from16 v7, v23

    .line 1639
    .end local v23    # "d":Landroid/app/Dialog;
    .local v7, "d":Landroid/app/Dialog;
    goto :goto_b

    .line 1628
    .end local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v28    # "res":Lcom/android/server/am/AppErrorResult;
    .local v7, "d":Landroid/app/Dialog;
    :catchall_2
    move-exception v3

    .end local v7    # "d":Landroid/app/Dialog;
    :goto_c
    monitor-exit v4

    throw v3

    .line 1659
    .end local v24    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_3
    new-instance v7, Lcom/android/server/am/FactoryErrorDialog;

    .line 1660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "msg"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1659
    invoke-direct {v7, v3, v4}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1661
    .local v7, "d":Landroid/app/Dialog;
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 1662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1665
    .end local v7    # "d":Landroid/app/Dialog;
    :sswitch_4
    const/4 v7, 0x0

    .line 1666
    .local v7, "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1667
    :try_start_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/am/ProcessRecord;

    .line 1668
    .local v20, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1b

    .line 1669
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v3, :cond_1a

    .line 1671
    new-instance v23, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 1672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1673
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1671
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v5, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1674
    .end local v7    # "d":Landroid/app/Dialog;
    .restart local v23    # "d":Landroid/app/Dialog;
    :try_start_f
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1675
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object/from16 v7, v23

    .end local v23    # "d":Landroid/app/Dialog;
    :cond_1a
    :goto_d
    monitor-exit v4

    .line 1686
    if-eqz v7, :cond_0

    .line 1687
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 1679
    .restart local v7    # "d":Landroid/app/Dialog;
    :cond_1b
    :try_start_10
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1a

    .line 1680
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1681
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_d

    .line 1666
    .end local v20    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v3

    .end local v7    # "d":Landroid/app/Dialog;
    :goto_e
    monitor-exit v4

    throw v3

    .line 1692
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1693
    new-instance v22, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1694
    .local v22, "d":Landroid/app/AlertDialog;
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1695
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104011a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104057d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1699
    const/16 v4, 0x30

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1698
    const/4 v5, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1700
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1704
    .end local v22    # "d":Landroid/app/AlertDialog;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1705
    new-instance v22, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1706
    .restart local v22    # "d":Landroid/app/AlertDialog;
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1707
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104011a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104057e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1711
    const/16 v4, 0x30

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1710
    const/4 v5, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1712
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1716
    .end local v22    # "d":Landroid/app/AlertDialog;
    :sswitch_7
    const/4 v7, 0x0

    .line 1717
    .restart local v7    # "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1718
    :try_start_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/am/ActivityRecord;

    .line 1719
    .local v21, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v3, :cond_1d

    .line 1720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v3, v3, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1721
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1720
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-result v3

    if-eqz v3, :cond_1c

    monitor-exit v4

    .line 1722
    return-void

    .line 1724
    :cond_1c
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v3}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 1725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 1727
    :cond_1d
    if-eqz v21, :cond_14

    goto/16 :goto_a

    .line 1717
    .end local v21    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_4
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1751
    .end local v7    # "d":Landroid/app/Dialog;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/android/server/am/ActivityManagerService;->-wrap10(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1755
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/app/Dialog;

    .line 1756
    .local v7, "d":Landroid/app/Dialog;
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 1760
    .end local v7    # "d":Landroid/app/Dialog;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->-wrap5(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 1764
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    .line 1765
    .local v26, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    .line 1766
    .local v30, "uid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v26

    move/from16 v1, v30

    invoke-static {v3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->-wrap4(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_0

    .line 1770
    .end local v26    # "pid":I
    .end local v30    # "uid":I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->-wrap6(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 1666
    .restart local v20    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "d":Landroid/app/Dialog;
    :catchall_5
    move-exception v3

    move-object/from16 v7, v23

    .end local v23    # "d":Landroid/app/Dialog;
    .restart local v7    # "d":Landroid/app/Dialog;
    goto/16 :goto_e

    .line 1628
    .end local v7    # "d":Landroid/app/Dialog;
    .end local v20    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "d":Landroid/app/Dialog;
    .restart local v24    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_6
    move-exception v3

    move-object/from16 v7, v23

    .end local v23    # "d":Landroid/app/Dialog;
    .restart local v7    # "d":Landroid/app/Dialog;
    goto/16 :goto_c

    .line 1588
    .end local v28    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v6    # "intent":Landroid/content/Intent;
    :catchall_7
    move-exception v3

    goto/16 :goto_9

    .line 1534
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "d":Landroid/app/Dialog;
    .restart local v23    # "d":Landroid/app/Dialog;
    .restart local v28    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v29    # "showBackground":Z
    :catchall_8
    move-exception v3

    move-object/from16 v7, v23

    .end local v23    # "d":Landroid/app/Dialog;
    .restart local v7    # "d":Landroid/app/Dialog;
    goto/16 :goto_6

    .line 1527
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x6 -> :sswitch_4
        0xe -> :sswitch_5
        0xf -> :sswitch_6
        0x1a -> :sswitch_2
        0x1e -> :sswitch_7
        0x1f -> :sswitch_a
        0x20 -> :sswitch_b
        0x2e -> :sswitch_8
        0x30 -> :sswitch_9
        0x36 -> :sswitch_c
    .end sparse-switch
.end method
