.class Lcom/android/server/MountService$3;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;

    .prologue
    .line 4287
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4290
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4291
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4292
    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "Privacy Protection unlock!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    new-instance v1, Lcom/android/server/MountService$3$1;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$3$1;-><init>(Lcom/android/server/MountService$3;)V

    invoke-virtual {v1}, Lcom/android/server/MountService$3$1;->start()V

    .line 4289
    :cond_0
    :goto_0
    return-void

    .line 4298
    :cond_1
    const-string/jumbo v1, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4299
    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "Privacy Protection lock!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    new-instance v1, Lcom/android/server/MountService$3$2;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$3$2;-><init>(Lcom/android/server/MountService$3;)V

    invoke-virtual {v1}, Lcom/android/server/MountService$3$2;->start()V

    goto :goto_0

    .line 4305
    :cond_2
    const-string/jumbo v1, "com.mediatek.ppl.NOTIFY_MOUNT_SERVICE_WIPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4306
    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "Privacy Protection wipe!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    iget-object v1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-static {v1}, Lcom/android/server/MountService;->-wrap8(Lcom/android/server/MountService;)V

    goto :goto_0
.end method
