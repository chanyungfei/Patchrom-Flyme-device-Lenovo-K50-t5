.class Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;
.super Landroid/os/Handler;
.source "GsmVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 138
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 140
    :sswitch_0
    iget-object v8, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/telecom/VideoProfile;

    invoke-virtual {v8, v7}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 143
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 145
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 146
    .local v5, "status":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 147
    .local v2, "requestProfile":Landroid/telecom/VideoProfile;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 149
    .local v3, "responseProfile":Landroid/telecom/VideoProfile;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-virtual {v7, v5, v2, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 150
    .end local v2    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v3    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v5    # "status":I
    :catchall_0
    move-exception v7

    .line 151
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 150
    throw v7

    .line 155
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_2
    iget-object v8, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 158
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 160
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 161
    .local v6, "width":I
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 162
    .local v1, "height":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-virtual {v7, v6, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->changePeerDimensions(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 163
    .end local v1    # "height":I
    .end local v6    # "width":I
    :catchall_1
    move-exception v7

    .line 164
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 163
    throw v7

    .line 170
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 172
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 173
    .restart local v6    # "width":I
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 174
    .restart local v1    # "height":I
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 175
    .local v4, "rotation":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-virtual {v7, v6, v1, v4}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->changePeerDimensionsWithAngle(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 177
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 176
    .end local v1    # "height":I
    .end local v4    # "rotation":I
    .end local v6    # "width":I
    :catchall_2
    move-exception v7

    .line 177
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 176
    throw v7

    .line 182
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    iget-object v8, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->changeCallDataUsage(J)V

    goto/16 :goto_0

    .line 185
    :sswitch_6
    iget-object v8, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-virtual {v8, v7}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto/16 :goto_0

    .line 188
    :sswitch_7
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->changeVideoQuality(I)V

    goto/16 :goto_0

    .line 138
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
