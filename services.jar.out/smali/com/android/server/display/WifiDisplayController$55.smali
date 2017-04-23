.class Lcom/android/server/display/WifiDisplayController$55;
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
    .line 4166
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$55;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4170
    const-string/jumbo v2, "WifiDisplayController"

    const-string/jumbo v3, "[GC confirm connection]: accept"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4173
    const-string/jumbo v2, "wfd.sink.go_intent"

    .line 4174
    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 4172
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4175
    .local v0, "goIntent":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4177
    .local v1, "value":I
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sink go_intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$55;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get62(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$55;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get60(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->setGCInviteResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4181
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$55;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->-wrap45(Lcom/android/server/display/WifiDisplayController;I)V

    .line 4168
    return-void
.end method
