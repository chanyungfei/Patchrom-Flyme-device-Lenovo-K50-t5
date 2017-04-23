.class Lcom/android/server/accessibility/AccessibilityManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerIPOReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 4015
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4018
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 4019
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    const-string/jumbo v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4021
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    .line 4022
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4017
    :cond_0
    :goto_0
    return-void

    .line 4023
    :cond_1
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4024
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$5;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    goto :goto_0
.end method
