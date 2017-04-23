.class Lcom/android/server/job/controllers/TimeController$1;
.super Landroid/content/BroadcastReceiver;
.source "TimeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/TimeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/TimeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/TimeController;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$1;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 264
    sget-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 265
    const-string/jumbo v0, "JobScheduler.Time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Just received alarm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    const-string/jumbo v0, "android.content.jobscheduler.JOB_DEADLINE_EXPIRED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$1;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-static {v0}, Lcom/android/server/job/controllers/TimeController;->-wrap0(Lcom/android/server/job/controllers/TimeController;)V

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    const-string/jumbo v0, "android.content.jobscheduler.JOB_DELAY_EXPIRED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$1;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-static {v0}, Lcom/android/server/job/controllers/TimeController;->-wrap1(Lcom/android/server/job/controllers/TimeController;)V

    goto :goto_0
.end method
