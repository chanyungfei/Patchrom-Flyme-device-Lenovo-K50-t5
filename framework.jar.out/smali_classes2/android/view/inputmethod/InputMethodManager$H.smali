.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 408
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 409
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 408
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 414
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 413
    :goto_0
    return-void

    .line 416
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 418
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/io/FileDescriptor;

    .line 419
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Ljava/io/PrintWriter;

    iget-object v9, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/String;

    .line 418
    invoke-virtual {v10, v7, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_1
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v8

    .line 424
    :try_start_1
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 426
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 427
    return-void

    .line 420
    :catch_0
    move-exception v3

    .line 421
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 423
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 430
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/InputBindResult;

    .line 431
    .local v4, "res":Lcom/android/internal/view/InputBindResult;
    sget-boolean v7, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 432
    const-string/jumbo v7, "InputMethodManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleMessage: MSG_BIND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 435
    :try_start_2
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v7, v7, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v7, :cond_1

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v7, v7, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v9, v4, Lcom/android/internal/view/InputBindResult;->sequence:I

    if-eq v7, v9, :cond_3

    .line 436
    :cond_1
    const-string/jumbo v7, "InputMethodManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Ignoring onBind: cur seq="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v10, v10, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 437
    const-string/jumbo v10, ", given seq="

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 437
    iget v10, v4, Lcom/android/internal/view/InputBindResult;->sequence:I

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v7, v4, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v9, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v7, v9, :cond_2

    .line 439
    iget-object v7, v4, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v7}, Landroid/view/InputChannel;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit v8

    .line 441
    return-void

    .line 444
    :cond_3
    :try_start_3
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 445
    const/4 v9, 0x0

    .line 444
    invoke-static {v7, v9}, Landroid/view/inputmethod/InputMethodManager;->-set1(Landroid/view/inputmethod/InputMethodManager;I)I

    .line 447
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v4, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v7, v9}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 448
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v4, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v9, v7, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 449
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v4, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v9, v7, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 450
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v9, v4, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v9, v7, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v8

    .line 452
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7, v11, v10, v10, v10}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    .line 453
    return-void

    .line 434
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .line 456
    .end local v4    # "res":Lcom/android/internal/view/InputBindResult;
    :sswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 457
    .local v5, "sequence":I
    sget-boolean v7, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 458
    const-string/jumbo v7, "InputMethodManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleMessage: MSG_UNBIND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_4
    const/4 v6, 0x0

    .line 461
    .local v6, "startInput":Z
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 462
    :try_start_4
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v7, v7, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ne v7, v5, :cond_6

    .line 473
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    .line 477
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 478
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 480
    :cond_5
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v7, v7, Landroid/view/inputmethod/InputMethodManager;->mActive:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v7, :cond_6

    .line 481
    const/4 v6, 0x1

    :cond_6
    monitor-exit v8

    .line 485
    if-eqz v6, :cond_7

    .line 486
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7, v11, v10, v10, v10}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    .line 488
    :cond_7
    return-void

    .line 461
    :catchall_2
    move-exception v7

    monitor-exit v8

    throw v7

    .line 491
    .end local v5    # "sequence":I
    .end local v6    # "startInput":Z
    :sswitch_3
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_b

    const/4 v0, 0x1

    .line 492
    .local v0, "active":Z
    :goto_2
    sget-boolean v7, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v7, :cond_8

    .line 493
    const-string/jumbo v7, "InputMethodManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleMessage: MSG_SET_ACTIVE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v9, v9, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_8
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 496
    :try_start_5
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v0, v7, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 497
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    iput-boolean v9, v7, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 498
    if-nez v0, :cond_9

    .line 502
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 506
    :try_start_6
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v7}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 512
    :cond_9
    :goto_3
    :try_start_7
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->hasWindowFocus()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 518
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v9, v9, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->-wrap0(Landroid/view/inputmethod/InputMethodManager;ZZ)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 519
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_a
    monitor-exit v8

    .line 523
    return-void

    .line 491
    .end local v0    # "active":Z
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "active":Z
    goto :goto_2

    .line 495
    :catchall_3
    move-exception v7

    monitor-exit v8

    throw v7

    .line 526
    .end local v0    # "active":Z
    :sswitch_4
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-virtual {v8, v7}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    .line 527
    return-void

    .line 530
    :sswitch_5
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8, v10, v9}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    .line 531
    return-void

    .line 534
    :sswitch_6
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8, v10, v10}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    .line 535
    return-void

    .line 539
    :sswitch_7
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 540
    :try_start_8
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v7, :cond_d

    .line 541
    sget-boolean v7, Landroid/view/inputmethod/InputMethodManager;->DEBUG:Z

    if-eqz v7, :cond_c

    const-string/jumbo v7, "InputMethodManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uibc send char code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_c
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 544
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    iget v9, p1, Landroid/os/Message;->arg1:I

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 545
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v9, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_d
    monitor-exit v8

    .line 552
    :sswitch_8
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 553
    :try_start_9
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v9}, Landroid/view/inputmethod/InputMethodManager;->-set0(Landroid/view/inputmethod/InputMethodManager;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    monitor-exit v8

    goto/16 :goto_0

    .line 539
    :catchall_4
    move-exception v7

    monitor-exit v8

    throw v7

    .line 552
    :catchall_5
    move-exception v7

    monitor-exit v8

    throw v7

    .line 507
    .restart local v0    # "active":Z
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 414
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x9 -> :sswitch_8
        0x64 -> :sswitch_7
    .end sparse-switch
.end method
