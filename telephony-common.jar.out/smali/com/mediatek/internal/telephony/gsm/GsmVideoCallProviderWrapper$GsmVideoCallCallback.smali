.class final Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;
.super Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;
.source "GsmVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GsmVideoCallCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)V

    return-void
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 121
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 127
    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 97
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 98
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 96
    return-void
.end method

.method public changePeerDimensionsWithAngle(III)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 107
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 108
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 109
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 110
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 3
    .param p1, "videoQuality"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public handleCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 91
    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "VideoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 75
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 83
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 84
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 85
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 86
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 82
    return-void
.end method
