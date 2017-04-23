.class Lcom/android/server/am/AppPcService$1;
.super Landroid/content/BroadcastReceiver;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    .line 372
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/am/AppPcService;->mBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/server/am/AppPcService;->access$002(Lcom/android/server/am/AppPcService;Z)Z

    goto :goto_0
.end method
