.class Landroid/hardware/camera2/CameraManager$2;
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
    .line 1255
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$2;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1257
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1258
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1259
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$2;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->-get0(Landroid/hardware/camera2/CameraManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$2;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->-get2(Landroid/hardware/camera2/CameraManager;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1256
    .local v1, "intent":Landroid/content/Intent;
    return-void
.end method
