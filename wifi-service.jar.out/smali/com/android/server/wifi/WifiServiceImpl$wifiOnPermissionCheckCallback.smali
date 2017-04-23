.class Lcom/android/server/wifi/WifiServiceImpl$wifiOnPermissionCheckCallback;
.super Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "wifiOnPermissionCheckCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 2628
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionCheckResult(Ljava/lang/String;II)V
    .locals 7
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "result"    # I

    .prologue
    const/4 v1, 0x0

    .line 2631
    if-nez p3, :cond_3

    .line 2632
    const-string/jumbo v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setWifiEnabled(PermissionCheckCallback): , uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    const/4 v0, 0x1

    .line 2634
    .local v0, "enable":Z
    if-eqz p3, :cond_0

    .line 2635
    return-void

    .line 2642
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2644
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4, v0}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 2649
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2646
    return-void

    .line 2649
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2653
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->-get8(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    const v5, 0x26008

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wifi/WifiController;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2654
    return-void

    .line 2648
    :catchall_0
    move-exception v1

    .line 2649
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2648
    throw v1

    .line 2630
    .end local v0    # "enable":Z
    .end local v2    # "ident":J
    :cond_3
    return-void
.end method
