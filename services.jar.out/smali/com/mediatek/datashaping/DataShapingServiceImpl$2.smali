.class Lcom/mediatek/datashaping/DataShapingServiceImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "DataShapingServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/datashaping/DataShapingServiceImpl;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0xa

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "DataShapingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received broadcast, action is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    if-ne v1, v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get4(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    if-ne v1, v0, :cond_2

    .line 128
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get4(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 130
    :cond_2
    const-string/jumbo v1, "android.intent.action.PS_NETWORK_TYPE_CHANGED"

    if-ne v1, v0, :cond_3

    .line 131
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get5(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingUtils;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/datashaping/DataShapingUtils;->setCurrentNetworkType(Landroid/content/Intent;)V

    .line 132
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get4(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 134
    :cond_3
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    if-ne v1, v0, :cond_4

    .line 135
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get4(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 137
    :cond_4
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    if-ne v1, v0, :cond_5

    .line 138
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get4(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 140
    :cond_5
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    if-ne v1, v0, :cond_6

    .line 141
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get4(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 143
    :cond_6
    const-string/jumbo v1, "android.intent.action.LTE_ACCESS_STRATUM_STATE_CHANGED"

    if-ne v1, v0, :cond_7

    .line 144
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get4(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 146
    :cond_7
    const-string/jumbo v1, "android.intent.action.SHARED_DEFAULT_APN_STATE_CHANGED"

    if-ne v1, v0, :cond_8

    .line 147
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get4(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    .line 148
    const/16 v2, 0x10

    .line 147
    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 149
    :cond_8
    const-string/jumbo v1, "com.mediatek.datashaping.CLOSE_TIME_EXPIRED"

    if-ne v1, v0, :cond_9

    .line 150
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-wrap0(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V

    .line 151
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get4(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 153
    :cond_9
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 154
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 153
    if-eqz v1, :cond_0

    .line 155
    :cond_a
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get4(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
