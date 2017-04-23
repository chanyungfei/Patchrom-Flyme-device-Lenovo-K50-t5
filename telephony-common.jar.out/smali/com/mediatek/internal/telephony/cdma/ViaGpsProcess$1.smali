.class Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;
.super Landroid/content/BroadcastReceiver;
.source "ViaGpsProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    const/4 v12, 0x0

    .line 440
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "com.android.internal.telephony.via-gps-mpc-setting-notify"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 442
    const-string/jumbo v9, "via-gps-mpc-setting-ip"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "ip":Ljava/lang/String;
    const-string/jumbo v9, "via-gps-mpc-setting-port"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 445
    .local v7, "port":Ljava/lang/String;
    const-string/jumbo v9, "VIA_GPS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[VIA] INTENT_VIA_GPS_MPC_SETTING_NOTIFY IP = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 446
    const-string/jumbo v11, ", PORT = "

    .line 445
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get1(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v3, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->requestAGPSSetMpcIpPort(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 439
    .end local v3    # "ip":Ljava/lang/String;
    .end local v7    # "port":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    const-string/jumbo v9, "com.android.internal.telephony.via-simu-request"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 449
    filled-new-array {v10, v12}, [I

    move-result-object v1

    .line 450
    .local v1, "data":[I
    const-string/jumbo v9, "com.android.internal.telephony.via-simu-request-param"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    aput v9, v1, v12

    .line 451
    const-string/jumbo v9, "VIA_GPS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[VIA] INTENT_VIA_SIMU_REQUEST ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v1, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v9, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-wrap3(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;[I)V

    goto :goto_0

    .line 453
    .end local v1    # "data":[I
    :cond_2
    const-string/jumbo v9, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 454
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get4(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-wrap0(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;Lcom/android/internal/telephony/cdma/CDMAPhone;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 455
    const-string/jumbo v9, "VIA_GPS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "None Active CDMAPhone this = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void

    .line 458
    :cond_3
    const-string/jumbo v9, "VIA_GPS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ACTION_SUBINFO_RECORD_UPDATED this = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get5(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "listener$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;

    .line 460
    .local v5, "listener":Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;
    if-eqz v5, :cond_4

    .line 461
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get7(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9, v5, v12}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    .line 464
    .end local v5    # "listener":Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;
    :cond_5
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get5(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 465
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    invoke-static {v9, v10}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-set2(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I

    .line 466
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get6(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v9

    if-ge v2, v9, :cond_9

    .line 467
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v8

    .line 468
    .local v8, "subIds":[I
    if-nez v8, :cond_7

    .line 466
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 471
    :cond_7
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    array-length v9, v8

    if-ge v4, v9, :cond_6

    .line 472
    aget v9, v8, v4

    if-lez v9, :cond_8

    .line 473
    const-string/jumbo v9, "VIA_GPS"

    .line 474
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Add phone status listner slot = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 475
    const-string/jumbo v11, ", sub = "

    .line 474
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 475
    aget v11, v8, v4

    .line 474
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 473
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v5, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    aget v10, v8, v4

    invoke-direct {v5, v9, v2, v10}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;-><init>(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;II)V

    .line 478
    .restart local v5    # "listener":Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get5(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get7(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    .line 480
    const/16 v10, 0x41

    .line 479
    invoke-virtual {v9, v5, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 471
    .end local v5    # "listener":Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 486
    .end local v4    # "j":I
    .end local v8    # "subIds":[I
    :cond_9
    const-string/jumbo v9, "VIA_GPS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Create Phone State Listener slotCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v11}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get6(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
