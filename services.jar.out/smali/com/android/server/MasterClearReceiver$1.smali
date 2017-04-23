.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MasterClearReceiver;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$intent"    # Landroid/content/Intent;
    .param p4, "val$context"    # Landroid/content/Context;
    .param p5, "val$shutdown"    # Z
    .param p6, "val$reason"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iput-object p6, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 66
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.FACTORY_WIPE_DATA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/RecoverySystem;->rebootFactoryWipeData(Landroid/content/Context;)V

    .line 84
    :goto_0
    const-string/jumbo v3, "MasterClear"

    const-string/jumbo v4, "Still running after master clear?!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_1
    return-void

    .line 69
    :cond_0
    const-string/jumbo v3, "encrypted"

    const-string/jumbo v4, "ro.crypto.state"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    const-string/jumbo v3, "MasterClear"

    const-string/jumbo v4, "do master clear on encrypted phone"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "MasterClear"

    const-string/jumbo v4, "Can\'t perform master clear/factory reset"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 73
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v4, "erase_cache_delete_data"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 74
    .local v2, "mKeepInternalStorage":Z
    const-string/jumbo v3, "MasterClear"

    const-string/jumbo v4, "do master clear on non-encrypted phone"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string/jumbo v3, "MasterClear"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sys.settings.keep_sd==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-eqz v2, :cond_2

    .line 77
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/RecoverySystem;->rebootWipeUserDataEx(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 87
    .end local v2    # "mKeepInternalStorage":Z
    :catch_1
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "MasterClear"

    const-string/jumbo v4, "Can\'t perform master clear/factory reset"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 79
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "mKeepInternalStorage":Z
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
