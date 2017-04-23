.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
.super Ljava/lang/Thread;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionUpdatorThread"
.end annotation


# static fields
.field public static final SIM_ABSENT:I = 0x0

.field public static final SIM_LOADED:I = 0x1

.field public static final SIM_LOCKED:I = 0x2

.field public static final SIM_NO_CHANGED:I = 0x4

.field public static final SIM_READY:I = 0x3


# instance fields
.field private mEventId:I

.field private mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p2, "userObj"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    .param p3, "eventId"    # I

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 663
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    .line 664
    iput p3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mEventId:I

    .line 662
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 669
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mEventId:I

    packed-switch v0, :pswitch_data_0

    .line 699
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string/jumbo v1, "SubscriptionUpdatorThread run with invalid event id."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 668
    :cond_1
    :goto_1
    return-void

    .line 671
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v1, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap4(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    goto :goto_1

    .line 675
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v1, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap5(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap7(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    goto :goto_1

    .line 682
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap9(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    .line 685
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v1, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    .line 686
    const-string/jumbo v2, "LOCKED"

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget-object v3, v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    .line 685
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 689
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap10(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    goto :goto_1

    .line 694
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string/jumbo v1, "[Common Slot]SubscriptionUpdatorThread run for SIM_NO_CHANGED."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap10(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    goto :goto_0

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
