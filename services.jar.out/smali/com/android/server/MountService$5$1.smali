.class Lcom/android/server/MountService$5$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$5;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/MountService$5;

    .prologue
    .line 4477
    iput-object p1, p0, Lcom/android/server/MountService$5$1;->this$1:Lcom/android/server/MountService$5;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 4479
    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "MountService BOOT_IPO"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    invoke-static {v3}, Lcom/android/server/MountService;->-set2(Z)Z

    .line 4482
    :try_start_0
    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "Notify VOLD IPO startup"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4483
    iget-object v1, p0, Lcom/android/server/MountService$5$1;->this$1:Lcom/android/server/MountService$5;

    iget-object v1, v1, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-static {v1}, Lcom/android/server/MountService;->-get3(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v1

    const-string/jumbo v2, "volume"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ipo"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "startup"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4488
    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService$5$1;->this$1:Lcom/android/server/MountService$5;

    iget-object v1, v1, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-static {v1}, Lcom/android/server/MountService;->-wrap19(Lcom/android/server/MountService;)V

    .line 4489
    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "MountService BOOT_IPO finish"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4490
    invoke-static {v6}, Lcom/android/server/MountService;->-set2(Z)Z

    .line 4491
    iget-object v1, p0, Lcom/android/server/MountService$5$1;->this$1:Lcom/android/server/MountService$5;

    iget-object v1, v1, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-static {v1}, Lcom/android/server/MountService;->-wrap18(Lcom/android/server/MountService;)V

    .line 4478
    return-void

    .line 4484
    :catch_0
    move-exception v0

    .line 4485
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "Error reinit SD card while IPO"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
