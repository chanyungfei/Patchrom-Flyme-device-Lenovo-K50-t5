.class Lcom/android/server/display/WifiDisplayController$48;
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

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;
    .param p2, "val$checkbox"    # Landroid/widget/CheckBox;

    .prologue
    .line 4013
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$48;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$48;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 4017
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$48;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 4018
    .local v0, "checked":Z
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[Change resolution]: ok. checked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    if-eqz v0, :cond_2

    .line 4024
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$48;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4025
    const-string/jumbo v2, "wifi_display_change_resolution_remind"

    .line 4023
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4036
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$48;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get11(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$48;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get13(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4038
    :cond_0
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "-- reconnect for resolution change --"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4040
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$48;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-wrap20(Lcom/android/server/display/WifiDisplayController;)V

    .line 4041
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$48;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1, v4}, Lcom/android/server/display/WifiDisplayController;->-set26(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 4015
    :cond_1
    return-void

    .line 4030
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$48;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4031
    const-string/jumbo v2, "wifi_display_change_resolution_remind"

    .line 4032
    const/4 v3, 0x0

    .line 4029
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
