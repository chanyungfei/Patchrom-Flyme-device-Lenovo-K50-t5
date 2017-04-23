.class Lcom/android/server/display/WifiDisplayController$5$1;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pLinkInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayController$5;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/display/WifiDisplayController$5;

    .prologue
    .line 2659
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkInfoAvailable(Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;)V
    .locals 4
    .param p1, "status"    # Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;

    .prologue
    .line 2666
    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->linkInfo:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2668
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get65()Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->linkInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2669
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2670
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->-wrap6(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->-set44(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2671
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->-wrap7(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->-set21(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2672
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->-wrap7(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->-set43(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2675
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-wrap57(Lcom/android/server/display/WifiDisplayController;)V

    .line 2661
    .end local v0    # "match":Ljava/util/regex/Matcher;
    :goto_0
    return-void

    .line 2678
    .restart local v0    # "match":Ljava/util/regex/Matcher;
    :cond_0
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "wfdLinkInfoPattern Malformed Pattern, not match String "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2682
    .end local v0    # "match":Ljava/util/regex/Matcher;
    :cond_1
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "onLinkInfoAvailable() parameter is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
