.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 884
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x2

    .line 888
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v6, p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-wrap2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/Object;Landroid/os/Message;)V

    .line 889
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 1103
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unhandled message "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1104
    return v5

    .line 891
    :sswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_1

    .line 892
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string/jumbo v5, "Full connection with WifiStateMachine established"

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 893
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v5, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/util/AsyncChannel;

    invoke-static {v5, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set35(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 1106
    :cond_0
    :goto_0
    :sswitch_1
    return v4

    .line 895
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Full connection failure, error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 896
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v5, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set35(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    .line 901
    :sswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v7, :cond_2

    .line 902
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string/jumbo v6, "Send failed, client connection lost"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 906
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v5, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set35(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    .line 904
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Client connection lost with reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 910
    :sswitch_3
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 911
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_0

    .line 914
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_4
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v6, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_2
    invoke-static {v6, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 917
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v3, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 918
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 920
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/StateMachine;

    .line 921
    .local v2, "m":Lcom/android/internal/util/StateMachine;
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 922
    .end local v2    # "m":Lcom/android/internal/util/StateMachine;
    :catch_0
    move-exception v1

    .line 923
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to send BLOCK_DISCOVERY response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    move v3, v5

    .line 914
    goto :goto_2

    .line 928
    :sswitch_5
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22002

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 932
    :sswitch_6
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22005

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 936
    :sswitch_7
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x2202f

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 940
    :sswitch_8
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22008

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 944
    :sswitch_9
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x2200b

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 948
    :sswitch_a
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x2200e

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 952
    :sswitch_b
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22011

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 956
    :sswitch_c
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x2201d

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 960
    :sswitch_d
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22020

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 964
    :sswitch_e
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22023

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 968
    :sswitch_f
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22026

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 972
    :sswitch_10
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .line 973
    const v5, 0x22029

    .line 972
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 977
    :sswitch_11
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .line 978
    const v5, 0x2202c

    .line 977
    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 982
    :sswitch_12
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22034

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 986
    :sswitch_13
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22036

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 990
    :sswitch_14
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x2203c

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 994
    :sswitch_15
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .line 995
    new-instance v5, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 994
    const v6, 0x22014

    invoke-static {v3, p1, v6, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 998
    :sswitch_16
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .line 999
    new-instance v5, Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get20(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 998
    const v6, 0x22016

    invoke-static {v3, p1, v6, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1002
    :sswitch_17
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .line 1003
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 1002
    :cond_4
    const v6, 0x22018

    invoke-static {v5, p1, v6, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1006
    :sswitch_18
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .line 1007
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    .line 1006
    const v3, 0x2203a

    invoke-static {v5, p1, v3, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1010
    :sswitch_19
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x2203f

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1015
    :sswitch_1a
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v6, 0x2204d

    invoke-static {v5, p1, v6, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1019
    :sswitch_1b
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22051

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1062
    :sswitch_1c
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get45(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v5, 0x20085

    invoke-virtual {v3, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_0

    .line 1066
    :sswitch_1d
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v5, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-set0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1067
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected group creation, remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1068
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1077
    :sswitch_1e
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22060

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1081
    :sswitch_1f
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22063

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1085
    :sswitch_20
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22066

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1089
    :sswitch_21
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22069

    invoke-static {v3, p1, v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1093
    :sswitch_22
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v3, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    goto/16 :goto_0

    .line 889
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_3
        0x11004 -> :sswitch_2
        0x20083 -> :sswitch_1
        0x20084 -> :sswitch_1c
        0x200c4 -> :sswitch_22
        0x22001 -> :sswitch_5
        0x22004 -> :sswitch_6
        0x22007 -> :sswitch_8
        0x2200a -> :sswitch_9
        0x2200d -> :sswitch_a
        0x22010 -> :sswitch_b
        0x22013 -> :sswitch_15
        0x22015 -> :sswitch_16
        0x22017 -> :sswitch_17
        0x2201c -> :sswitch_c
        0x2201f -> :sswitch_d
        0x22022 -> :sswitch_e
        0x22025 -> :sswitch_f
        0x22028 -> :sswitch_10
        0x2202b -> :sswitch_11
        0x2202e -> :sswitch_7
        0x22033 -> :sswitch_12
        0x22036 -> :sswitch_13
        0x22039 -> :sswitch_18
        0x2203b -> :sswitch_14
        0x2203e -> :sswitch_19
        0x22041 -> :sswitch_1
        0x22044 -> :sswitch_1
        0x22047 -> :sswitch_1
        0x2204b -> :sswitch_1a
        0x2204c -> :sswitch_1a
        0x2204e -> :sswitch_1b
        0x2204f -> :sswitch_1b
        0x2205f -> :sswitch_1e
        0x22062 -> :sswitch_1f
        0x22065 -> :sswitch_20
        0x22068 -> :sswitch_21
        0x2206b -> :sswitch_1
        0x2206c -> :sswitch_1
        0x23001 -> :sswitch_1
        0x23002 -> :sswitch_1
        0x23003 -> :sswitch_1
        0x23004 -> :sswitch_1
        0x23005 -> :sswitch_1
        0x23006 -> :sswitch_1
        0x2300d -> :sswitch_1
        0x2300e -> :sswitch_1
        0x2300f -> :sswitch_4
        0x23010 -> :sswitch_1
        0x24001 -> :sswitch_1
        0x24002 -> :sswitch_1
        0x24003 -> :sswitch_1
        0x24004 -> :sswitch_1
        0x24005 -> :sswitch_1
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_1
        0x24008 -> :sswitch_1
        0x24009 -> :sswitch_1
        0x2400a -> :sswitch_1
        0x2400b -> :sswitch_1
        0x24015 -> :sswitch_1
        0x24016 -> :sswitch_1
        0x2401c -> :sswitch_1
        0x2401d -> :sswitch_1d
        0x2401e -> :sswitch_1
        0x24020 -> :sswitch_1
        0x24025 -> :sswitch_1
        0x24026 -> :sswitch_1
        0x24027 -> :sswitch_1
        0x30004 -> :sswitch_1
        0x30005 -> :sswitch_1
        0x30006 -> :sswitch_1
    .end sparse-switch
.end method
