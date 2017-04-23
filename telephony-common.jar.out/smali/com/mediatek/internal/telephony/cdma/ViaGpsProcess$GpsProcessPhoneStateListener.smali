.class Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ViaGpsProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GpsProcessPhoneStateListener"
.end annotation


# instance fields
.field private mSlotId:I

.field private mSubId:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
    .param p2, "slotId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 498
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .line 499
    invoke-direct {p0, p3}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 500
    iput p2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->mSlotId:I

    .line 501
    iput p3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->mSubId:I

    .line 498
    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    const/4 v3, 0x0

    .line 505
    const-string/jumbo v0, "VIA_GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 506
    iget v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->mSlotId:I

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 506
    const-string/jumbo v2, ", subId = "

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 507
    iget v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->mSubId:I

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 507
    const-string/jumbo v2, ", state = "

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 508
    const-string/jumbo v2, ", type="

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 509
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 510
    const-string/jumbo v2, ", notifiedType = "

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 511
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get2(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 512
    const-string/jumbo v2, ", this = "

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 512
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->sendEmptyMessage(I)Z

    .line 514
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get2(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 516
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get0(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->setMobileNetworkType(I)V

    .line 519
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v0, p2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-set0(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I

    .line 504
    :goto_0
    return-void

    .line 520
    :cond_1
    if-eqz p1, :cond_2

    .line 521
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get2(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v0

    if-nez v0, :cond_3

    .line 523
    return-void

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get0(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->setMobileNetworkType(I)V

    .line 526
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-set0(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I

    goto :goto_0

    .line 528
    :cond_4
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 534
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get4(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 535
    .local v0, "cdmaPhoneState":I
    const-string/jumbo v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceStateChanged slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 536
    iget v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->mSlotId:I

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 536
    const-string/jumbo v3, ", subId = "

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 537
    iget v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->mSubId:I

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 537
    const-string/jumbo v3, "state = "

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 538
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 539
    const-string/jumbo v3, ", cdmaphone state="

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 540
    const-string/jumbo v3, ", notifyState="

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 540
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get3(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v3

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 541
    const-string/jumbo v3, ", this = "

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 541
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get3(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 543
    return-void

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-get0(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->setCDMAPhoneStatus(I)V

    .line 546
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->-set1(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I

    .line 532
    return-void
.end method
