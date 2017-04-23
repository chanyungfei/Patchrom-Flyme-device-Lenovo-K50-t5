.class Lcom/android/server/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 6102
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 17
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 6105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6107
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 6523
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Error! unhandled message"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6526
    :cond_0
    :goto_0
    :sswitch_0
    const/4 v12, 0x1

    return v12

    .line 6109
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/AsyncChannel;

    .line 6110
    .local v2, "ac":Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get150(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    if-ne v2, v12, :cond_2

    .line 6111
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    if-nez v12, :cond_1

    .line 6112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get150(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x11001

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 6114
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "WifiP2pService connection failure, error="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 6117
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v13, "got HALF_CONNECTED for unknown channel"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 6122
    .end local v2    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/AsyncChannel;

    .line 6123
    .restart local v2    # "ac":Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get150(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    if-ne v2, v12, :cond_0

    .line 6124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6132
    .end local v2    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_1
    invoke-static {v13, v12}, Lcom/android/server/wifi/WifiStateMachine;->-set8(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 6145
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6148
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6151
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v12, 0x0

    check-cast v12, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6154
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v12, 0x0

    check-cast v12, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6157
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_4

    const/4 v12, 0x1

    :goto_2
    invoke-static {v13, v12}, Lcom/android/server/wifi/WifiStateMachine;->-set27(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 6160
    :sswitch_9
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 6161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap73(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 6163
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap73(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 6167
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    goto/16 :goto_0

    .line 6170
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_3
    invoke-static {v13, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap42(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    .line 6174
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 6238
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 6242
    :sswitch_e
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get79()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 6243
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    .line 6244
    const-string/jumbo v12, "WifiStateMachine"

    const-string/jumbo v13, "Set mDhcpV6StateMachine to null!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set17(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    goto/16 :goto_0

    .line 6247
    :cond_7
    const-string/jumbo v12, "WifiStateMachine"

    const-string/jumbo v13, "Set mDhcpStateMachine to null!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6248
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/BaseDhcpStateMachine;)Landroid/net/BaseDhcpStateMachine;

    goto/16 :goto_0

    .line 6251
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/BaseDhcpStateMachine;)Landroid/net/BaseDhcpStateMachine;

    goto/16 :goto_0

    .line 6255
    :sswitch_f
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 6256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get122(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x4

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap73(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 6259
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap73(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 6263
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 6264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto/16 :goto_0

    .line 6267
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x25002

    .line 6268
    const/4 v14, 0x2

    .line 6267
    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6271
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x25005

    .line 6272
    const/4 v14, 0x2

    .line 6271
    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6275
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x25008

    .line 6277
    const/4 v14, 0x2

    .line 6276
    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6280
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x2500c

    .line 6281
    const/4 v14, 0x2

    .line 6280
    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6284
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x2500f

    .line 6285
    const/4 v14, 0x2

    .line 6284
    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6288
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x25012

    .line 6289
    const/4 v14, 0x2

    .line 6288
    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6292
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x25016

    .line 6293
    const/4 v14, 0x2

    .line 6292
    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6296
    :sswitch_18
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    move-result v5

    .line 6297
    .local v5, "featureSet":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6300
    .end local v5    # "featureSet":I
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get145(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 6301
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    .line 6302
    .local v3, "buffer":[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get145(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13, v3}, Lcom/android/server/wifi/WifiLogger;->captureAlertData(I[B)V

    goto/16 :goto_0

    .line 6307
    .end local v3    # "buffer":[B
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6310
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/NetworkInfo;

    .line 6311
    .local v6, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 6314
    .end local v6    # "info":Landroid/net/NetworkInfo;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_a

    const/4 v12, 0x1

    :goto_4
    invoke-static {v13, v12}, Lcom/android/server/wifi/WifiStateMachine;->-set71(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x2300d

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 6314
    :cond_a
    const/4 v12, 0x0

    goto :goto_4

    .line 6319
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x2008c

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap86(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 6322
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 6327
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 6330
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6333
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 6336
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 6339
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v12

    .line 6340
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 6341
    const/16 v14, -0x14

    .line 6339
    invoke-virtual {v12, v13, v14}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    .line 6344
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v12

    .line 6345
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 6346
    const/16 v14, -0x14

    .line 6344
    invoke-virtual {v12, v13, v14}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    .line 6349
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 6352
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 6361
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6364
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6367
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    const/4 v12, 0x1

    :goto_5
    invoke-static {v12}, Lcom/android/server/wifi/WifiNative;->setTxPowerEnabled(Z)Z

    move-result v10

    .line 6368
    .local v10, "ok":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    if-eqz v10, :cond_c

    const/4 v12, 0x1

    :goto_6
    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6367
    .end local v10    # "ok":Z
    :cond_b
    const/4 v12, 0x0

    goto :goto_5

    .line 6368
    .restart local v10    # "ok":Z
    :cond_c
    const/4 v12, -0x1

    goto :goto_6

    .line 6371
    .end local v10    # "ok":Z
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-static {v12}, Lcom/android/server/wifi/WifiNative;->setTxPower(I)Z

    move-result v10

    .line 6372
    .restart local v10    # "ok":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    if-eqz v10, :cond_d

    const/4 v12, 0x1

    :goto_7
    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_d
    const/4 v12, -0x1

    goto :goto_7

    .line 6385
    .end local v10    # "ok":Z
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {v13, v12}, Lcom/android/server/wifi/WifiStateMachine;->-set12(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 6388
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiNative;->getDisconnectFlag()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6391
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6392
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x200b7

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 6396
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6399
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 6400
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x25019

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6402
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x25019

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6406
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 6407
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x2501c

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6409
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x2501c

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6414
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x2502d

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6417
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x25030

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6420
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x25033

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6423
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x25039

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6426
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x25036

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6429
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-set75(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 6436
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x2500c

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6441
    :sswitch_38
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiNative;->setWoWlanNormalModeCommand()Z

    move-result v10

    .line 6442
    .restart local v10    # "ok":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    if-eqz v10, :cond_10

    const/4 v12, 0x1

    :goto_8
    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_10
    const/4 v12, -0x1

    goto :goto_8

    .line 6445
    .end local v10    # "ok":Z
    :sswitch_39
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiNative;->setWoWlanMagicModeCommand()Z

    move-result v10

    .line 6446
    .restart local v10    # "ok":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    if-eqz v10, :cond_11

    const/4 v12, 0x1

    :goto_9
    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_11
    const/4 v12, -0x1

    goto :goto_9

    .line 6451
    .end local v10    # "ok":Z
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SET_WIFI_NOT_RECONNECT_AND_SCAN "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6452
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_12

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_15

    .line 6453
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v13, "set dont_reconnect_scan flag"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6454
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x2503c

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6455
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    if-lez v12, :cond_13

    .line 6456
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 6457
    const v14, 0x2503c

    .line 6458
    const/4 v15, 0x0

    const/16 v16, -0x1

    .line 6456
    invoke-virtual/range {v13 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    .line 6458
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    mul-int/lit16 v14, v14, 0x3e8

    int-to-long v14, v14

    .line 6456
    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 6460
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "message.arg1: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6461
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_14

    .line 6462
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v13, "isAllowReconnect is false"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6463
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6465
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 6469
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get36(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x200b7

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 6472
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v13, "reset dont_reconnect_scan flag"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x2503c

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6474
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 6478
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6479
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get36(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6480
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x200b7

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 6485
    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v13, "poor link is unconditionally disabled"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6486
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6489
    :sswitch_3c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get139(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiAutoJoinController;->enableDebugProgiling(I)V

    .line 6490
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "enableDebugProgiling = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6494
    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 6499
    :sswitch_3e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v9

    .line 6500
    .local v9, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v9, :cond_1a

    .line 6501
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "network$iterator":Ljava/util/Iterator;
    :cond_16
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 6502
    .local v7, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v12, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v11

    .line 6503
    .local v11, "value":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "EAP value:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6504
    const/4 v12, 0x4

    if-eq v11, v12, :cond_17

    .line 6505
    const/4 v12, 0x5

    if-ne v11, v12, :cond_19

    .line 6507
    :cond_17
    :goto_b
    iget v12, v7, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 6508
    const/16 v13, 0xa2

    .line 6507
    if-eq v12, v13, :cond_18

    .line 6509
    iget v12, v7, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 6510
    const/16 v13, 0xa3

    .line 6509
    if-ne v12, v13, :cond_16

    .line 6513
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v12

    iget v13, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 6514
    .local v4, "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_a

    .line 6506
    .end local v4    # "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_19
    const/4 v12, 0x6

    if-ne v11, v12, :cond_16

    goto :goto_b

    .line 6518
    .end local v7    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "network$iterator":Ljava/util/Iterator;
    .end local v11    # "value":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v13, "Check for EAP_SIM_AKA, networks is null!"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6107
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x2000b -> :sswitch_d
        0x2000c -> :sswitch_d
        0x2000d -> :sswitch_d
        0x2000e -> :sswitch_d
        0x20011 -> :sswitch_d
        0x20012 -> :sswitch_d
        0x20013 -> :sswitch_d
        0x20015 -> :sswitch_d
        0x20016 -> :sswitch_d
        0x20017 -> :sswitch_d
        0x20018 -> :sswitch_d
        0x20019 -> :sswitch_d
        0x2001a -> :sswitch_d
        0x2001b -> :sswitch_d
        0x2001c -> :sswitch_d
        0x2001d -> :sswitch_d
        0x2001e -> :sswitch_d
        0x2001f -> :sswitch_3
        0x20033 -> :sswitch_4
        0x20034 -> :sswitch_4
        0x20035 -> :sswitch_4
        0x20036 -> :sswitch_4
        0x20037 -> :sswitch_d
        0x20038 -> :sswitch_d
        0x20039 -> :sswitch_d
        0x2003a -> :sswitch_4
        0x2003b -> :sswitch_6
        0x2003c -> :sswitch_5
        0x2003d -> :sswitch_18
        0x2003e -> :sswitch_7
        0x2003f -> :sswitch_1a
        0x20047 -> :sswitch_c
        0x20048 -> :sswitch_d
        0x20049 -> :sswitch_d
        0x2004a -> :sswitch_d
        0x2004b -> :sswitch_d
        0x2004c -> :sswitch_20
        0x2004d -> :sswitch_9
        0x20050 -> :sswitch_d
        0x20052 -> :sswitch_8
        0x20053 -> :sswitch_d
        0x20056 -> :sswitch_f
        0x20058 -> :sswitch_d
        0x20059 -> :sswitch_d
        0x2005a -> :sswitch_d
        0x2005d -> :sswitch_d
        0x2005e -> :sswitch_d
        0x2005f -> :sswitch_b
        0x20060 -> :sswitch_d
        0x20061 -> :sswitch_21
        0x20062 -> :sswitch_d
        0x20063 -> :sswitch_1e
        0x20064 -> :sswitch_19
        0x20085 -> :sswitch_d
        0x20086 -> :sswitch_a
        0x2008a -> :sswitch_1f
        0x2008b -> :sswitch_1f
        0x2008c -> :sswitch_1d
        0x2008d -> :sswitch_d
        0x2008e -> :sswitch_d
        0x2008f -> :sswitch_d
        0x20090 -> :sswitch_d
        0x20091 -> :sswitch_d
        0x20092 -> :sswitch_d
        0x20093 -> :sswitch_d
        0x20095 -> :sswitch_1f
        0x20098 -> :sswitch_22
        0x2009a -> :sswitch_d
        0x2009b -> :sswitch_d
        0x2009e -> :sswitch_d
        0x2009f -> :sswitch_d
        0x200a0 -> :sswitch_23
        0x200a1 -> :sswitch_24
        0x200a2 -> :sswitch_25
        0x200a3 -> :sswitch_26
        0x200aa -> :sswitch_0
        0x200ac -> :sswitch_2b
        0x200ad -> :sswitch_27
        0x200ae -> :sswitch_27
        0x200af -> :sswitch_27
        0x200b0 -> :sswitch_28
        0x200b1 -> :sswitch_27
        0x200b2 -> :sswitch_29
        0x200b3 -> :sswitch_2a
        0x200b4 -> :sswitch_27
        0x200b5 -> :sswitch_27
        0x200b6 -> :sswitch_0
        0x200b8 -> :sswitch_27
        0x200b9 -> :sswitch_0
        0x200ba -> :sswitch_0
        0x200bb -> :sswitch_0
        0x200bc -> :sswitch_2c
        0x200be -> :sswitch_2d
        0x200bf -> :sswitch_2e
        0x200c0 -> :sswitch_0
        0x200c1 -> :sswitch_37
        0x200c2 -> :sswitch_37
        0x200c4 -> :sswitch_36
        0x200c5 -> :sswitch_38
        0x200c6 -> :sswitch_39
        0x200ca -> :sswitch_0
        0x200e4 -> :sswitch_3b
        0x200e5 -> :sswitch_3b
        0x200e7 -> :sswitch_3c
        0x200e8 -> :sswitch_2e
        0x200e9 -> :sswitch_3d
        0x200f3 -> :sswitch_3e
        0x200fa -> :sswitch_4
        0x200fb -> :sswitch_4
        0x21015 -> :sswitch_d
        0x21016 -> :sswitch_d
        0x2300b -> :sswitch_1b
        0x2300c -> :sswitch_1c
        0x24001 -> :sswitch_d
        0x24002 -> :sswitch_d
        0x24003 -> :sswitch_d
        0x24004 -> :sswitch_d
        0x24005 -> :sswitch_d
        0x24006 -> :sswitch_d
        0x24007 -> :sswitch_d
        0x2400a -> :sswitch_d
        0x2400c -> :sswitch_10
        0x2400f -> :sswitch_d
        0x24010 -> :sswitch_d
        0x24011 -> :sswitch_d
        0x2402b -> :sswitch_d
        0x25001 -> :sswitch_11
        0x25004 -> :sswitch_12
        0x25007 -> :sswitch_13
        0x2500a -> :sswitch_14
        0x2500e -> :sswitch_15
        0x25011 -> :sswitch_16
        0x25014 -> :sswitch_17
        0x25017 -> :sswitch_2f
        0x2501a -> :sswitch_30
        0x25029 -> :sswitch_37
        0x2502a -> :sswitch_37
        0x2502b -> :sswitch_37
        0x2502c -> :sswitch_31
        0x2502f -> :sswitch_32
        0x25032 -> :sswitch_33
        0x25035 -> :sswitch_35
        0x25038 -> :sswitch_34
        0x2503c -> :sswitch_3a
        0x30004 -> :sswitch_d
        0x30005 -> :sswitch_d
        0x30006 -> :sswitch_e
    .end sparse-switch
.end method
