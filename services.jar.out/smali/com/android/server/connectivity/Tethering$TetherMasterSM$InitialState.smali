.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2741
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 2744
    const-string/jumbo v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[MSM_Initial]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2748
    const-string/jumbo v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[MSM_Initial]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2749
    const-string/jumbo v5, "] processMessage what="

    .line 2748
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2749
    iget v5, p1, Landroid/os/Message;->what:I

    .line 2748
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    const/4 v1, 0x1

    .line 2751
    .local v1, "retValue":Z
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2778
    const/4 v1, 0x0

    .line 2781
    :goto_0
    return v1

    .line 2753
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2754
    .local v2, "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const-string/jumbo v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[MSM_Initial]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2755
    const-string/jumbo v5, "] Tether Mode requested by "

    .line 2754
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get5(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2757
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get13(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2760
    .end local v2    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2761
    .restart local v2    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const-string/jumbo v3, "Tethering"

    const-string/jumbo v4, "[MSM_Initial] CMD_TETHER_MODE_UNREQUESTED ===========>"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    const-string/jumbo v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[MSM_Initial]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2763
    const-string/jumbo v5, "] Tether Mode unrequested by "

    .line 2762
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get5(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2765
    .local v0, "index":I
    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 2766
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get5(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2767
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get5(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 2770
    :cond_0
    iget-boolean v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v3, :cond_1

    .line 2771
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering;->-set4(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 2772
    const-string/jumbo v3, "Tethering"

    const-string/jumbo v4, "[MSM_Initial] sendTetherStateChangedBroadcast"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-wrap10(Lcom/android/server/connectivity/Tethering;)V

    .line 2775
    :cond_1
    const-string/jumbo v3, "Tethering"

    const-string/jumbo v4, "[MSM_Initial] CMD_TETHER_MODE_UNREQUESTED <==========="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2751
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
