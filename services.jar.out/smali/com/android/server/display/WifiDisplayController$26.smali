.class Lcom/android/server/display/WifiDisplayController$26;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->handleScanResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$count:I

.field final synthetic val$displays:[Landroid/hardware/display/WifiDisplay;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;I[Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;
    .param p2, "val$count"    # I
    .param p3, "val$displays"    # [Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$26;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput p2, p0, Lcom/android/server/display/WifiDisplayController$26;->val$count:I

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController$26;->val$displays:[Landroid/hardware/display/WifiDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1029
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "callback onScanResults(), count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController$26;->val$count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/display/WifiDisplayController$26;->val$count:I

    if-ge v0, v1, :cond_0

    .line 1032
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$26;->val$displays:[Landroid/hardware/display/WifiDisplay;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$26;->val$displays:[Landroid/hardware/display/WifiDisplay;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1035
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$26;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get28(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$26;->val$displays:[Landroid/hardware/display/WifiDisplay;

    invoke-interface {v1, v2}, Lcom/android/server/display/WifiDisplayController$Listener;->onScanResults([Landroid/hardware/display/WifiDisplay;)V

    .line 1028
    return-void
.end method
