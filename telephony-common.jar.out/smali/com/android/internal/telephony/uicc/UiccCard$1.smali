.class Lcom/android/internal/telephony/uicc/UiccCard$1;
.super Landroid/os/Handler;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 556
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap2(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 559
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 639
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown Event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap3(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 561
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap6(Lcom/android/internal/telephony/uicc/UiccCard;Z)V

    goto :goto_0

    .line 564
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap6(Lcom/android/internal/telephony/uicc/UiccCard;Z)V

    goto :goto_0

    .line 575
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 576
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 577
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap4(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 578
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in SIM access with exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap2(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 580
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 581
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 584
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap5(Lcom/android/internal/telephony/uicc/UiccCard;)V

    goto :goto_0

    .line 588
    :sswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Handler EVENT_CDMA_CARD_IMSI_DONE mIsSvlte="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->-get6(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap2(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 589
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get6(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get10(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 590
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get5(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 591
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get10(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-get5(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 592
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get1(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get10(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-get1(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 594
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 595
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-get10(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->-get1(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 594
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-set2(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccRecords;)Lcom/android/internal/telephony/uicc/IccRecords;

    .line 596
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 597
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-get10(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->-get5(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 596
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-set4(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccRecords;)Lcom/android/internal/telephony/uicc/IccRecords;

    .line 598
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get11(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get4(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 599
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get11(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get11(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-get2(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 601
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get4(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 602
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get4(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-get0(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 603
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-get11(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-set1(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 604
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-get4(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-set0(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap0(Lcom/android/internal/telephony/uicc/UiccCard;)V

    goto/16 :goto_0

    .line 613
    :sswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string/jumbo v3, "handleMessgage (EVENT_CDMA_CARD_TYPE)"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap2(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 615
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 616
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 617
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 618
    .local v1, "resultType":[I
    if-eqz v1, :cond_0

    .line 619
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    aget v3, v1, v5

    invoke-static {v3}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->getCardTypeFromInt(I)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-set3(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 620
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get9(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->isValidCardType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 621
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-get8(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->-get9(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->getValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap1(Lcom/android/internal/telephony/uicc/UiccCard;II)V

    goto/16 :goto_0

    .line 623
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid cardType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap2(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 630
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "resultType":[I
    :sswitch_6
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string/jumbo v3, "handleMessgage (EVENT_C2K_WP_CARD_TYPE_READY)"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap2(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 632
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->transformCardTypeFromString(Ljava/lang/String;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-set3(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 633
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->-get9(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->isValidCardType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-get8(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->-get9(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->getValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap1(Lcom/android/internal/telephony/uicc/UiccCard;II)V

    goto/16 :goto_0

    .line 559
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
    .end sparse-switch
.end method
