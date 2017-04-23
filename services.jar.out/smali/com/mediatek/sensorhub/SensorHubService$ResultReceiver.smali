.class Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;
.super Ljava/lang/Object;
.source "SensorHubService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/sensorhub/SensorHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/sensorhub/SensorHubService;


# direct methods
.method constructor <init>(Lcom/mediatek/sensorhub/SensorHubService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/sensorhub/SensorHubService;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;->this$0:Lcom/mediatek/sensorhub/SensorHubService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;->this$0:Lcom/mediatek/sensorhub/SensorHubService;

    invoke-static {v0}, Lcom/mediatek/sensorhub/SensorHubService;->-get1(Lcom/mediatek/sensorhub/SensorHubService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;->this$0:Lcom/mediatek/sensorhub/SensorHubService;

    invoke-static {v0}, Lcom/mediatek/sensorhub/SensorHubService;->-get0(Lcom/mediatek/sensorhub/SensorHubService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/mediatek/sensorhub/SensorHubService;->-set0(Lcom/mediatek/sensorhub/SensorHubService;I)I

    .line 45
    sget-boolean v0, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SensorHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSendFinished: wlCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;->this$0:Lcom/mediatek/sensorhub/SensorHubService;

    invoke-static {v3}, Lcom/mediatek/sensorhub/SensorHubService;->-get0(Lcom/mediatek/sensorhub/SensorHubService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;->this$0:Lcom/mediatek/sensorhub/SensorHubService;

    invoke-static {v0}, Lcom/mediatek/sensorhub/SensorHubService;->-get0(Lcom/mediatek/sensorhub/SensorHubService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;->this$0:Lcom/mediatek/sensorhub/SensorHubService;

    invoke-static {v0}, Lcom/mediatek/sensorhub/SensorHubService;->-get2(Lcom/mediatek/sensorhub/SensorHubService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
