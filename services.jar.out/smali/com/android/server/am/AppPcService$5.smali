.class Lcom/android/server/am/AppPcService$5;
.super Landroid/os/Handler;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;)V
    .locals 0

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/android/server/am/AppPcService$5;->this$0:Lcom/android/server/am/AppPcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1286
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1311
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1313
    :goto_1
    return-void

    .line 1288
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/AppPcService$5;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handleStopService(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$1300(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_1

    .line 1291
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/AppPcService$5;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handleSetApplicationEnabledSetting(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$1400(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_1

    .line 1294
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/AppPcService$5;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handleSetNotificationsEnabledForPackage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$1500(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_1

    .line 1297
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/AppPcService$5;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handleStartActivityForResult(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$1600(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_1

    .line 1300
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/AppPcService$5;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handleSetUidPolicy(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$1700(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_1

    .line 1303
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/AppPcService$5;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handleSendOrderedBroadcastAsUser(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$1800(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_1

    .line 1309
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/AppPcService$5;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handlePmInstallApk(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$1900(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_0

    .line 1286
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
