.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;
.super Landroid/content/BroadcastReceiver;
.source "SvlteModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 813
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 816
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "action":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[SvlteModeController] onReceive, action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-wrap3(Ljava/lang/String;)V

    .line 818
    const-string/jumbo v6, "com.mediatek.intent.action.FINISH_SWITCH_SVLTE_RAT_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 819
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-get0(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 821
    const-string/jumbo v6, "svlteRatSwitchPriority"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 820
    if-ne v10, v6, :cond_2

    const/4 v2, 0x1

    .line 823
    .local v2, "needHandler":Z
    :goto_0
    const-string/jumbo v6, "phone"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 825
    .local v3, "phoneId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[SvlteModeController]  : Phone["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] Switch Finished!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-wrap3(Ljava/lang/String;)V

    .line 827
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v4

    .line 828
    .local v4, "slotId":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-get3(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)I

    move-result v6

    if-ne v4, v6, :cond_3

    const/4 v1, 0x1

    .line 829
    .local v1, "isSwitchingSlot":Z
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[SvlteModeController] isSwitchingSlot is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 830
    const-string/jumbo v7, " needHandler is "

    .line 829
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-wrap3(Ljava/lang/String;)V

    .line 831
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 835
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {v6, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-set0(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)I

    .line 836
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-get5()I

    move-result v6

    if-ne v4, v6, :cond_0

    .line 837
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-get4()[I

    move-result-object v6

    aget v6, v6, v4

    if-ne v6, v10, :cond_0

    .line 838
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-get1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Z

    move-result v6

    .line 836
    if-eqz v6, :cond_0

    .line 839
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {v6, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-wrap1(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V

    .line 841
    :cond_0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-get2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 842
    const-string/jumbo v6, "[SvlteModeController] All switch task done,send ACTION_SET_RADIO_TECHNOLOGY_DONE broadcast."

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-wrap3(Ljava/lang/String;)V

    .line 844
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-wrap2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    .line 815
    .end local v1    # "isSwitchingSlot":Z
    .end local v2    # "needHandler":Z
    .end local v3    # "phoneId":I
    .end local v4    # "slotId":I
    :cond_1
    :goto_2
    return-void

    .line 820
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "needHandler":Z
    goto/16 :goto_0

    .line 828
    .restart local v3    # "phoneId":I
    .restart local v4    # "slotId":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isSwitchingSlot":Z
    goto :goto_1

    .line 832
    :cond_4
    const-string/jumbo v6, "[SvlteModeController] no need handler this case or Error slot."

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-wrap3(Ljava/lang/String;)V

    .line 833
    return-void

    .line 845
    :cond_5
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-get2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 846
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-get2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 847
    .local v5, "switchSlot":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[SvlteModeController] First slot switch done. Now switch Slot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-wrap3(Ljava/lang/String;)V

    .line 849
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-get2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 850
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {v6, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-wrap5(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V

    goto :goto_2

    .line 852
    .end local v5    # "switchSlot":I
    :cond_6
    const-string/jumbo v6, "[SvlteModeController] This should never happen."

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-wrap3(Ljava/lang/String;)V

    goto :goto_2

    .line 855
    .end local v1    # "isSwitchingSlot":Z
    .end local v2    # "needHandler":Z
    .end local v3    # "phoneId":I
    .end local v4    # "slotId":I
    :cond_7
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->-wrap4(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    goto :goto_2
.end method
