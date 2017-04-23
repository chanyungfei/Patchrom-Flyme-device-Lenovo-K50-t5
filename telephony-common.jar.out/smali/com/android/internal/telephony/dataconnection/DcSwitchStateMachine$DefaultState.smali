.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v2, 0x11002

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 627
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DefaultState: shouldn\'t happen but ignore msg.what=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 695
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 699
    :goto_0
    return v7

    .line 629
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 632
    const/4 v1, 0x3

    .line 631
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-set0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v5, v1, v4}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 638
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v4

    const-string/jumbo v5, "hi"

    move-object v1, p1

    .line 637
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V

    goto :goto_0

    .line 644
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_0

    .line 649
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-set0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    .line 653
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    .line 655
    .local v6, "val":Z
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v6, :cond_1

    move v3, v7

    :cond_1
    const v1, 0x44004

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_0

    .line 653
    .end local v6    # "val":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "val":Z
    goto :goto_1

    .line 659
    .end local v6    # "val":Z
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    move-result-object v1

    if-ne v0, v1, :cond_5

    const/4 v6, 0x1

    .line 662
    .restart local v6    # "val":Z
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 663
    if-eqz v6, :cond_3

    move v3, v7

    :cond_3
    const v1, 0x44006

    .line 662
    invoke-virtual {v0, p1, v1, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 659
    .end local v6    # "val":Z
    :cond_4
    const/4 v6, 0x1

    .restart local v6    # "val":Z
    goto :goto_2

    .line 660
    .end local v6    # "val":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "val":Z
    goto :goto_2

    .line 667
    .end local v6    # "val":Z
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-set3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)Lcom/android/internal/util/IState;

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 675
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v1, "DefaultState: unhandle REQ_PRECHECK_DONE"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 680
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v1, "DefaultState: get DC switch state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 683
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 682
    const v2, 0x4400d

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 687
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v1, "DefaultState: EVENT_DATA_DETACHED"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-set1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z

    goto/16 :goto_0

    .line 627
    nop

    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_0
        0x11003 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x44003 -> :sswitch_3
        0x44005 -> :sswitch_4
        0x44008 -> :sswitch_8
        0x44009 -> :sswitch_5
        0x4400b -> :sswitch_6
        0x4400c -> :sswitch_7
    .end sparse-switch
.end method
