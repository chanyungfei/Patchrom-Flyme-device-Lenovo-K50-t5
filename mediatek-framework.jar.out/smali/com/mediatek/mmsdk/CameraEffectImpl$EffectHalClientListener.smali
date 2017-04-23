.class public Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;
.super Lcom/mediatek/mmsdk/IEffectListener$Stub;
.source "CameraEffectImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EffectHalClientListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/mmsdk/CameraEffectImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/mmsdk/CameraEffectImpl;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-direct {p0}, Lcom/mediatek/mmsdk/IEffectListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAborted(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 7
    .param p1, "effect"    # Lcom/mediatek/mmsdk/IEffectHalClient;
    .param p2, "result"    # Lcom/mediatek/mmsdk/BaseParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 449
    const-string/jumbo v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]++++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    move-object v0, p2

    .line 453
    .local v0, "baseParametersResult":Lcom/mediatek/mmsdk/BaseParameters;
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get2(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get0(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v2

    .line 454
    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get2(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    long-to-int v3, v4

    .line 453
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    .line 456
    :goto_0
    if-eqz p2, :cond_0

    .line 457
    const-string/jumbo v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 458
    const-string/jumbo v4, "] ++++,effect = "

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 458
    const-string/jumbo v4, ",result = "

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 458
    invoke-virtual {p2}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v4

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    if-eqz v1, :cond_1

    .line 462
    invoke-virtual {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$4;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;Lcom/mediatek/mmsdk/BaseParameters;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    :cond_1
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get0(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get2(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 472
    const-string/jumbo v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void

    .line 454
    :cond_2
    const/4 v1, 0x0

    .local v1, "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    goto/16 :goto_0
.end method

.method public onCompleted(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;J)V
    .locals 11
    .param p1, "effect"    # Lcom/mediatek/mmsdk/IEffectHalClient;
    .param p2, "partialResult"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 416
    const-string/jumbo v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]++++"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    long-to-int v1, p3

    .line 419
    .local v1, "compleateId":I
    move-object v2, p2

    .line 420
    .local v2, "parameters":Lcom/mediatek/mmsdk/BaseParameters;
    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get0(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    .line 422
    :goto_0
    if-eqz p2, :cond_0

    .line 423
    const-string/jumbo v3, "CameraEffectImpl"

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[onCompleted]++++, effect = ,partialResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 425
    invoke-virtual {p2}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v5

    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 425
    const-string/jumbo v5, ",uid = "

    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 425
    const-string/jumbo v5, ",compleateId = "

    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 426
    const-string/jumbo v5, ",mCurrentStartId = "

    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 426
    iget-object v5, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v5}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get2(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v6

    .line 424
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 427
    const-string/jumbo v5, ",callbackHolder = "

    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$3;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$3;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;Lcom/mediatek/mmsdk/BaseParameters;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    :cond_1
    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get5(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/IEffectHalClient;

    move-result-object v3

    invoke-interface {v3, v8}, Lcom/mediatek/mmsdk/IEffectHalClient;->abort(Lcom/mediatek/mmsdk/BaseParameters;)I

    .line 440
    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get3(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffectStatus;

    move-result-object v3

    sget-object v4, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_CONFINGURED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v3, v4}, Lcom/mediatek/mmsdk/CameraEffectStatus;->setEffectHalStatus(Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;)V

    .line 442
    const-string/jumbo v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void

    .line 421
    :cond_2
    const/4 v0, 0x0

    .local v0, "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    goto/16 :goto_0
.end method

.method public onFailed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 7
    .param p1, "effect"    # Lcom/mediatek/mmsdk/IEffectHalClient;
    .param p2, "result"    # Lcom/mediatek/mmsdk/BaseParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 478
    const-string/jumbo v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]++++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    move-object v0, p2

    .line 482
    .local v0, "baseParametersResult":Lcom/mediatek/mmsdk/BaseParameters;
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get2(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get0(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v2

    .line 483
    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get2(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    long-to-int v3, v4

    .line 482
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    .line 485
    :goto_0
    if-eqz p2, :cond_0

    .line 486
    const-string/jumbo v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 487
    const-string/jumbo v4, "] ++++,effect = "

    .line 486
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 487
    const-string/jumbo v4, ",result = "

    .line 486
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 487
    invoke-virtual {p2}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v4

    .line 486
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$5;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;Lcom/mediatek/mmsdk/BaseParameters;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    :cond_1
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v2}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get0(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get2(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 501
    const-string/jumbo v2, "CameraEffectImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void

    .line 483
    :cond_2
    const/4 v1, 0x0

    .local v1, "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    goto/16 :goto_0
.end method

.method public onInputFrameProcessed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 9
    .param p1, "effect"    # Lcom/mediatek/mmsdk/IEffectHalClient;
    .param p2, "parameter"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p3, "partialResult"    # Lcom/mediatek/mmsdk/BaseParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 352
    const-string/jumbo v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]++++"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-object v1, p3

    .line 355
    .local v1, "parameters":Lcom/mediatek/mmsdk/BaseParameters;
    move-object v2, p3

    .line 356
    .local v2, "result":Lcom/mediatek/mmsdk/BaseParameters;
    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get2(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get0(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v3

    .line 357
    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v4}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get2(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    long-to-int v4, v4

    .line 356
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    .line 358
    :goto_0
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 359
    const-string/jumbo v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[onInputFrameProcessed] effect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",parameter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 360
    invoke-virtual {p2}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 360
    const-string/jumbo v5, ",partialResult = "

    .line 359
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 360
    invoke-virtual {p3}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 361
    const-string/jumbo v5, ",callbackHolder = "

    .line 359
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$1;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    :cond_1
    const-string/jumbo v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 357
    :cond_2
    const/4 v0, 0x0

    .local v0, "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    goto/16 :goto_0
.end method

.method public onOutputFrameProcessed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 9
    .param p1, "effect"    # Lcom/mediatek/mmsdk/IEffectHalClient;
    .param p2, "parameter"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p3, "partialResult"    # Lcom/mediatek/mmsdk/BaseParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 382
    const-string/jumbo v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]++++"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    move-object v1, p3

    .line 386
    .local v1, "parameters":Lcom/mediatek/mmsdk/BaseParameters;
    move-object v2, p3

    .line 387
    .local v2, "result":Lcom/mediatek/mmsdk/BaseParameters;
    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get2(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v3}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get0(Lcom/mediatek/mmsdk/CameraEffectImpl;)Landroid/util/SparseArray;

    move-result-object v3

    .line 388
    iget-object v4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v4}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get2(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v4

    long-to-int v4, v4

    .line 387
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    .line 390
    :goto_0
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 391
    const-string/jumbo v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[onOutputFrameProcessed]++++, effect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",parameter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 392
    invoke-virtual {p2}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v5

    .line 391
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 392
    const-string/jumbo v5, ",partialResult = "

    .line 391
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 392
    invoke-virtual {p3}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v5

    .line 391
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 393
    const-string/jumbo v5, ",mCurrentStartId = "

    .line 391
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 393
    iget-object v5, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v5}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get2(Lcom/mediatek/mmsdk/CameraEffectImpl;)J

    move-result-wide v6

    .line 391
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 393
    const-string/jumbo v5, ",callbackHolder = "

    .line 391
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$2;-><init>(Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    :cond_1
    const-string/jumbo v3, "CameraEffectImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 388
    :cond_2
    const/4 v0, 0x0

    .local v0, "callbackHolder":Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    goto/16 :goto_0
.end method

.method public onPrepared(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 3
    .param p1, "effect"    # Lcom/mediatek/mmsdk/IEffectHalClient;
    .param p2, "result"    # Lcom/mediatek/mmsdk/BaseParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 342
    const-string/jumbo v0, "CameraEffectImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[onPrepared] effect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method
