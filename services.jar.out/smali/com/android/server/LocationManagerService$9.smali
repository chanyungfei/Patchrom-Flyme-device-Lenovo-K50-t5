.class Lcom/android/server/LocationManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/server/LocationManagerService$9;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 404
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.mediatek.lbs.action.NLP_BIND_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    const-string/jumbo v2, "bindGmsPackage"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 407
    .local v1, "bindGmsPackage":Z
    const-string/jumbo v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received action NLP_BIND_REQUEST bindGmsPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v2, p0, Lcom/android/server/LocationManagerService$9;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get4(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 409
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$9;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2, v1}, Lcom/android/server/LocationManagerService;->-wrap7(Lcom/android/server/LocationManagerService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 403
    .end local v1    # "bindGmsPackage":Z
    :cond_0
    return-void

    .line 408
    .restart local v1    # "bindGmsPackage":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
