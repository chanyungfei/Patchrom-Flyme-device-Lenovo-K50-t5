.class final Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;
.super Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;
.source "GsmVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GsmVideoCallProviderBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)V

    return-void
.end method


# virtual methods
.method public requestCallDataUsage()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 151
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 140
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 141
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 142
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    .line 148
    const/16 v1, 0x8

    .line 147
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void
.end method

.method public setCallback(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 127
    return-void
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    return-void
.end method

.method public setUIMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    return-void
.end method

.method public setZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider$GsmVideoCallProviderBinder;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;->-get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method
