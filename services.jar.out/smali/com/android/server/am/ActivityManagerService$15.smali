.class Lcom/android/server/am/ActivityManagerService$15;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 13099
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$15;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 13102
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 13103
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13104
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 13105
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "/storage/emulated/0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13101
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 13106
    .restart local v0    # "path":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$15;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-wrap14(Lcom/android/server/am/ActivityManagerService;)V

    goto :goto_0
.end method
