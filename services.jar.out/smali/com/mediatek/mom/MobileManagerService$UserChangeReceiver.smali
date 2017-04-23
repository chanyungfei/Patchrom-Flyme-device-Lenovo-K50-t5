.class Lcom/mediatek/mom/MobileManagerService$UserChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/MobileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mom/MobileManagerService;


# direct methods
.method private constructor <init>(Lcom/mediatek/mom/MobileManagerService;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/mediatek/mom/MobileManagerService$UserChangeReceiver;->this$0:Lcom/mediatek/mom/MobileManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/mom/MobileManagerService;Lcom/mediatek/mom/MobileManagerService$1;)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/mediatek/mom/MobileManagerService$UserChangeReceiver;-><init>(Lcom/mediatek/mom/MobileManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, -0x2710

    const/4 v2, 0x0

    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    .line 553
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    .line 557
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    .line 561
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 566
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "android.intent.extra.user_handle"

    .line 554
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 555
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$UserChangeReceiver;->this$0:Lcom/mediatek/mom/MobileManagerService;

    # invokes: Lcom/mediatek/mom/MobileManagerService;->NotifyControllerUserStatusChanged(II)V
    invoke-static {v1, v0, v5}, Lcom/mediatek/mom/MobileManagerService;->access$500(Lcom/mediatek/mom/MobileManagerService;II)V

    .line 556
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$UserChangeReceiver;->this$0:Lcom/mediatek/mom/MobileManagerService;

    # invokes: Lcom/mediatek/mom/MobileManagerService;->sendUserBroadcastAsUser(II)V
    invoke-static {v1, v5, v0}, Lcom/mediatek/mom/MobileManagerService;->access$600(Lcom/mediatek/mom/MobileManagerService;II)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "android.intent.extra.user_handle"

    .line 558
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 559
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$UserChangeReceiver;->this$0:Lcom/mediatek/mom/MobileManagerService;

    # invokes: Lcom/mediatek/mom/MobileManagerService;->NotifyControllerUserStatusChanged(II)V
    invoke-static {v1, v0, v4}, Lcom/mediatek/mom/MobileManagerService;->access$500(Lcom/mediatek/mom/MobileManagerService;II)V

    .line 560
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$UserChangeReceiver;->this$0:Lcom/mediatek/mom/MobileManagerService;

    # invokes: Lcom/mediatek/mom/MobileManagerService;->sendUserBroadcastAsUser(II)V
    invoke-static {v1, v4, v0}, Lcom/mediatek/mom/MobileManagerService;->access$600(Lcom/mediatek/mom/MobileManagerService;II)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "android.intent.extra.user_handle"

    .line 562
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 563
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$UserChangeReceiver;->this$0:Lcom/mediatek/mom/MobileManagerService;

    # invokes: Lcom/mediatek/mom/MobileManagerService;->NotifyControllerUserStatusChanged(II)V
    invoke-static {v1, v0, v2}, Lcom/mediatek/mom/MobileManagerService;->access$500(Lcom/mediatek/mom/MobileManagerService;II)V

    .line 564
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$UserChangeReceiver;->this$0:Lcom/mediatek/mom/MobileManagerService;

    # invokes: Lcom/mediatek/mom/MobileManagerService;->sendUserBroadcastAsUser(II)V
    invoke-static {v1, v2, v0}, Lcom/mediatek/mom/MobileManagerService;->access$600(Lcom/mediatek/mom/MobileManagerService;II)V

    goto :goto_0
.end method
