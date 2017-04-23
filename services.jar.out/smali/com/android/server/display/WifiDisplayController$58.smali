.class Lcom/android/server/display/WifiDisplayController$58;
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
    .line 4220
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$58;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4224
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "[Build connection]: cancel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4227
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$58;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap19(Lcom/android/server/display/WifiDisplayController;)V

    .line 4222
    return-void
.end method
