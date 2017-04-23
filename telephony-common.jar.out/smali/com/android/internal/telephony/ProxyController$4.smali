.class Lcom/android/internal/telephony/ProxyController$4;
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
    .line 1149
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController$4;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 1154
    .local v2, "phoneState":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$4;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPhoneStateReceiver: action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ProxyController;->-wrap0(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 1155
    const-string/jumbo v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1156
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1157
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$4;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phoneState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/ProxyController;->-wrap0(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 1158
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1159
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$4;->this$0:Lcom/android/internal/telephony/ProxyController;

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v3, :cond_0

    .line 1160
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$4;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v3}, Lcom/android/internal/telephony/ProxyController;->-get0(Lcom/android/internal/telephony/ProxyController;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1162
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$4;->this$0:Lcom/android/internal/telephony/ProxyController;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController$4;->this$0:Lcom/android/internal/telephony/ProxyController;

    iget-object v4, v4, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1163
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$4;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v3}, Lcom/android/internal/telephony/ProxyController;->-wrap6(Lcom/android/internal/telephony/ProxyController;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1165
    :catch_0
    move-exception v1

    .line 1166
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$4;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-static {v3}, Lcom/android/internal/telephony/ProxyController;->-wrap6(Lcom/android/internal/telephony/ProxyController;)V

    goto :goto_0
.end method
