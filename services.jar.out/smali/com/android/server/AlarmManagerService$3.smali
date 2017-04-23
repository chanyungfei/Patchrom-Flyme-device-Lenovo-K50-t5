.class Lcom/android/server/AlarmManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 975
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, -0x1

    .line 978
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 979
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 978
    if-eqz v1, :cond_2

    .line 981
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->-wrap7(Lcom/android/server/AlarmManagerService;)V

    .line 982
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService;->-set1(Lcom/android/server/AlarmManagerService;Z)Z

    .line 983
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNativeData:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 985
    const-string/jumbo v1, "AlarmManager"

    const-string/jumbo v2, "receive ACTION_SHUTDOWN_IPO , so close the fd "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-static {v1, v2, v3}, Lcom/android/server/AlarmManagerService;->-wrap5(Lcom/android/server/AlarmManagerService;J)V

    .line 987
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v1, Lcom/android/server/AlarmManagerService;->mNativeData:J

    .line 977
    :cond_1
    :goto_0
    return-void

    .line 992
    :cond_2
    const-string/jumbo v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 993
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService;->-set1(Lcom/android/server/AlarmManagerService;Z)Z

    .line 994
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap4(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNativeData:J

    .line 995
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/server/AlarmManagerService;->-set3(Lcom/android/server/AlarmManagerService;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/AlarmManagerService;->-set4(Lcom/android/server/AlarmManagerService;J)J

    .line 998
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 999
    .local v0, "timeChangeIntent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1000
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1002
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1003
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1004
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->-get1(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1005
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->-get1(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_0

    .line 1004
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
