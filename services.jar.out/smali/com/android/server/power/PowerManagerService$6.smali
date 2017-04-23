.class Lcom/android/server/power/PowerManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 731
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "SCREEN_TIMEOUT_MINIMUM."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get19(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set6(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 734
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set10(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 735
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set9(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 729
    return-void
.end method
