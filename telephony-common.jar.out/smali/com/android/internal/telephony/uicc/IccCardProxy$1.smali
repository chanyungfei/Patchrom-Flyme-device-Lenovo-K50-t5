.class Lcom/android/internal/telephony/uicc/IccCardProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "IccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/IccCardProxy;

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1440
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string/jumbo v2, "[Receiver]+"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-wrap0(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    .line 1441
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-wrap0(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    .line 1444
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1445
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-get1()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-get0(Lcom/android/internal/telephony/uicc/IccCardProxy;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-get1()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1449
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string/jumbo v2, "[Receiver]-"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-wrap0(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    .line 1439
    return-void
.end method
