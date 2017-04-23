.class Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;
.super Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;
.source "CameraEffectSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mmsdk/CameraEffectSessionImpl;->createCaptureCallback(Landroid/os/Handler;Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;)Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

.field final synthetic val$callback:Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;


# direct methods
.method constructor <init>(Lcom/mediatek/mmsdk/CameraEffectSessionImpl;Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/mmsdk/CameraEffectSessionImpl;
    .param p2, "val$callback"    # Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->this$0:Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    iput-object p2, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->val$callback:Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;

    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureFailed(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 4
    .param p1, "session"    # Lcom/mediatek/mmsdk/CameraEffectSession;
    .param p2, "result"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 310
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

    .line 311
    const-string/jumbo v2, "]"

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    const-string/jumbo v2, ",callback = "

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->val$callback:Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->val$callback:Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;->onCaptureFailed(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 308
    return-void
.end method

.method public onCaptureSequenceAborted(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 4
    .param p1, "session"    # Lcom/mediatek/mmsdk/CameraEffectSession;
    .param p2, "result"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 301
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

    .line 302
    const-string/jumbo v2, "]"

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    const-string/jumbo v2, ",callback = "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->val$callback:Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->val$callback:Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;->onCaptureSequenceAborted(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 299
    return-void
.end method

.method public onCaptureSequenceCompleted(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;J)V
    .locals 5
    .param p1, "session"    # Lcom/mediatek/mmsdk/CameraEffectSession;
    .param p2, "result"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p3, "uid"    # J

    .prologue
    .line 292
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

    .line 293
    const-string/jumbo v2, "]"

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 293
    const-string/jumbo v2, ",callback = "

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 293
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->val$callback:Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->val$callback:Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;->onCaptureSequenceCompleted(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;J)V

    .line 290
    return-void
.end method

.method public onInputFrameProcessed(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 4
    .param p1, "session"    # Lcom/mediatek/mmsdk/CameraEffectSession;
    .param p2, "parameter"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p3, "partialResult"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 272
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

    .line 273
    const-string/jumbo v2, "]"

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    const-string/jumbo v2, ",callback = "

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->val$callback:Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->val$callback:Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;->onInputFrameProcessed(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 270
    return-void
.end method

.method public onOutputFrameProcessed(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 4
    .param p1, "session"    # Lcom/mediatek/mmsdk/CameraEffectSession;
    .param p2, "parameter"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p3, "partialResult"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 282
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

    .line 283
    const-string/jumbo v2, "]"

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    const-string/jumbo v2, ",callback = "

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->val$callback:Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectSessionImpl$4;->val$callback:Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/mmsdk/CameraEffectSession$CaptureCallback;->onOutputFrameProcessed(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 280
    return-void
.end method
