.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1532
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "[ISM_Starting] enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 1534
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v0, :cond_1

    .line 1535
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, v2}, Lcom/android/server/connectivity/Tethering;->-wrap1(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1536
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get11(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    .line 1537
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1536
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1538
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1541
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    .line 1544
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1542
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1545
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1548
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 1550
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, v2}, Lcom/android/server/connectivity/Tethering;->-set2(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1551
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap10(Lcom/android/server/connectivity/Tethering;)V

    .line 1552
    return-void

    .line 1555
    :cond_1
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "[ISM_Starting] sendTetherStateChangedBroadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap10(Lcom/android/server/connectivity/Tethering;)V

    .line 1559
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 1531
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x30

    const/4 v4, 0x2

    .line 1563
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ISM_Starting] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " processMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1564
    iget v3, p1, Landroid/os/Message;->what:I

    .line 1563
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v0, 0x1

    .line 1566
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1617
    :pswitch_0
    const/4 v0, 0x0

    .line 1619
    :cond_0
    :goto_0
    return v0

    .line 1569
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get11(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    .line 1570
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1569
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1572
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1573
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    .line 1575
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1573
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1578
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v1, :cond_2

    .line 1579
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering;->-wrap1(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1580
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1581
    const/16 v2, 0xa

    .line 1580
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    .line 1583
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1584
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v1, v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    goto :goto_0

    .line 1589
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1597
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1598
    const/4 v2, 0x5

    .line 1597
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    .line 1600
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1601
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v1, v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    goto :goto_0

    .line 1605
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get11(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    .line 1606
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1605
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1608
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1609
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    .line 1611
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1609
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1614
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1566
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
