.class Lcom/android/server/statusbar/StatusBarManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    .line 897
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 900
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 903
    const-string/jumbo v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 902
    if-eqz v1, :cond_2

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->-wrap0(Lcom/android/server/statusbar/StatusBarManagerService;Z)I

    .line 899
    :cond_1
    :goto_0
    return-void

    .line 905
    :cond_2
    const-string/jumbo v1, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 906
    const-string/jumbo v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 905
    if-eqz v1, :cond_1

    .line 907
    :cond_3
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->-wrap0(Lcom/android/server/statusbar/StatusBarManagerService;Z)I

    goto :goto_0
.end method
