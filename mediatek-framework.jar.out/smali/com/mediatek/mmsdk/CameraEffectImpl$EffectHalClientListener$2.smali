.class Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$2;
.super Ljava/lang/Object;
.source "CameraEffectImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->onOutputFrameProcessed(Lcom/mediatek/mmsdk/IEffectHalClient;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;

.field final synthetic val$callbackHolder:Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

.field final synthetic val$parameters:Lcom/mediatek/mmsdk/BaseParameters;

.field final synthetic val$result:Lcom/mediatek/mmsdk/BaseParameters;


# direct methods
.method constructor <init>(Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;
    .param p2, "val$callbackHolder"    # Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;
    .param p3, "val$parameters"    # Lcom/mediatek/mmsdk/BaseParameters;
    .param p4, "val$result"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$2;->this$1:Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;

    iput-object p2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$2;->val$callbackHolder:Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    iput-object p3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$2;->val$parameters:Lcom/mediatek/mmsdk/BaseParameters;

    iput-object p4, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$2;->val$result:Lcom/mediatek/mmsdk/BaseParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 402
    iget-object v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$2;->val$callbackHolder:Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;

    invoke-virtual {v0}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallbackHolder;->getCaptureCallback()Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$2;->this$1:Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;

    iget-object v1, v1, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get1(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffectSessionImpl;

    move-result-object v1

    .line 403
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$2;->val$parameters:Lcom/mediatek/mmsdk/BaseParameters;

    iget-object v3, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener$2;->val$result:Lcom/mediatek/mmsdk/BaseParameters;

    .line 402
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/mmsdk/CameraEffectImpl$CaptureCallback;->onOutputFrameProcessed(Lcom/mediatek/mmsdk/CameraEffectSession;Lcom/mediatek/mmsdk/BaseParameters;Lcom/mediatek/mmsdk/BaseParameters;)V

    .line 401
    return-void
.end method
