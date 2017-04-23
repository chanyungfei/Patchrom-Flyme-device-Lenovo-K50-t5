.class final Landroid/telecom/InCallService$InCallServiceBinder;
.super Lcom/android/internal/telecom/IInCallService$Stub;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InCallServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method private constructor <init>(Landroid/telecom/InCallService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/InCallService;

    .prologue
    .line 169
    iput-object p1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0}, Lcom/android/internal/telecom/IInCallService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService$InCallServiceBinder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/InCallService;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;)V

    return-void
.end method


# virtual methods
.method public addCall(Landroid/telecom/ParcelableCall;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 177
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 176
    return-void
.end method

.method public bringToForeground(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    return-void

    :cond_0
    move v0, v1

    .line 205
    goto :goto_0
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 2
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 200
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 199
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 4
    .param p1, "canAddCall"    # Z

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 209
    return-void

    :cond_0
    move v0, v1

    .line 210
    goto :goto_0
.end method

.method public onStorageFull()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 223
    return-void
.end method

.method public setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V
    .locals 2
    .param p1, "inCallAdapter"    # Lcom/android/internal/telecom/IInCallAdapter;

    .prologue
    .line 172
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 171
    return-void
.end method

.method public setPostDial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 186
    return-void
.end method

.method public setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 193
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 194
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 191
    return-void
.end method

.method public updateCall(Landroid/telecom/ParcelableCall;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 182
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 181
    return-void
.end method

.method public updateRecordState(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 216
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 217
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 218
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 215
    return-void
.end method
