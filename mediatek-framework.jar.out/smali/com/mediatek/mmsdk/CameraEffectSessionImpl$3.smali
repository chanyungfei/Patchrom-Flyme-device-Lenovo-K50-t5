.class Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;
.super Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
.source "CameraEffectSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->getDeviceStateCallback()Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mActive:Z

.field private mBusy:Z

.field final synthetic this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

.field final synthetic val$session:Lcom/mediatek/mmsdk/CameraEffectSession;


# direct methods
.method constructor <init>(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;Lcom/mediatek/mmsdk/CameraEffectSession;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/mmsdk/CameraEffectSessionImpl;
    .param p2, "val$session"    # Lcom/mediatek/mmsdk/CameraEffectSession;

    .prologue
    const/4 v0, 0x0

    .line 186
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    iput-object p2, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->val$session:Lcom/mediatek/mmsdk/CameraEffectSession;

    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;-><init>()V

    .line 187
    iput-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->mBusy:Z

    .line 188
    iput-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->mActive:Z

    .line 186
    return-void
.end method


# virtual methods
.method public onActive(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 4
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->mActive:Z

    .line 210
    const-string/jumbo v0, "CameraEffectSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    const-string/jumbo v2, "]"

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method public onBusy(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 4
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->mBusy:Z

    .line 223
    const-string/jumbo v0, "CameraEffectSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    const-string/jumbo v2, "]"

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public onDisconnected(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 4
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    .line 193
    const-string/jumbo v0, "CameraEffectSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    const-string/jumbo v2, "]"

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    invoke-virtual {v0}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->close()V

    .line 191
    return-void
.end method

.method public onError(Lcom/mediatek/mmsdk/CameraEffect;I)V
    .locals 3
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;
    .param p2, "error"    # I

    .prologue
    .line 257
    const-string/jumbo v0, "CameraEffectSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got device error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method public onIdle(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 6
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    const/4 v5, 0x0

    .line 231
    const-string/jumbo v1, "CameraEffectSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 232
    const-string/jumbo v3, "]"

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->val$session:Lcom/mediatek/mmsdk/CameraEffectSession;

    monitor-enter v2

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->-get0(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "isAborting":Z
    monitor-exit v2

    .line 246
    iget-boolean v1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->mBusy:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    invoke-static {v1, v5}, Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->-set0(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;Z)Z

    .line 250
    :cond_0
    iput-boolean v5, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->mBusy:Z

    .line 251
    iput-boolean v5, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$3;->mActive:Z

    .line 228
    return-void

    .line 233
    .end local v0    # "isAborting":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onUnconfigured(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 4
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    .line 201
    const-string/jumbo v0, "CameraEffectSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    const-string/jumbo v2, "]"

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method
