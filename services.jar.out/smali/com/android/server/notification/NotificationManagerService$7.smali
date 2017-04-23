.class Lcom/android/server/notification/NotificationManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 3826
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3829
    const/4 v3, 0x0

    .line 3830
    .local v3, "isCharging":Z
    const/4 v2, 0x0

    .line 3831
    .local v2, "isBatteryFullInCharging":Z
    const/4 v4, 0x0

    .line 3832
    .local v4, "isInMidnight":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3834
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3835
    const-string/jumbo v6, "level"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3836
    .local v1, "batteryLevel":I
    const-string/jumbo v6, "status"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3838
    .local v5, "pluggedInStates":I
    if-lt v1, v9, :cond_0

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get14(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3843
    :cond_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v7}, Lcom/android/server/notification/NotificationManagerService;->-set7(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3844
    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 3845
    const/4 v3, 0x1

    .line 3850
    :goto_0
    if-lt v1, v9, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 3851
    const/4 v3, 0x0

    .line 3852
    const/4 v2, 0x1

    .line 3855
    :cond_1
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get7(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3856
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-wrap3(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v4

    .line 3860
    .end local v4    # "isInMidnight":Z
    :goto_1
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    if-eq v6, v4, :cond_2

    .line 3861
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v4}, Lcom/android/server/notification/NotificationManagerService;->-set8(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3862
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get0(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatelightSettings cause mIsInMidnight changed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-get15(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-wrap28(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3865
    :cond_2
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get13(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    if-ne v6, v3, :cond_3

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get12(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    if-eq v6, v2, :cond_4

    .line 3866
    :cond_3
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v3}, Lcom/android/server/notification/NotificationManagerService;->-set6(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3867
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v2}, Lcom/android/server/notification/NotificationManagerService;->-set5(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3868
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-get0(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "updatelightSettings 3197"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-wrap28(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3828
    .end local v1    # "batteryLevel":I
    .end local v5    # "pluggedInStates":I
    :cond_4
    return-void

    .line 3839
    .restart local v1    # "batteryLevel":I
    .restart local v4    # "isInMidnight":Z
    .restart local v5    # "pluggedInStates":I
    :cond_5
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v8}, Lcom/android/server/notification/NotificationManagerService;->-set7(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3841
    const/4 v3, 0x0

    .line 3838
    goto :goto_0

    .line 3847
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3858
    :cond_7
    const/4 v4, 0x0

    goto :goto_1
.end method
