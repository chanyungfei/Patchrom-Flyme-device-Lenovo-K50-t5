.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreDetachCheckState"
.end annotation


# instance fields
.field mTransactionId:I

.field mUserCnt:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v1, "PreDetachCheckState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    const-string/jumbo v1, "predetachcheck"

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v2

    .line 491
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get12(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->notifyDcSwitchStateChange(Ljava/lang/String;ILjava/lang/String;)V

    .line 486
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 498
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 528
    const/4 v0, 0x0

    .line 531
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 501
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v2, "PreDetachCheckState: REQ_CONFIRM_PREDETACH"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 505
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 506
    const/4 v0, 0x1

    .line 507
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 510
    .end local v0    # "retVal":Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v2, "PreDetachCheckState: REQ_CONNECT, return fail"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x1

    .line 513
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 517
    .end local v0    # "retVal":Z
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$PreDetachCheckState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v2, "PreDetachCheckState: REQ_DISCONNECT_ALL, return fail."

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 519
    const/4 v0, 0x1

    .line 520
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 498
    nop

    :sswitch_data_0
    .sparse-switch
        0x44000 -> :sswitch_1
        0x44002 -> :sswitch_2
        0x4400b -> :sswitch_0
    .end sparse-switch
.end method
