.class Lcom/android/internal/telephony/InboundSmsHandler$IdleState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string/jumbo v1, "entering Idle state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-wide/16 v2, 0xbb8

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessageDelayed(IJ)V

    .line 442
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string/jumbo v1, "acquired wakelock, leaving Idle state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IdleState.processMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Idle state processing message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 457
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 488
    const/4 v0, 0x0

    return v0

    .line 464
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap1(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap3(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    .line 466
    return v3

    .line 469
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string/jumbo v1, "mWakeLock is still held after release"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 478
    :goto_0
    return v3

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string/jumbo v1, "mWakeLock released"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :sswitch_2
    return v3

    .line 457
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x8 -> :sswitch_0
        0xbb9 -> :sswitch_0
    .end sparse-switch
.end method
