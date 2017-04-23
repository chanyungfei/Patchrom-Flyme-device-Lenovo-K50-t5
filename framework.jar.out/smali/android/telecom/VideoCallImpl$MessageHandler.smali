.class final Landroid/telecom/VideoCallImpl$MessageHandler;
.super Landroid/os/Handler;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_CHANGE_CALL_DATA_USAGE:I = 0x5

.field private static final MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x6

.field private static final MSG_CHANGE_PEER_DIMENSIONS:I = 0x4

.field private static final MSG_CHANGE_PEER_DIMENSIONS_WITH_ANGLE:I = 0x64

.field private static final MSG_CHANGE_VIDEO_QUALITY:I = 0x7

.field private static final MSG_HANDLE_CALL_SESSION_EVENT:I = 0x3

.field private static final MSG_MTK_BASE:I = 0x64

.field private static final MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x1

.field private static final MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallImpl;


# direct methods
.method public constructor <init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/VideoCallImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 140
    iput-object p1, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    .line 141
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget-object v7, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v7}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v7

    if-nez v7, :cond_0

    .line 147
    return-void

    .line 151
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 153
    :sswitch_0
    iget-object v7, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v7}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/telecom/VideoProfile;

    invoke-virtual {v8, v7}, Landroid/telecom/InCallService$VideoCall$Callback;->onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 156
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 158
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 159
    .local v5, "status":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 160
    .local v2, "requestProfile":Landroid/telecom/VideoProfile;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 162
    .local v3, "responseProfile":Landroid/telecom/VideoProfile;
    iget-object v7, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v7}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v7

    invoke-virtual {v7, v5, v2, v3}, Landroid/telecom/InCallService$VideoCall$Callback;->onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 164
    .end local v2    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v3    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v5    # "status":I
    :catchall_0
    move-exception v7

    .line 165
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 164
    throw v7

    .line 169
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_2
    iget-object v7, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v7}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/telecom/InCallService$VideoCall$Callback;->onCallSessionEvent(I)V

    goto :goto_0

    .line 172
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 174
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 175
    .local v6, "width":I
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 176
    .local v1, "height":I
    iget-object v7, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v7}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v7

    invoke-virtual {v7, v6, v1}, Landroid/telecom/InCallService$VideoCall$Callback;->onPeerDimensionsChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 177
    .end local v1    # "height":I
    .end local v6    # "width":I
    :catchall_1
    move-exception v7

    .line 178
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 177
    throw v7

    .line 184
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 186
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 187
    .restart local v6    # "width":I
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 188
    .restart local v1    # "height":I
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 189
    .local v4, "rotation":I
    iget-object v7, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v7}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v7

    invoke-virtual {v7, v6, v1, v4}, Landroid/telecom/InCallService$VideoCall$Callback;->onPeerDimensionsWithAngleChanged(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 191
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 190
    .end local v1    # "height":I
    .end local v4    # "rotation":I
    .end local v6    # "width":I
    :catchall_2
    move-exception v7

    .line 191
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 190
    throw v7

    .line 196
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    iget-object v7, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v7}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/telecom/InCallService$VideoCall$Callback;->onCallDataUsageChanged(J)V

    goto/16 :goto_0

    .line 199
    :sswitch_6
    iget-object v7, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v7}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v8

    .line 200
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 199
    invoke-virtual {v8, v7}, Landroid/telecom/InCallService$VideoCall$Callback;->onCameraCapabilitiesChanged(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto/16 :goto_0

    .line 203
    :sswitch_7
    iget-object v7, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v8}, Landroid/telecom/VideoCallImpl;->-set0(Landroid/telecom/VideoCallImpl;I)I

    .line 204
    iget-object v7, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v7}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Landroid/telecom/InCallService$VideoCall$Callback;->onVideoQualityChanged(I)V

    goto/16 :goto_0

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x64 -> :sswitch_4
    .end sparse-switch
.end method
