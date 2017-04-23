.class Landroid/telecom/VideoCallbackServant$1;
.super Landroid/os/Handler;
.source "VideoCallbackServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallbackServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallbackServant;


# direct methods
.method constructor <init>(Landroid/telecom/VideoCallbackServant;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/VideoCallbackServant;

    .prologue
    .line 54
    iput-object p1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private internalHandleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 67
    :sswitch_0
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 71
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 73
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v3

    .line 74
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 75
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    .line 76
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 73
    invoke-interface {v3, v4, v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v1

    .line 78
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 77
    throw v1

    .line 83
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 85
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 86
    :catchall_1
    move-exception v1

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 86
    throw v1

    .line 92
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 94
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 95
    :catchall_2
    move-exception v1

    .line 96
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 95
    throw v1

    .line 103
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 105
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensionsWithAngle(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 107
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 106
    :catchall_3
    move-exception v1

    .line 107
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 106
    throw v1

    .line 113
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 115
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 117
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 116
    :catchall_4
    move-exception v1

    .line 117
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 116
    throw v1

    .line 122
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto/16 :goto_0

    .line 126
    :sswitch_7
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->changeVideoQuality(I)V

    goto/16 :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x64 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/VideoCallbackServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
