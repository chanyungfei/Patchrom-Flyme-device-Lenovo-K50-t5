.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 295
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string/jumbo v10, "[Receiver]+"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "action":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 300
    const-string/jumbo v9, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 311
    :cond_0
    const-string/jumbo v9, "phone"

    .line 312
    const/4 v10, -0x1

    .line 311
    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 313
    .local v5, "slotId":I
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "slotId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 314
    const/4 v9, -0x1

    if-ne v5, v9, :cond_3

    .line 317
    const-string/jumbo v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 318
    const-string/jumbo v9, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 317
    if-eqz v9, :cond_3

    .line 320
    :cond_1
    return-void

    .line 302
    .end local v5    # "slotId":I
    :cond_2
    const-string/jumbo v9, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 303
    const-string/jumbo v9, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 304
    const-string/jumbo v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 305
    const-string/jumbo v9, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 306
    const-string/jumbo v9, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 308
    return-void

    .line 323
    .restart local v5    # "slotId":I
    :cond_3
    const-string/jumbo v9, "ss"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "simStatus":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "simStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 326
    const-string/jumbo v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 327
    const-string/jumbo v9, "ABSENT"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 328
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v11, 0x4

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v5, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 433
    :cond_4
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string/jumbo v10, "[Receiver]-"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 294
    return-void

    .line 329
    :cond_5
    const-string/jumbo v9, "UNKNOWN"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 330
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v11, 0x7

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v5, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 331
    :cond_6
    const-string/jumbo v9, "CARD_IO_ERROR"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 332
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v11, 0x6

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v5, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 334
    if-ltz v5, :cond_7

    .line 335
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get1()[Z

    move-result-object v9

    const/4 v10, 0x1

    aput-boolean v10, v9, v5

    .line 337
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap7(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    goto :goto_0

    .line 340
    :cond_8
    const-string/jumbo v9, "READY"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 341
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/16 v11, 0x64

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v5, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 344
    :cond_9
    const-string/jumbo v9, "IMSI"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 345
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Lenovo: SIM"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " IMSI"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 346
    if-ltz v5, :cond_4

    .line 347
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get1()[Z

    move-result-object v9

    const/4 v10, 0x1

    aput-boolean v10, v9, v5

    goto/16 :goto_0

    .line 351
    :cond_a
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Ignoring simStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :cond_b
    const-string/jumbo v9, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 354
    const-string/jumbo v9, "LOCKED"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 356
    const-string/jumbo v9, "reason"

    .line 355
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "reason":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v11, 0x5

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v5, v12, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 358
    .end local v3    # "reason":Ljava/lang/String;
    :cond_c
    const-string/jumbo v9, "LOADED"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 359
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v11, 0x3

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v5, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 361
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/16 v10, 0xa

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-set2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I

    .line 364
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap7(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    goto/16 :goto_0

    .line 367
    :cond_d
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Ignoring simStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 370
    :cond_e
    const-string/jumbo v9, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 371
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get0()I

    move-result v9

    if-ge v1, v9, :cond_f

    .line 372
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap3(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 374
    :cond_f
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get9(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    .line 375
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->removeStickyIntent()V

    goto/16 :goto_0

    .line 376
    .end local v1    # "i":I
    :cond_10
    const-string/jumbo v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 377
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get9(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v7

    .line 378
    .local v7, "subIdList":[I
    const/4 v9, 0x0

    array-length v10, v7

    :goto_2
    if-ge v9, v10, :cond_4

    aget v6, v7, v9

    .line 379
    .local v6, "subId":I
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v11, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap8(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    .line 378
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 381
    .end local v6    # "subId":I
    .end local v7    # "subIdList":[I
    :cond_11
    const-string/jumbo v9, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 382
    const-string/jumbo v9, "phone"

    .line 383
    const/4 v10, -0x1

    .line 382
    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 384
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[Common Slot] NO_CHANTED, slotId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 385
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/16 v11, 0x67

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v5, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 386
    :cond_12
    const-string/jumbo v9, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 387
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActualSvlteModeSlotId()I

    move-result v8

    .line 388
    .local v8, "svlteSlotId":I
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "oldSvlteSlotId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get5(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", svlteSlotId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 389
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get5(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    move-result v9

    if-eq v9, v8, :cond_4

    .line 390
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    array-length v9, v9

    if-ge v1, v9, :cond_13

    .line 391
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "svlte"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " lte ci:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 392
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 391
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 393
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "svlte"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " nlte ci:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 394
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 393
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 395
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "svlte"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " active ci:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 396
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 395
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 399
    :cond_13
    const/4 v1, 0x0

    :goto_4
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    array-length v9, v9

    if-ge v1, v9, :cond_4

    .line 400
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get10()[I

    move-result-object v9

    const/4 v10, 0x0

    aput v10, v9, v1

    .line 401
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v10

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v9, v10, v1

    .line 403
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 404
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 405
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unregister for mCis["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v11

    aget-object v11, v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 408
    .end local v1    # "i":I
    .end local v8    # "svlteSlotId":I
    :cond_14
    const-string/jumbo v9, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 409
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActualSvlteModeSlotId()I

    move-result v8

    .line 410
    .restart local v8    # "svlteSlotId":I
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "oldSvlteSlotId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get5(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", svlteSlotId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 411
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get5(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    move-result v9

    if-eq v9, v8, :cond_4

    .line 412
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    array-length v9, v9

    if-ge v1, v9, :cond_15

    .line 413
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v10

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v9, v10, v1

    .line 415
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 416
    .local v2, "index":Ljava/lang/Integer;
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 417
    const/16 v11, 0x66

    .line 416
    invoke-interface {v9, v10, v11, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 418
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 419
    const/16 v11, 0x65

    .line 418
    invoke-interface {v9, v10, v11, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 420
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mCis["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v11

    aget-object v11, v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 421
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "svlte"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " lte ci:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 422
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 421
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 423
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "svlte"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " nlte ci:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 424
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 423
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 425
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "svlte"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " active ci:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 426
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 425
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 429
    .end local v2    # "index":Ljava/lang/Integer;
    :cond_15
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-set1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I

    goto/16 :goto_0
.end method
