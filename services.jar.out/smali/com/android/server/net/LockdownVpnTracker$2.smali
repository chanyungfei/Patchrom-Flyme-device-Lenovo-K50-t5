.class Lcom/android/server/net/LockdownVpnTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "LockdownVpnTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/LockdownVpnTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "LockdownVpnTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRecevie() action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string/jumbo v2, "lenovo.android.security.KeyStore.action.KEYSTORE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    const-string/jumbo v2, "keystore_action"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "extra":Ljava/lang/String;
    const-string/jumbo v2, "keystore_reset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->-get0(Lcom/android/server/net/LockdownVpnTracker;)Lcom/android/server/ConnectivityService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->-get0(Lcom/android/server/net/LockdownVpnTracker;)Lcom/android/server/ConnectivityService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 152
    const-string/jumbo v2, "LockdownVpnTracker"

    const-string/jumbo v3, "onRecevie() KeyStore reset."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v1    # "extra":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v1    # "extra":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "keystore_delete_key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "LOCKDOWN_VPN"

    .line 156
    const-string/jumbo v3, "keystore_delete_key"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->-get0(Lcom/android/server/net/LockdownVpnTracker;)Lcom/android/server/ConnectivityService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->-get0(Lcom/android/server/net/LockdownVpnTracker;)Lcom/android/server/ConnectivityService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 159
    const-string/jumbo v2, "LockdownVpnTracker"

    const-string/jumbo v3, "onRecevie() LOCKDOWN_VPN has deleted."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    .end local v1    # "extra":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "lenovo.com.android.server.am.ActivityManagerService.action.VPN_CLEAR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->-get0(Lcom/android/server/net/LockdownVpnTracker;)Lcom/android/server/ConnectivityService;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 165
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$2;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->-get0(Lcom/android/server/net/LockdownVpnTracker;)Lcom/android/server/ConnectivityService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 166
    const-string/jumbo v2, "LockdownVpnTracker"

    const-string/jumbo v3, "onRecevie() LOCKDOWN_VPN has deleted."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_3
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    const-string/jumbo v3, "LOCKDOWN_VPN"

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    goto :goto_0
.end method
