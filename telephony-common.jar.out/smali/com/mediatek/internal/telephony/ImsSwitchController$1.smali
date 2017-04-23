.class Lcom/mediatek/internal/telephony/ImsSwitchController$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

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

    const/4 v6, 0x1

    .line 397
    if-nez p2, :cond_0

    return-void

    .line 398
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "action":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIntentReceiver Receive action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap2(Ljava/lang/String;)V

    .line 401
    const-string/jumbo v4, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap1(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    .line 403
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v4, v7}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-set1(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 404
    :cond_2
    const-string/jumbo v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 405
    const-string/jumbo v4, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 404
    if-eqz v4, :cond_4

    .line 406
    :cond_3
    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "state":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 408
    const-string/jumbo v4, "phone"

    const/4 v6, -0x1

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 409
    const-string/jumbo v4, "phoneType"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 410
    const-class v4, Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {v4, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneConstants$State;

    .line 407
    invoke-static {v5, v6, v7, v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap3(Lcom/mediatek/internal/telephony/ImsSwitchController;IILcom/android/internal/telephony/PhoneConstants$State;)V

    goto :goto_0

    .line 411
    .end local v2    # "state":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 412
    const-string/jumbo v4, "wifi_state"

    .line 413
    const/4 v5, 0x4

    .line 412
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 414
    .local v3, "wifiState":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap4(Lcom/mediatek/internal/telephony/ImsSwitchController;I)V

    goto :goto_0

    .line 415
    .end local v3    # "wifiState":I
    :cond_5
    const-string/jumbo v4, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 416
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v4

    .line 417
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v5

    .line 416
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->getDcSwitchState(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    .restart local v2    # "state":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-get0(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 420
    const-string/jumbo v5, "volte_vt_enabled"

    .line 418
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 422
    .local v1, "imsSetting":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handle ACTION_SET_RADIO_CAPABILITY_DONE: data state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 423
    const-string/jumbo v5, " imsSetting:"

    .line 422
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap2(Ljava/lang/String;)V

    .line 425
    if-ne v1, v6, :cond_1

    const-string/jumbo v4, "attaching"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 426
    const-string/jumbo v4, "attached"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 425
    if-eqz v4, :cond_1

    .line 427
    :cond_6
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 428
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v5

    .line 427
    invoke-static {v4, v6, v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap5(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    goto/16 :goto_0

    .line 430
    .end local v1    # "imsSetting":I
    .end local v2    # "state":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 431
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/ImsSwitchController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
