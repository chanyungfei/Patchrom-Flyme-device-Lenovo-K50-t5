.class Lcom/android/server/display/WifiDisplayController$56;
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
    .line 4184
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$56;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 4188
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "[GC confirm connection]: declines"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4189
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$56;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get62(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$56;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get60(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setGCInviteResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4192
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$56;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap19(Lcom/android/server/display/WifiDisplayController;)V

    .line 4186
    return-void
.end method
