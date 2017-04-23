.class Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnpinEventDetector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector$1;
    }
.end annotation


# static fields
.field private static final STATE_DETECT:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_UNPIN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager.UnpinEventDetector"

.field private static final UNPIN_DISPATCH_DELAY_MILLIS:I = 0xc8


# instance fields
.field private final mUnpinRunnable:Ljava/lang/Runnable;

.field private mUnpinState:I

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->setState(I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 8444
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8450
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    .line 8578
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinRunnable:Ljava/lang/Runnable;

    .line 8444
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method

.method private cancelPendingUnpinAction()V
    .locals 2

    .prologue
    .line 8574
    const-string/jumbo v0, "WindowManager.UnpinEventDetector"

    const-string/jumbo v1, "cancelPendingUnpinAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8575
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8572
    return-void
.end method

.method private getUnpinActionLongPressDelay()J
    .locals 2

    .prologue
    .line 8569
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method private setState(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 8558
    const-string/jumbo v0, "WindowManager.UnpinEventDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "), old state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8559
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    .line 8556
    return-void
.end method

.method private triggerUnpinActionTimer()V
    .locals 4

    .prologue
    .line 8564
    const-string/jumbo v0, "WindowManager.UnpinEventDetector"

    const-string/jumbo v1, "triggerUnpinActionTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8565
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->getUnpinActionLongPressDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8562
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;I)J
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 8524
    const-string/jumbo v1, "WindowManager.UnpinEventDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interceptKeyBeforeDispatching("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8526
    const-string/jumbo v1, "WindowManager.UnpinEventDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current unpin state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8527
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    packed-switch v1, :pswitch_data_0

    .line 8552
    return-wide v4

    .line 8529
    :pswitch_0
    return-wide v4

    .line 8532
    :pswitch_1
    const-string/jumbo v1, "WindowManager.UnpinEventDetector"

    const-string/jumbo v2, "wait a little while for unpin action"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8533
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 8534
    return-wide v4

    .line 8536
    :cond_0
    return-wide v8

    .line 8539
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 8540
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 8541
    .local v0, "down":Z
    :goto_0
    if-nez v0, :cond_1

    .line 8542
    invoke-direct {p0, v6}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->setState(I)V

    .line 8545
    :cond_1
    const-string/jumbo v2, "WindowManager.UnpinEventDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unpin feature consumes KeyEvent.KEYCODE_BACK "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8546
    if-eqz v0, :cond_3

    const-string/jumbo v1, "down"

    .line 8545
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8547
    return-wide v8

    .line 8540
    .end local v0    # "down":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "down":Z
    goto :goto_0

    .line 8546
    :cond_3
    const-string/jumbo v1, "up"

    goto :goto_1

    .line 8549
    .end local v0    # "down":Z
    :cond_4
    return-wide v4

    .line 8527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v10, 0x1

    .line 8453
    const-string/jumbo v7, "WindowManager.UnpinEventDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "interceptKeyBeforeQueueing("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8454
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x1

    .line 8456
    .local v0, "down":Z
    :goto_0
    const-string/jumbo v7, "WindowManager.UnpinEventDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "current unpin state is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8457
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    packed-switch v7, :pswitch_data_0

    .line 8451
    :cond_0
    :goto_1
    return-void

    .line 8454
    .end local v0    # "down":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "down":Z
    goto :goto_0

    .line 8459
    :pswitch_0
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    .line 8460
    .local v6, "screenOn":Z
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v4

    .line 8463
    .local v4, "keyguardOn":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 8468
    .local v5, "pinOn":Z
    if-nez v6, :cond_2

    .line 8470
    const-string/jumbo v7, "WindowManager.UnpinEventDetector"

    const-string/jumbo v8, "screen off ,do nothing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8464
    .end local v5    # "pinOn":Z
    :catch_0
    move-exception v1

    .line 8465
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "WindowManager.UnpinEventDetector"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8466
    return-void

    .line 8471
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v5    # "pinOn":Z
    :cond_2
    if-eqz v4, :cond_3

    .line 8473
    const-string/jumbo v7, "WindowManager.UnpinEventDetector"

    const-string/jumbo v8, "keyguard on, do nothing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8474
    :cond_3
    if-nez v5, :cond_4

    .line 8476
    const-string/jumbo v7, "WindowManager.UnpinEventDetector"

    const-string/jumbo v8, "pin off , do nothing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8478
    :cond_4
    if-eqz v0, :cond_9

    .line 8479
    const/high16 v7, 0x20000000

    and-int/2addr v7, p2

    if-eqz v7, :cond_5

    const/4 v3, 0x1

    .line 8480
    .local v3, "interactive":Z
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    .line 8481
    .local v2, "fallback":Z
    :goto_3
    if-nez v3, :cond_7

    .line 8483
    const-string/jumbo v7, "WindowManager.UnpinEventDetector"

    const-string/jumbo v8, "not interactive, do nothing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8479
    .end local v2    # "fallback":Z
    .end local v3    # "interactive":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "interactive":Z
    goto :goto_2

    .line 8480
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "fallback":Z
    goto :goto_3

    .line 8484
    :cond_7
    if-eqz v2, :cond_8

    .line 8486
    const-string/jumbo v7, "WindowManager.UnpinEventDetector"

    const-string/jumbo v8, "fallback, do nothing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8488
    :cond_8
    invoke-direct {p0, v10}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->setState(I)V

    .line 8489
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->triggerUnpinActionTimer()V

    goto :goto_1

    .line 8493
    .end local v2    # "fallback":Z
    .end local v3    # "interactive":Z
    :cond_9
    const-string/jumbo v7, "WindowManager.UnpinEventDetector"

    const-string/jumbo v8, "why receive up key before down key?"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8498
    .end local v4    # "keyguardOn":Z
    .end local v5    # "pinOn":Z
    .end local v6    # "screenOn":Z
    :pswitch_1
    if-eqz v0, :cond_a

    .line 8500
    const-string/jumbo v7, "WindowManager.UnpinEventDetector"

    const-string/jumbo v8, "why receive down key before up key?"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8502
    :cond_a
    monitor-enter p0

    .line 8503
    :try_start_1
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    if-ne v7, v10, :cond_b

    .line 8504
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->setState(I)V

    .line 8505
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->cancelPendingUnpinAction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    monitor-exit p0

    goto/16 :goto_1

    .line 8502
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 8511
    :pswitch_2
    if-eqz v0, :cond_0

    .line 8513
    const-string/jumbo v7, "WindowManager.UnpinEventDetector"

    const-string/jumbo v8, "why receive down key before up key?"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
