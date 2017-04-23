.class Landroid/net/DhcpStateMachine$RunningState;
.super Lcom/android/internal/util/State;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunningState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 352
    iput-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 355
    const-string/jumbo v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/DhcpStateMachine$RunningState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 360
    const/4 v0, 0x1

    .line 361
    .local v0, "retValue":Z
    const-string/jumbo v1, "DhcpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/DhcpStateMachine$RunningState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 385
    const/4 v0, 0x0

    .line 387
    :goto_0
    :pswitch_0
    return v0

    .line 364
    :pswitch_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get0(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get5(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 365
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get12(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->-wrap5(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 368
    :pswitch_2
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get10(Landroid/net/DhcpStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get3(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    .line 371
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get7(Landroid/net/DhcpStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 370
    :goto_1
    const v3, 0x30004

    .line 371
    const/4 v4, 0x0

    .line 370
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 372
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get13(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->-wrap5(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 371
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 375
    :cond_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-wrap1(Landroid/net/DhcpStateMachine;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 376
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get12(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->-wrap5(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    .line 378
    :cond_2
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get4(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
