.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 407
    const-string/jumbo v7, "UsbDeviceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 409
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.via.bypass.action.setfunction"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 411
    const-string/jumbo v7, "com.via.bypass.enable_bypass"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 412
    .local v3, "enablebypass":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 413
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v8, "via_bypass"

    invoke-virtual {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    .line 406
    .end local v3    # "enablebypass":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 415
    .restart local v3    # "enablebypass":Ljava/lang/Boolean;
    :cond_1
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-virtual {v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->closeBypassFunction()V

    goto :goto_0

    .line 417
    .end local v3    # "enablebypass":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.via.bypass.action.settetherfunction"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 419
    const-string/jumbo v7, "com.via.bypass.enable_bypass"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 422
    .restart local v3    # "enablebypass":Ljava/lang/Boolean;
    const-string/jumbo v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 421
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 424
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 425
    const-string/jumbo v7, "UsbDeviceManager"

    const-string/jumbo v8, "Enable the byass with Tethering"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v7, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-set0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 427
    invoke-virtual {v2, v11}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    goto :goto_0

    .line 429
    :cond_3
    const-string/jumbo v7, "UsbDeviceManager"

    const-string/jumbo v8, "disable the byass with Tethering"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-virtual {v7, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->updateBypassMode(I)V

    .line 431
    invoke-virtual {v2, v10}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    goto :goto_0

    .line 433
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "enablebypass":Ljava/lang/Boolean;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.via.bypass.action.setbypass"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 434
    const-string/jumbo v7, "com.via.bypass.bypass_code"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 435
    .local v1, "bypasscode":I
    if-ltz v1, :cond_5

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->-get0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I

    move-result v7

    if-gt v1, v7, :cond_5

    .line 436
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-static {v7, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->-wrap2(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;I)V

    goto :goto_0

    .line 438
    :cond_5
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->-wrap0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->-wrap1(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;Ljava/lang/Boolean;I)V

    goto/16 :goto_0

    .line 440
    .end local v1    # "bypasscode":I
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.via.bypass.action.getbypass"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 441
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "com.via.bypass.action.getbypass_result"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v5, "reintent":Landroid/content/Intent;
    const-string/jumbo v7, "com.via.bypass.bypass_code"

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->-wrap0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->-get10(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 444
    .end local v5    # "reintent":Landroid/content/Intent;
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "via.cdma.action.ets.dev.changed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 445
    const-string/jumbo v7, "set.ets.dev.result"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 447
    .local v6, "result":Z
    if-eqz v6, :cond_8

    .line 449
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->-get1(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I

    move-result v0

    .line 454
    .local v0, "bypass":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 455
    .local v4, "m":Landroid/os/Message;
    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 456
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v7, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 452
    .end local v0    # "bypass":I
    .end local v4    # "m":Landroid/os/Message;
    :cond_8
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->-wrap0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I

    move-result v0

    .restart local v0    # "bypass":I
    goto :goto_1

    .line 457
    .end local v0    # "bypass":I
    .end local v6    # "result":Z
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "android.intent.action.RADIO_AVAILABLE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 458
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->-get2(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 459
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "via.cdma.action.set.ets.dev"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .restart local v5    # "reintent":Landroid/content/Intent;
    const-string/jumbo v7, "via.cdma.extral.ets.dev"

    invoke-virtual {v5, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->-get10(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
