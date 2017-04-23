.class Lcom/android/server/display/WifiDisplayController$45;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->prepareDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 3967
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$45;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3970
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3971
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "user want to reconnect"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3975
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$45;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-set25(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 3976
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$45;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap55(Lcom/android/server/display/WifiDisplayController;)V

    .line 3978
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$45;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-set24(Lcom/android/server/display/WifiDisplayController;I)I

    .line 3979
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$45;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get22(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$45;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get33(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3969
    return-void
.end method
