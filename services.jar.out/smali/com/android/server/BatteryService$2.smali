.class Lcom/android/server/BatteryService$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 218
    const-string/jumbo v0, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->-set4(Lcom/android/server/BatteryService;Z)Z

    .line 220
    iget-object v0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->-set3(Lcom/android/server/BatteryService;Z)Z

    .line 222
    iget-object v0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get10(Lcom/android/server/BatteryService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->-set6(Lcom/android/server/BatteryService;I)I

    .line 223
    iget-object v0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->-wrap3(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->-set4(Lcom/android/server/BatteryService;Z)Z

    goto :goto_0
.end method
