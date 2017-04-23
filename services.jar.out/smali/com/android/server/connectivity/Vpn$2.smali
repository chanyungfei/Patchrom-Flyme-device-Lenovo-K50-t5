.class Lcom/android/server/connectivity/Vpn$2;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, -0x2710

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 162
    .local v1, "userHandle":I
    if-ne v1, v3, :cond_0

    return-void

    .line 164
    :cond_0
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-get8(Lcom/android/server/connectivity/Vpn;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 166
    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "VPN not connected, do not add user for vpn"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2, v1}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;I)V

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-get8(Lcom/android/server/connectivity/Vpn;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 171
    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "VPN not connected, do not remove user for vpn"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2, v1}, Lcom/android/server/connectivity/Vpn;->-wrap4(Lcom/android/server/connectivity/Vpn;I)V

    goto :goto_0
.end method
