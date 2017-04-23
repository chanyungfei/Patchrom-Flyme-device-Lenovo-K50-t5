.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 353
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v9, :cond_0

    .line 354
    const-string/jumbo v9, "GsmSST"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Received Intent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 355
    const-string/jumbo v11, " while being destroyed. Ignoring."

    .line 354
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 359
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BroadcastReceiver: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 362
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 352
    :cond_1
    :goto_0
    return-void

    .line 363
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 364
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-set1(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z

    .line 365
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v9

    iget-object v2, v9, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 366
    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_0

    .line 367
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 370
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-set0(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    .line 371
    const-string/jumbo v9, "ro.mtk_bsp_package"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 373
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get5(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 374
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap0(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 375
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v10, 0x69

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v3

    .line 379
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 382
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 383
    const-string/jumbo v9, "ro.mtk_bsp_package"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 385
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get5(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 386
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap0(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 387
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v10, 0x68

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 390
    :catch_1
    move-exception v3

    .line 391
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 394
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 395
    const-string/jumbo v7, "UNKNOWN"

    .line 397
    .local v7, "simState":Ljava/lang/String;
    const-string/jumbo v9, "phone"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 398
    .local v8, "slotId":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v9

    if-ne v8, v9, :cond_6

    .line 399
    const-string/jumbo v9, "ss"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 400
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SIM state change, slotId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " simState["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 404
    :cond_6
    const-string/jumbo v9, "READY"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 405
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get6(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 404
    if-eqz v9, :cond_7

    .line 406
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-set5(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SimType= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get6(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 411
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get6(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get6(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 436
    :cond_7
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v9

    if-ne v8, v9, :cond_8

    .line 437
    const-string/jumbo v9, "IMSI"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 436
    if-eqz v9, :cond_8

    .line 438
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v9, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setDeviceRatMode(I)V

    .line 442
    :cond_8
    const-string/jumbo v9, "ABSENT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 443
    const-string/jumbo v9, "NOT_READY"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 442
    if-eqz v9, :cond_1

    .line 444
    :cond_9
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-set5(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    const-string/jumbo v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 445
    check-cast v5, Landroid/app/NotificationManager;

    .line 447
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    const/16 v9, 0x22c7

    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 450
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap7(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;IZ)V

    .line 452
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-set4(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-set3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    const-string/jumbo v9, "ABSENT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 457
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    goto/16 :goto_0

    .line 412
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    :cond_a
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get6(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SIM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get6(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "USIM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 413
    :cond_b
    const-string/jumbo v9, "ro.mtk_bsp_package"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 415
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get5(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get6(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/mediatek/common/telephony/IServiceStateExt;->needIccCardTypeNotification(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 417
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_c

    .line 418
    const-string/jumbo v9, "persist.radio.simswitch"

    const-string/jumbo v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 419
    .local v0, "capabilityPhoneId":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "capabilityPhoneId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 420
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v9

    add-int/lit8 v10, v0, -0x1

    if-ne v9, v10, :cond_7

    .line 421
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get6(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap8(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 427
    .end local v0    # "capabilityPhoneId":I
    :catch_2
    move-exception v3

    .line 428
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_1

    .line 424
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_c
    :try_start_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get6(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap8(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 462
    .end local v7    # "simState":Ljava/lang/String;
    .end local v8    # "slotId":I
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 466
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap4(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 468
    const-string/jumbo v9, "simDetectStatus"

    .line 469
    const/4 v10, 0x4

    .line 468
    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 470
    const/4 v10, 0x4

    .line 468
    if-eq v9, v10, :cond_1

    .line 471
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay(Z)V

    goto/16 :goto_0

    .line 473
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 474
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v4

    .line 475
    .local v4, "majorPhoneId":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get3(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    .line 476
    .local v1, "currentPhoneId":I
    if-ne v1, v4, :cond_f

    .line 477
    const-string/jumbo v9, "phoneName"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 478
    .local v6, "phoneType":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "phoneType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 479
    const-string/jumbo v9, "CdmaLteDc"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 480
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string/jumbo v10, "CdmaLteDc mode"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 481
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v9, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setDeviceRatMode(I)V

    .line 484
    .end local v6    # "phoneType":Ljava/lang/String;
    :cond_f
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    .line 485
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 487
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap1(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 488
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string/jumbo v10, "Radio Tech mode changed to CSFB, notify signal strength"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 489
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-get4(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V

    goto/16 :goto_0
.end method
