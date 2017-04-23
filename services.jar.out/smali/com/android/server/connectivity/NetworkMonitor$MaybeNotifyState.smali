.class Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaybeNotifyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method

.method private makePortalIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 402
    const-string/jumbo v5, "NetworkMonitor"

    const-string/jumbo v6, "makePortalIntent"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v4, 0x0

    .line 404
    .local v4, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    const-string/jumbo v6, "http://www.lenovo.com.cn"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 406
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 407
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 408
    const-string/jumbo v5, "com.lenovo.browser"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 409
    const-string/jumbo v5, "com.lenovo.browser"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 410
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget-boolean v5, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_1

    .line 411
    const-string/jumbo v4, "com.lenovo.browser"

    .line 412
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 413
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 415
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .local v4, "packageName":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    .line 416
    const-string/jumbo v5, "NetworkMonitor"

    const-string/jumbo v6, "Lenovo Browser is DISABLED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "NetworkMonitor"

    const-string/jumbo v6, "Lenovo Browser NOT exist"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v4, 0x0

    .restart local v4    # "packageName":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public exit()V
    .locals 6

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 457
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    .line 456
    const v3, 0x8200a

    const/4 v4, 0x0

    .line 457
    const/4 v5, 0x0

    .line 456
    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 458
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 455
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 427
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 450
    const/4 v1, 0x0

    return v1

    .line 444
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->makePortalIntent()Landroid/content/Intent;

    move-result-object v0

    .line 446
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10400000

    .line 445
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 447
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 448
    const/4 v1, 0x1

    return v1

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x8200b
        :pswitch_0
    .end packed-switch
.end method
