.class Landroid/hardware/camera2/CameraManager$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager;->closeFlashlightWhenShutdown(Ljava/lang/String;Z)V
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
    .line 1265
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$3;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1268
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$3;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v1}, Landroid/hardware/camera2/CameraManager;->-get0(Landroid/hardware/camera2/CameraManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$3;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->-get2(Landroid/hardware/camera2/CameraManager;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    :cond_0
    return-void

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1274
    throw v0
.end method
