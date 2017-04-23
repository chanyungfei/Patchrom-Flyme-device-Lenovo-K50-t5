.class Lcom/android/server/am/AppErrorDialog$2;
.super Ljava/lang/Object;
.source "AppErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 302
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get4(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get1(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get1(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    if-ne v0, v2, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get1(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 309
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get2(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->-get3(Lcom/android/server/am/AppErrorDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 303
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
