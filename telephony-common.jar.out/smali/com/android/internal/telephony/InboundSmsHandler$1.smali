.class Lcom/android/internal/telephony/InboundSmsHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 1901
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1903
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string/jumbo v3, "[Moms] Receive a intent to check permission"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1905
    const-string/jumbo v2, "format"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1907
    .local v0, "intentFormat":Ljava/lang/String;
    const-string/jumbo v2, "subscription"

    .line 1908
    const/4 v3, -0x1

    .line 1907
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1909
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Moms] intentFormat ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1911
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1912
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "3gpp2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1914
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.MOMS_SMS_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1915
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->MomsPermissionCheck(Landroid/content/Intent;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1917
    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler$1;->setResultCode(I)V

    .line 1902
    :cond_0
    :goto_1
    return-void

    .line 1913
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "3gpp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1922
    :cond_2
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler$1;->setResultCode(I)V

    goto :goto_1
.end method
