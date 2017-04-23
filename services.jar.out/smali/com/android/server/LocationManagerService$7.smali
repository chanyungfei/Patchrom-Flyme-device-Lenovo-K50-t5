.class Lcom/android/server/LocationManagerService$7;
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
    .line 360
    iput-object p1, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get4(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 364
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-wrap6(Lcom/android/server/LocationManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 362
    return-void

    .line 367
    :cond_1
    :try_start_1
    const-string/jumbo v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-wrap5(Lcom/android/server/LocationManagerService;)V

    .line 369
    iget-object v1, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-wrap12(Lcom/android/server/LocationManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 363
    .end local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
