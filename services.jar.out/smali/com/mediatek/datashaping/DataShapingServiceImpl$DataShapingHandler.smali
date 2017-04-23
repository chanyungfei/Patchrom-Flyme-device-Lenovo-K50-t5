.class Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
.super Landroid/os/Handler;
.source "DataShapingServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/datashaping/DataShapingServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataShapingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/datashaping/DataShapingServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .line 386
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 385
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 391
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 390
    :goto_0
    :pswitch_0
    return-void

    .line 395
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 401
    :pswitch_2
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[handleMessage] msg_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    invoke-static {v1, v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-set7(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/view/WindowManagerInternal;)Landroid/view/WindowManagerInternal;

    .line 403
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    .line 404
    const-string/jumbo v0, "input"

    .line 403
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    invoke-static {v1, v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-set5(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService;

    .line 405
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    new-instance v1, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    iget-object v3, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v3}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get1(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-set4(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;

    goto :goto_0

    .line 412
    :pswitch_3
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[handleMessage] msg_screen_state_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onScreenStateChanged(Z)V

    goto :goto_0

    .line 416
    :pswitch_4
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[handleMessage] msg_network_type_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onNetworkTypeChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 420
    :pswitch_5
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[handleMessage] msg_wifi_ap_state_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onWifiTetherStateChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 424
    :pswitch_6
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[handleMessage] msg_usb_state_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onUsbConnectionChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 428
    :pswitch_7
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[handleMessage] msg_alarm_manager_trigger"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingState;->onAlarmManagerTrigger()V

    goto/16 :goto_0

    .line 432
    :pswitch_8
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[handleMessage] msg_lte_as_state_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onLteAccessStratumStateChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 436
    :pswitch_9
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[handleMessage] msg_shared_default_apn_state_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onSharedDefaultApnStateChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 440
    :pswitch_a
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[handleMessage] msg_gate_close_timer_expired"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingState;->onCloseTimeExpired()V

    .line 442
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-wrap1(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V

    goto/16 :goto_0

    .line 445
    :pswitch_b
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[handleMessage] msg_connectivity_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get5(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAsReport()V

    goto/16 :goto_0

    .line 449
    :pswitch_c
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[handleMessage] msg_headsethook_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/datashaping/DataShapingState;->onMediaButtonTrigger()V

    goto/16 :goto_0

    .line 453
    :pswitch_d
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[handleMessage] msg_bt_ap_state_changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onBTStateChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 458
    :pswitch_e
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onDeviceIdleStateChanged(Z)V

    goto/16 :goto_0

    .line 461
    :pswitch_f
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->this$0:Lcom/mediatek/datashaping/DataShapingServiceImpl;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->-get2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mediatek/datashaping/DataShapingState;->onAPPStandbyStateChanged(Z)V

    goto/16 :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
