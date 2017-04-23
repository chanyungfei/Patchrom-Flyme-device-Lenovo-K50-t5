.class Lcom/android/server/notification/NotificationManagerService$LightHandler;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 3746
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$LightHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$LightHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const v6, -0xff0100

    const/16 v5, 0x820

    const/16 v4, 0x410

    const/4 v3, 0x1

    .line 3750
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3751
    .local v0, "currentMSG":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get34(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3752
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->-set21(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 3759
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get34(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get33(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 3760
    return-void

    .line 3753
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get33(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3754
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->-set20(Lcom/android/server/notification/NotificationManagerService;I)I

    goto :goto_0

    .line 3756
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get33(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->-set21(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 3757
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->-set20(Lcom/android/server/notification/NotificationManagerService;I)I

    goto :goto_0

    .line 3762
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3749
    :goto_1
    return-void

    .line 3764
    :pswitch_0
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3765
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3769
    :pswitch_1
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3770
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3774
    :pswitch_2
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3775
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3779
    :pswitch_3
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3780
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3784
    :pswitch_4
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3785
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3789
    :pswitch_5
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3790
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3794
    :pswitch_6
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3795
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3799
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get0(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isCharing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3801
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3807
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get0(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isCharingFULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3809
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v7, v7}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_1

    .line 3813
    :pswitch_9
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3814
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 3816
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get0(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Led-Light:   Not Set Led !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3762
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
