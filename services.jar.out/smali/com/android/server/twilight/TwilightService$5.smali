.class Lcom/android/server/twilight/TwilightService$5;
.super Landroid/content/BroadcastReceiver;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$5;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 605
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "TwilightService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NightWatchReceiver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    add-long v2, v4, v6

    .line 609
    .local v2, "alarmTime":J
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$5;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v4, v2, v3, v9, v8}, Lcom/android/server/twilight/TwilightService;->-wrap1(Lcom/android/server/twilight/TwilightService;JII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 610
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$5;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v4}, Lcom/android/server/twilight/TwilightService;->-wrap6(Lcom/android/server/twilight/TwilightService;)V

    .line 604
    .end local v2    # "alarmTime":J
    :cond_0
    :goto_0
    return-void

    .line 612
    .restart local v2    # "alarmTime":J
    :cond_1
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$5;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v4}, Lcom/android/server/twilight/TwilightService;->-wrap3(Lcom/android/server/twilight/TwilightService;)V

    .line 613
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$5;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v4, v2, v3}, Lcom/android/server/twilight/TwilightService;->-wrap4(Lcom/android/server/twilight/TwilightService;J)V

    goto :goto_0

    .line 615
    .end local v2    # "alarmTime":J
    :cond_2
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 616
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$5;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v4}, Lcom/android/server/twilight/TwilightService;->-wrap3(Lcom/android/server/twilight/TwilightService;)V

    .line 617
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$5;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7, v9, v8}, Lcom/android/server/twilight/TwilightService;->-wrap1(Lcom/android/server/twilight/TwilightService;JII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 618
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$5;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v4}, Lcom/android/server/twilight/TwilightService;->-wrap6(Lcom/android/server/twilight/TwilightService;)V

    .line 620
    :cond_3
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$5;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v4}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 621
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$5;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 622
    const-string/jumbo v5, "phone"

    .line 621
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 623
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_4

    return-void

    .line 624
    :cond_4
    const-string/jumbo v4, "TwilightService"

    const-string/jumbo v5, "enableDataConnectivity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$5;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v4, v8}, Lcom/android/server/twilight/TwilightService;->-set0(Lcom/android/server/twilight/TwilightService;Z)Z

    .line 626
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    goto :goto_0

    .line 628
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    const-string/jumbo v4, "com.android.action.AUTO_FORCE_STOP"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 629
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$5;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v4}, Lcom/android/server/twilight/TwilightService;->-wrap2(Lcom/android/server/twilight/TwilightService;)V

    goto :goto_0
.end method
