.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetachingState"
.end annotation


# instance fields
.field private mCurrentDisallowedSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 536
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    .line 535
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v1, "DetachingState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .line 548
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    .line 547
    const v3, 0x43003

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;ZLandroid/os/Message;)V

    .line 549
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    const-string/jumbo v1, "detaching"

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get12(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->notifyDcSwitchStateChange(Ljava/lang/String;ILjava/lang/String;)V

    .line 539
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 556
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 617
    const/4 v2, 0x0

    .line 620
    .local v2, "retVal":Z
    :goto_0
    return v2

    .line 558
    .end local v2    # "retVal":Z
    :sswitch_0
    const/4 v0, 0x0

    .line 560
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 561
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 562
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const-string/jumbo v3, "DcSwitchStateMachine.DetachingState: REQ_CONNECT"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 565
    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DetachingState: REQ_CONNECT, apnRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 568
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v3, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    .line 569
    const/4 v2, 0x1

    .line 570
    .restart local v2    # "retVal":Z
    goto :goto_0

    .line 583
    .end local v2    # "retVal":Z
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 584
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eq v3, v4, :cond_1

    .line 585
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EVENT_DATA_DISALLOWED ignored arg1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", seq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 586
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    .line 585
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 602
    :goto_1
    const/4 v2, 0x1

    .line 603
    .restart local v2    # "retVal":Z
    goto :goto_0

    .line 587
    .end local v2    # "retVal":Z
    :cond_1
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 591
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EVENT_DATA_DISALLOWED failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 592
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 593
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 595
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 599
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v4, "DetachingState: PS detached"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 600
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 607
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v4, "DetachingState: REQ_DISCONNECT_ALL, already detaching"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 609
    const/4 v2, 0x1

    .line 610
    .restart local v2    # "retVal":Z
    goto/16 :goto_0

    .line 556
    :sswitch_data_0
    .sparse-switch
        0x43003 -> :sswitch_1
        0x44000 -> :sswitch_0
        0x44002 -> :sswitch_2
    .end sparse-switch
.end method
