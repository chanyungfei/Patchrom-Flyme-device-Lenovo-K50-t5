.class Landroid/hardware/camera2/CameraManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/CameraManager;

    .prologue
    .line 1284
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$1;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1287
    const-string/jumbo v4, "CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[onReceive]intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$1;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->-get1(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 1290
    :try_start_0
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$1;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->-get1(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cameraId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1291
    .local v0, "cameraId":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1294
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraId$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 1295
    .local v3, "exception":Ljava/lang/UnsupportedOperationException;
    :try_start_1
    const-string/jumbo v4, "CameraManager"

    const-string/jumbo v6, "Clear mFlashdeviceIdList fail!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "exception":Ljava/lang/UnsupportedOperationException;
    :goto_1
    monitor-exit v5

    .line 1286
    return-void

    .line 1293
    .restart local v1    # "cameraId$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$1;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->-get1(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1296
    .end local v1    # "cameraId$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .line 1297
    .local v2, "exception":Landroid/hardware/camera2/CameraAccessException;
    :try_start_3
    const-string/jumbo v4, "CameraManager"

    const-string/jumbo v6, "setTorchMode false fail!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1288
    .end local v2    # "exception":Landroid/hardware/camera2/CameraAccessException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
