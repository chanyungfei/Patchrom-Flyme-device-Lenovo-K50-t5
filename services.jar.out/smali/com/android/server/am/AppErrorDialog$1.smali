.class Lcom/android/server/am/AppErrorDialog$1;
.super Landroid/os/Handler;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 262
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "mIntent":Landroid/content/Intent;
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->-get0(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 281
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/android/server/am/AppErrorDialog;->-set0(Lcom/android/server/am/AppErrorDialog;I)I

    .line 284
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppErrorDialog$1;->removeMessages(I)V

    .line 288
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {v1}, Lcom/android/server/am/AppErrorDialog;->dismiss()V

    .line 261
    return-void

    .line 267
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .restart local v0    # "mIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 271
    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->-get0(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
