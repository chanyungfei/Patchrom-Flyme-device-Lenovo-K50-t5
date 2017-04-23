.class Lcom/mediatek/mmsdk/CameraEffectImpl$3;
.super Ljava/lang/Object;
.source "CameraEffectImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClosedOnce:Z

.field final synthetic this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/mmsdk/CameraEffectImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/mmsdk/CameraEffectImpl;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$3;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$3;->isClosedOnce:Z

    .line 676
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 681
    iget-boolean v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$3;->isClosedOnce:Z

    if-eqz v1, :cond_0

    .line 682
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Don\'t post #onClosed more than once"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 684
    :cond_0
    const/4 v0, 0x0

    .line 685
    .local v0, "sessionCallback":Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$3;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get6(Lcom/mediatek/mmsdk/CameraEffectImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$3;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get7(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "sessionCallback":Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    monitor-exit v2

    .line 688
    if-eqz v0, :cond_1

    .line 689
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$3;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-virtual {v0, v1}, Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;->onClosed(Lcom/mediatek/mmsdk/CameraEffect;)V

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$3;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get4(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffect$StateCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$3;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-virtual {v1, v2}, Lcom/mediatek/mmsdk/CameraEffect$StateCallback;->onClosed(Lcom/mediatek/mmsdk/CameraEffect;)V

    .line 692
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$3;->isClosedOnce:Z

    .line 680
    return-void

    .line 685
    .local v0, "sessionCallback":Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
