.class Lcom/android/server/policy/PhoneWindowManager$20;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 8069
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$20;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8071
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "mIpoEventReceiver -- onReceive -- entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8072
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8073
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8074
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Receive IPO_ENABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8075
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$20;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap17(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 8070
    :goto_0
    return-void

    .line 8076
    :cond_0
    const-string/jumbo v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8077
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Receive IPO_DISABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8078
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$20;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap16(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_0

    .line 8080
    :cond_1
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Receive Fake Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
