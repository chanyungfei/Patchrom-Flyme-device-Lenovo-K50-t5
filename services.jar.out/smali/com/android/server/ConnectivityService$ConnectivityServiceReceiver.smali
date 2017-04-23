.class Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 5095
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5097
    if-nez p2, :cond_0

    return-void

    .line 5099
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5100
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received intent ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5102
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->-get11(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 5103
    :try_start_0
    const-string/jumbo v2, "android.intent.action.TETHERING_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5104
    const-string/jumbo v2, "tethering_isconnected"

    .line 5105
    const/4 v4, 0x0

    .line 5104
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 5106
    .local v1, "isConnected":Z
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2, v1}, Lcom/android/server/ConnectivityService;->setUsbTethering(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "isConnected":Z
    :cond_1
    monitor-exit v3

    .line 5096
    return-void

    .line 5102
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
