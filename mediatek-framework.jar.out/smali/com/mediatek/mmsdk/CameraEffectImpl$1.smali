.class Lcom/mediatek/mmsdk/CameraEffectImpl$1;
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
.field final synthetic this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/mmsdk/CameraEffectImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/mmsdk/CameraEffectImpl;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "stateCallback2":Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get6(Lcom/mediatek/mmsdk/CameraEffectImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get5(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/IEffectHalClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v2

    .line 648
    return-void

    .line 650
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-static {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->-get7(Lcom/mediatek/mmsdk/CameraEffectImpl;)Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "stateCallback2":Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    monitor-exit v2

    .line 652
    if-eqz v0, :cond_1

    .line 653
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectImpl$1;->this$0:Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-virtual {v0, v1}, Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;->onActive(Lcom/mediatek/mmsdk/CameraEffect;)V

    .line 644
    :cond_1
    return-void

    .line 646
    .local v0, "stateCallback2":Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
