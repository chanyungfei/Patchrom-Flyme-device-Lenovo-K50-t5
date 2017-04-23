.class Landroid/telecom/ConnectionServiceAdapterServant$1;
.super Landroid/os/Handler;
.source "ConnectionServiceAdapterServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionServiceAdapterServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionServiceAdapterServant;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionServiceAdapterServant;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionServiceAdapterServant;

    .prologue
    .line 92
    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private internalHandleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 105
    :sswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 107
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v3

    .line 108
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 109
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    .line 110
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/ParcelableConnection;

    .line 107
    invoke-interface {v3, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 111
    throw v0

    .line 117
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :sswitch_2
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :sswitch_3
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :sswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 128
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/DisconnectCause;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 129
    :catchall_1
    move-exception v0

    .line 130
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 129
    throw v0

    .line 135
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :sswitch_6
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_0

    :goto_1
    invoke-interface {v3, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 141
    :sswitch_7
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 144
    :sswitch_8
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 146
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 147
    :catchall_2
    move-exception v0

    .line 148
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 147
    throw v0

    .line 153
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_9
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 155
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    .line 156
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableConference;

    .line 155
    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 158
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 157
    :catchall_3
    move-exception v0

    .line 158
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 157
    throw v0

    .line 163
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_a
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :sswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 168
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 170
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 169
    :catchall_4
    move-exception v0

    .line 170
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 169
    throw v0

    .line 175
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_c
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 177
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-char v2, v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;C)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 179
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 178
    :catchall_5
    move-exception v0

    .line 179
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 178
    throw v0

    .line 184
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_d
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telecom/RemoteServiceCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    goto/16 :goto_0

    .line 187
    :sswitch_e
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 190
    :sswitch_f
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 192
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 193
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IVideoProvider;

    .line 192
    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 195
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 194
    :catchall_6
    move-exception v0

    .line 195
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 194
    throw v0

    .line 200
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_10
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    :goto_2
    invoke-interface {v3, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 203
    :sswitch_11
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 205
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/StatusHints;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 207
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 206
    :catchall_7
    move-exception v0

    .line 207
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 206
    throw v0

    .line 212
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_12
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 214
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v2, v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 216
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 215
    :catchall_8
    move-exception v0

    .line 216
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 215
    throw v0

    .line 221
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_13
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 223
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_9
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    .line 224
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 223
    invoke-interface {v2, v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 226
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 225
    :catchall_9
    move-exception v0

    .line 226
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 225
    throw v0

    .line 231
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_14
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 233
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    .line 234
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 233
    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 236
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 235
    :catchall_a
    move-exception v0

    .line 236
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 235
    throw v0

    .line 241
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_15
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 243
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    .line 244
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableConnection;

    .line 243
    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 246
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 245
    :catchall_b
    move-exception v0

    .line 246
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 245
    throw v0

    .line 251
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_16
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 253
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_c
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 255
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 254
    :catchall_c
    move-exception v0

    .line 255
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 254
    throw v0

    .line 260
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_17
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 262
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_d
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 264
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 263
    :catchall_d
    move-exception v0

    .line 264
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 263
    throw v0

    .line 270
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_18
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyConnectionLost(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :sswitch_19
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 275
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyActionFailed(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 279
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1a
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 280
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    .line 281
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v7, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v7, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 280
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifySSNotificationToast(Ljava/lang/String;IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 285
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 286
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyNumberUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1c
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 291
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v3

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v0, v4, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyIncomingInfoUpdate(Ljava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 295
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1d
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyCdmaCallAccepted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 302
    :sswitch_1e
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 304
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_e
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyVtStatusInfo(Ljava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 306
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 305
    :catchall_e
    move-exception v0

    .line 306
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 305
    throw v0

    .line 314
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1f
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 315
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->updateExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 319
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_20
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 321
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_f
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v3

    .line 322
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 323
    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    .line 324
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/ParcelableConference;

    .line 321
    invoke-interface {v3, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 326
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 325
    :catchall_f
    move-exception v0

    .line 326
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 325
    throw v0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_c
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0xb4 -> :sswitch_1f
        0xb6 -> :sswitch_20
        0x3e8 -> :sswitch_18
        0x3e9 -> :sswitch_19
        0x3ea -> :sswitch_1a
        0x3eb -> :sswitch_1b
        0x3ec -> :sswitch_1c
        0x3ed -> :sswitch_1d
        0x3ee -> :sswitch_1e
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionServiceAdapterServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
