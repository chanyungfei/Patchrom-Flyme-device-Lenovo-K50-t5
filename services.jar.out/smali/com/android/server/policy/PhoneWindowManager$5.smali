.class Lcom/android/server/policy/PhoneWindowManager$5;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1004
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1007
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap0(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "mPowerLongPressReboot Disable poweroff dialog on PreventMisoperation mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-void

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyRebootHandled:Z

    if-nez v0, :cond_3

    .line 1013
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyRebootHandled:Z

    .line 1014
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap19(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v1, "globalactions"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v0, :cond_2

    .line 1019
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v1, Lcom/android/server/policy/GlobalActions;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 1021
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions;->showRebootDialog()V

    .line 1005
    :cond_3
    return-void
.end method
