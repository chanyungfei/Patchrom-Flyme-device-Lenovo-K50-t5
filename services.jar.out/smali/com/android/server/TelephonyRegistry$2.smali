.class Lcom/android/server/TelephonyRegistry$2;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 275
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "action":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBroadcastReceiver: action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-wrap3(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 278
    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 279
    .local v3, "userHandle":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive: userHandle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-wrap3(Ljava/lang/String;)V

    .line 280
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    .end local v3    # "userHandle":I
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 282
    new-instance v2, Ljava/lang/Integer;

    .line 283
    const-string/jumbo v4, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v5

    .line 282
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 284
    .local v2, "newDefaultSubIdObj":Ljava/lang/Integer;
    const-string/jumbo v4, "slot"

    .line 285
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-get2(Lcom/android/server/TelephonyRegistry;)I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 284
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 287
    .local v1, "newDefaultPhoneId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive:current mDefaultSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-get2(Lcom/android/server/TelephonyRegistry;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    const-string/jumbo v5, " current mDefaultPhoneId="

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-get1(Lcom/android/server/TelephonyRegistry;)I

    move-result v5

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    const-string/jumbo v5, " newDefaultSubId= "

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 289
    const-string/jumbo v5, " newDefaultPhoneId="

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-wrap3(Ljava/lang/String;)V

    .line 292
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4, v1}, Lcom/android/server/TelephonyRegistry;->-wrap0(Lcom/android/server/TelephonyRegistry;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-get2(Lcom/android/server/TelephonyRegistry;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-get1(Lcom/android/server/TelephonyRegistry;)I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 294
    :cond_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v1, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 297
    .end local v1    # "newDefaultPhoneId":I
    .end local v2    # "newDefaultSubIdObj":Ljava/lang/Integer;
    :cond_3
    const-string/jumbo v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    const-string/jumbo v4, "TelephonyRegistryonReceive: ACTION_SUBINFO_RECORD_UPDATED"

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-wrap3(Ljava/lang/String;)V

    .line 301
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
