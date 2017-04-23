.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 5350
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5353
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 5358
    .local v8, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5359
    const-string/jumbo v1, "android.intent.extra.DOCK_STATE"

    .line 5360
    const/4 v2, 0x0

    .line 5359
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 5362
    .local v13, "dockState":I
    packed-switch v13, :pswitch_data_0

    .line 5377
    const/4 v12, 0x0

    .line 5381
    .local v12, "config":I
    :goto_0
    const/4 v1, 0x3

    if-eq v13, v1, :cond_1

    .line 5382
    if-nez v13, :cond_0

    .line 5383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get20(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 5384
    :cond_0
    const/4 v1, 0x3

    invoke-static {v1, v12}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5386
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v13}, Lcom/android/server/audio/AudioService;->-set6(Lcom/android/server/audio/AudioService;I)I

    .line 5352
    .end local v12    # "config":I
    .end local v13    # "dockState":I
    :cond_2
    :goto_1
    return-void

    .line 5364
    .restart local v13    # "dockState":I
    :pswitch_0
    const/4 v12, 0x7

    .line 5365
    .restart local v12    # "config":I
    goto :goto_0

    .line 5367
    .end local v12    # "config":I
    :pswitch_1
    const/4 v12, 0x6

    .line 5368
    .restart local v12    # "config":I
    goto :goto_0

    .line 5370
    .end local v12    # "config":I
    :pswitch_2
    const/16 v12, 0x8

    .line 5371
    .restart local v12    # "config":I
    goto :goto_0

    .line 5373
    .end local v12    # "config":I
    :pswitch_3
    const/16 v12, 0x9

    .line 5374
    .restart local v12    # "config":I
    goto :goto_0

    .line 5387
    .end local v12    # "config":I
    .end local v13    # "dockState":I
    :cond_3
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5388
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_4

    .line 5389
    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "BluetoothHeadset.ACTION_CONNECTION_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    :cond_4
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    .line 5392
    const/4 v2, 0x0

    .line 5391
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 5393
    .local v17, "state":I
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 5395
    .local v10, "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v17

    invoke-virtual {v1, v10, v0}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    .line 5396
    .end local v10    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v17    # "state":I
    :cond_5
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5397
    const/4 v9, 0x0

    .line 5398
    .local v9, "broadcast":Z
    const/16 v16, -0x1

    .line 5399
    .local v16, "scoAudioState":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 5400
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 5402
    .local v11, "btState":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 5403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    .line 5404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b

    .line 5406
    :cond_6
    :goto_2
    const/4 v9, 0x1

    .line 5408
    :cond_7
    packed-switch v11, :pswitch_data_1

    .line 5430
    :cond_8
    :goto_3
    const/4 v9, 0x0

    :cond_9
    :goto_4
    monitor-exit v2

    .line 5434
    if-eqz v9, :cond_a

    .line 5435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap11(Lcom/android/server/audio/AudioService;I)V

    .line 5438
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5439
    .local v15, "newIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.extra.SCO_AUDIO_STATE"

    move/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v15}, Lcom/android/server/audio/AudioService;->-wrap37(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 5442
    .end local v15    # "newIntent":Landroid/content/Intent;
    :cond_a
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_2

    .line 5443
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothHeadset.ACTION_AUDIO_STATE_CHANGED mScoAudioState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v3

    .line 5443
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5405
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_7

    goto :goto_2

    .line 5410
    :pswitch_4
    const/16 v16, 0x1

    .line 5411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_9

    .line 5412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_9

    .line 5413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_9

    .line 5414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 5399
    .end local v11    # "btState":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 5418
    .restart local v11    # "btState":I
    :pswitch_5
    const/16 v16, 0x0

    .line 5419
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    .line 5420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    goto/16 :goto_4

    .line 5423
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8

    .line 5424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_8

    .line 5425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_8

    .line 5426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 5446
    .end local v9    # "broadcast":Z
    .end local v11    # "btState":I
    .end local v16    # "scoAudioState":I
    :cond_c
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->onOrientationChanged(I)V

    .line 5449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->enable()V

    .line 5451
    :cond_d
    const-string/jumbo v1, "screen_state=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5452
    :cond_e
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->disable()V

    .line 5457
    :cond_f
    const-string/jumbo v1, "screen_state=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5458
    :cond_10
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 5460
    :cond_11
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get8(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    .line 5463
    const/16 v2, 0xf

    .line 5464
    const/4 v3, 0x0

    .line 5465
    const/4 v4, 0x0

    .line 5466
    const/4 v5, 0x0

    .line 5467
    const/4 v6, 0x0

    .line 5468
    const/4 v7, 0x0

    .line 5462
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-wrap36(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get25(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 5473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-wrap32(Lcom/android/server/audio/AudioService;Z)V

    .line 5475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get8(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    .line 5480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v6, v2, v3

    .line 5476
    const/16 v2, 0xa

    .line 5477
    const/4 v3, 0x2

    .line 5478
    const/4 v4, 0x0

    .line 5479
    const/4 v5, 0x0

    .line 5480
    const/4 v7, 0x0

    .line 5475
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-wrap36(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 5481
    :cond_12
    const-string/jumbo v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 5483
    const-string/jumbo v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 5484
    .local v18, "userId":I
    if-ltz v18, :cond_13

    .line 5486
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v19

    .line 5487
    .local v19, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v19

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap16(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 5489
    .end local v19    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_13
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    .line 5490
    const-string/jumbo v2, "no_record_audio"

    const/4 v3, 0x1

    .line 5489
    move/from16 v0, v18

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    goto/16 :goto_1

    .line 5491
    .end local v18    # "userId":I
    :cond_14
    const-string/jumbo v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5493
    const-string/jumbo v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 5494
    .restart local v18    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    .line 5495
    const-string/jumbo v2, "no_record_audio"

    const/4 v3, 0x0

    .line 5494
    move/from16 v0, v18

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    goto/16 :goto_1

    .line 5498
    .end local v18    # "userId":I
    :cond_15
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5499
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 5500
    .local v14, "enabled":Z
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_AIRPLANE_MODE_CHANGED enabled ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5501
    if-eqz v14, :cond_16

    .line 5502
    const-string/jumbo v1, "SetFlightMode=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5504
    :cond_16
    const-string/jumbo v1, "SetFlightMode=0"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5408
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
