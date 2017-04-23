.class Lcom/android/server/accessibility/AccessibilityManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V
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
    .line 369
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 372
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap25(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap23(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    goto :goto_0

    .line 377
    :cond_2
    const-string/jumbo v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 379
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 380
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v3

    if-nez v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_0

    .line 385
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_3
    const-string/jumbo v3, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    const-string/jumbo v3, "setting_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "which":Ljava/lang/String;
    const-string/jumbo v3, "enabled_accessibility_services"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 389
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 390
    const-string/jumbo v5, "previous_value"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 391
    const-string/jumbo v6, "new_value"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 389
    invoke-virtual {v3, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreEnabledAccessibilityServicesLocked(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
