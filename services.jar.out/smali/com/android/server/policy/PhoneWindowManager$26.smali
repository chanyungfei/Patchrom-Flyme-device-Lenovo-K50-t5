.class Lcom/android/server/policy/PhoneWindowManager$26;
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
    .line 8199
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$26;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8203
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "mStatusBarEventReceiver -- onReceive -- entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8205
    const-string/jumbo v1, "com.mediatek.action.REQUEST_TRANSIENT_STATUSBAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8206
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$26;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 8207
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$26;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$26;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->-wrap22(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 8200
    :cond_0
    return-void
.end method
