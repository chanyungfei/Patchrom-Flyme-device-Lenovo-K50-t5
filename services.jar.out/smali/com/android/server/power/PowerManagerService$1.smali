.class Lcom/android/server/power/PowerManagerService$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDisplayState:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 2402
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2403
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    .line 2402
    return-void
.end method


# virtual methods
.method public acquireSuspendBlocker()V
    .locals 1

    .prologue
    .line 2468
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get8(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 2467
    return-void
.end method

.method public onDisplayStateChange(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    .line 2444
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2445
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    if-eq v0, p1, :cond_1

    .line 2446
    iput p1, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    .line 2447
    if-ne p1, v2, :cond_2

    .line 2448
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get5(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2449
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-wrap31(Lcom/android/server/power/PowerManagerService;Z)V

    .line 2451
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2452
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-wrap30(Lcom/android/server/power/PowerManagerService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 2440
    return-void

    .line 2455
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2456
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-wrap30(Lcom/android/server/power/PowerManagerService;Z)V

    .line 2458
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get5(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2459
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-wrap31(Lcom/android/server/power/PowerManagerService;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2444
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onProximityNegative()V
    .locals 9

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2426
    :try_start_0
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "onProximityNegative"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set7(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2428
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get6(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set2(Lcom/android/server/power/PowerManagerService;I)I

    .line 2429
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2430
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    .line 2429
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->-wrap8(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 2431
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2432
    const-string/jumbo v4, "android.server.power:POWER"

    .line 2434
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2433
    const/16 v5, 0x3e8

    .line 2435
    const/16 v7, 0x3e8

    .line 2431
    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->-wrap9(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)Z

    .line 2436
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap38(Lcom/android/server/power/PowerManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 2424
    return-void

    .line 2425
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public onProximityPositive()V
    .locals 3

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2416
    :try_start_0
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v2, "onProximityPositive"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-set7(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2418
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get6(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-set2(Lcom/android/server/power/PowerManagerService;I)I

    .line 2419
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap38(Lcom/android/server/power/PowerManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2414
    return-void

    .line 2415
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStateChanged()V
    .locals 3

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2408
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get6(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-set2(Lcom/android/server/power/PowerManagerService;I)I

    .line 2409
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap38(Lcom/android/server/power/PowerManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2406
    return-void

    .line 2407
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public releaseSuspendBlocker()V
    .locals 1

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get8(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 2472
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2478
    monitor-enter p0

    .line 2479
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$1;->mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
