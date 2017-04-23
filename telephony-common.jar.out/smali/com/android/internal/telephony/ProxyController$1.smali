.class Lcom/android/internal/telephony/ProxyController$1;
.super Landroid/content/BroadcastReceiver;
.source "ProxyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProxyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ProxyController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 167
    return-void

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive: action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ProxyController;->-wrap0(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 172
    .local v2, "mAirplaneModeOn":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_AIRPLANE_MODE_CHANGED, enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ProxyController;->-wrap0(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 173
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v3}, Lcom/android/internal/telephony/ProxyController;->-get0(Lcom/android/internal/telephony/ProxyController;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 174
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v3, v6}, Lcom/android/internal/telephony/ProxyController;->-set0(Lcom/android/internal/telephony/ProxyController;I)I

    .line 176
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    iget-object v4, v4, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v3}, Lcom/android/internal/telephony/ProxyController;->-wrap6(Lcom/android/internal/telephony/ProxyController;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v2    # "mAirplaneModeOn":Z
    :cond_1
    :goto_1
    return-void

    .line 171
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "mAirplaneModeOn":Z
    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$1;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v3}, Lcom/android/internal/telephony/ProxyController;->-wrap6(Lcom/android/internal/telephony/ProxyController;)V

    goto :goto_1
.end method
