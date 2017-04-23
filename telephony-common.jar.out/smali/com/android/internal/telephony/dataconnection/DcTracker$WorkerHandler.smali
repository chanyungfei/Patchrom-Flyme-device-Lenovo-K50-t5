.class Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;
.super Landroid/os/Handler;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 4317
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4320
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4319
    :goto_0
    return-void

    .line 4322
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataRoamingEnabled:Z

    .line 4323
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WorkerHandler received EVENT_DATA_ROAMING_CHANGED, data roaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4324
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataRoamingEnabled:Z

    .line 4323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4324
    const-string/jumbo v2, ", roaming="

    .line 4323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4325
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .line 4323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4326
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4327
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v1, 0x4200b

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4329
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v1, 0x4200c

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4334
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v1, "WorkerHandler received EVENT_INIT_EMERGENCY_APN_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4335
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 4336
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_0

    .line 4320
    nop

    :pswitch_data_0
    .packed-switch 0x421f5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
