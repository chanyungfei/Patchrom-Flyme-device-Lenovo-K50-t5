.class public Lcom/android/server/am/ActivityManagerService$MWAmsCallback;
.super Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MWAmsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 23604
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public moveActivityTaskToFront(Landroid/os/IBinder;)Z
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 23612
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "moveActivityTaskToFront"

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 23613
    const/4 v3, 0x0

    .line 23614
    .local v3, "res":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 23615
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 23616
    .local v0, "origId":J
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 23617
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 23622
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 23624
    return v3

    .line 23618
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 23619
    const-string/jumbo v7, "moveActivityTaskToFront"

    .line 23618
    const/4 v8, 0x0

    .line 23619
    const/4 v9, 0x0

    .line 23618
    invoke-virtual {v4, v6, v8, v9, v7}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23620
    const/4 v3, 0x1

    goto :goto_0

    .line 23614
    .end local v0    # "origId":J
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public restoreStack(Landroid/os/IBinder;Z)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "toMax"    # Z

    .prologue
    .line 23629
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "restoreStack"

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 23630
    const/4 v3, 0x0

    .line 23631
    .local v3, "res":Z
    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BMW] restoreStack:token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", toMax = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23632
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 23633
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 23634
    .local v0, "origId":J
    const/4 v2, 0x0

    .line 23635
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_3

    .line 23636
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 23641
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    if-eqz v2, :cond_2

    .line 23642
    if-eqz p2, :cond_4

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v5

    .line 23643
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    .line 23642
    invoke-virtual {v5, v7}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 23646
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v5

    .line 23647
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 23646
    invoke-virtual {v5, v7}, Lcom/mediatek/multiwindow/MultiWindowProxy;->shouldRestartWhenMiniMax(Ljava/lang/String;)Z

    move-result v4

    .line 23648
    .local v4, "shouldRestart":Z
    if-eqz v4, :cond_0

    .line 23649
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 23651
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveFloatingStackToAppStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    .line 23664
    .end local v4    # "shouldRestart":Z
    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 23666
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 23628
    return-void

    .line 23638
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v5, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_0

    .line 23652
    :cond_4
    if-nez p2, :cond_1

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_1

    .line 23653
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMwActivityMonitor:Lcom/android/server/am/MwActivityMonitor;

    invoke-virtual {v5}, Lcom/android/server/am/MwActivityMonitor;->isBlockedByFloatingStackSizeWhenRestore()Z

    move-result v5

    if-nez v5, :cond_1

    .line 23656
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v5

    .line 23657
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 23656
    invoke-virtual {v5, v7}, Lcom/mediatek/multiwindow/MultiWindowProxy;->shouldRestartWhenMiniMax(Ljava/lang/String;)Z

    move-result v4

    .line 23658
    .restart local v4    # "shouldRestart":Z
    if-eqz v4, :cond_5

    .line 23659
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 23661
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveActivityTaskToFloatingStackLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 23632
    .end local v0    # "origId":J
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "shouldRestart":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public switchMultiWindowMode()V
    .locals 4

    .prologue
    .line 23673
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 23674
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 23675
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->switchMultiWindowMode()V

    .line 23676
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 23672
    return-void

    .line 23673
    .end local v0    # "origId":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
