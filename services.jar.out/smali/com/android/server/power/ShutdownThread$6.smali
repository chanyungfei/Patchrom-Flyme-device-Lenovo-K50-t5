.class final Lcom/android/server/power/ShutdownThread$6;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->powerOffDialogRedrawForSmartBook(Landroid/content/Context;)V
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
    .line 439
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$6;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-wrap0(Landroid/content/Context;)V

    .line 442
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-set2(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 440
    :cond_0
    return-void
.end method
