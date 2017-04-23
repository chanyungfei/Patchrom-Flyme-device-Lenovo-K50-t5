.class Lcom/android/server/wm/WindowManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x64

    const/16 v4, 0x10

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-get2(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/KeyguardDisableHandler;

    move-result-object v1

    .line 351
    const/4 v2, 0x3

    .line 350
    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardDisableHandler;->sendEmptyMessage(I)Z

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    const-string/jumbo v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 354
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 357
    const-string/jumbo v1, "service.bootanim.exit"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "set \'service.bootanim.exit\' = 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isAlarmBoot()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->-set0(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 362
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-get1(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Alarm boot is running"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    .line 371
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mIsUpdateIpoRotation:Z

    if-eqz v1, :cond_0

    .line 372
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Update IPO rotation is done"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_2
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "service.bootanim.exit"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 374
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "service.bootanim.exit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 375
    const-string/jumbo v3, "service.bootanim.exit"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 366
    :cond_2
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Alarm boot is not running"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 378
    :cond_3
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 379
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v1, Lcom/android/server/wm/WindowManagerService;->mIsUpdateIpoRotation:Z

    .line 380
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mIpoRotation:I

    if-eq v1, v6, :cond_4

    .line 381
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mIpoRotation:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->freezeRotation(I)V

    .line 382
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput v6, v1, Lcom/android/server/wm/WindowManagerService;->mIpoRotation:I

    goto/16 :goto_0

    .line 384
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->thawRotation()V

    goto/16 :goto_0

    .line 388
    :cond_5
    const-string/jumbo v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 390
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-wrap2(Lcom/android/server/wm/WindowManagerService;)V

    .line 391
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 392
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "UPDATE_IPO_ROTATION"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 396
    :cond_6
    const-string/jumbo v1, "android.intent.action.normal.boot.done"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 398
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1, v5}, Lcom/android/server/wm/WindowManagerService;->-set0(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 400
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eqz v1, :cond_7

    .line 401
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1, v3}, Lcom/android/server/wm/WindowManagerService;->-set1(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 403
    :cond_7
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Alarm boot is done"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v1, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    .line 405
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 406
    :cond_8
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 408
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v1, Lcom/android/server/wm/WindowManagerService;->mHasReceiveIPO:Z

    .line 410
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "IPO_ENABLE, setEventDispatching false"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    .line 412
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isRotationFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/WindowManagerService;->mIpoRotation:I

    goto/16 :goto_0

    .line 415
    :cond_9
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 416
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mHasReceiveIPO:Z

    if-eqz v1, :cond_a

    .line 417
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput v5, v1, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 418
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy;->setRotationLw(I)V

    .line 419
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Re-initialize the rotation value to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v1, Lcom/android/server/wm/WindowManagerService;->mHasReceiveIPO:Z

    .line 424
    :cond_a
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 431
    :cond_b
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Configuration changed, remove fast starting window catch"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$1;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-get0(Lcom/android/server/wm/WindowManagerService;)Landroid/util/LruCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    goto/16 :goto_0
.end method
