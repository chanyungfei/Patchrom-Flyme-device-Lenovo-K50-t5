.class final Lcom/android/server/power/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 329
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-wrap1(Landroid/content/Context;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-wrap0(Landroid/content/Context;)V

    .line 334
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "[SHTDWN] shutdown, confirm=YES"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method
