.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SvlteRatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SstSubscriptionsChangedListener"
.end annotation


# instance fields
.field public final mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;


# direct methods
.method protected constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 231
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 229
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 5

    .prologue
    .line 235
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get2(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSubId()I

    move-result v0

    .line 236
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SubscriptionListener.onSubscriptionInfoChanged start,mPreviousSubId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    const-string/jumbo v3, " ,subId="

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    const-string/jumbo v3, ", needReSwitch = "

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v3

    .line 239
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get8(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v4

    .line 238
    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getNeedReSwitch(I)Z

    move-result v3

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-wrap11(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 241
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get8(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getNeedReSwitch(I)Z

    move-result v1

    .line 241
    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v2

    .line 244
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->-get8(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    .line 243
    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getNetWorkTypeBySlotId(I)I

    move-result v2

    .line 244
    const/4 v3, 0x0

    .line 243
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechnology(ILandroid/os/Message;)Z

    .line 234
    :cond_0
    return-void
.end method
