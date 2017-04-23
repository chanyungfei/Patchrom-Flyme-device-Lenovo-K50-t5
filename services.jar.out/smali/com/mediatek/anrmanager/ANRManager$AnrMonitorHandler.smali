.class public Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;
.super Landroid/os/Handler;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrmanager/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnrMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/anrmanager/ANRManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/anrmanager/ANRManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    .line 179
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 180
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    :pswitch_0
    return-void

    .line 189
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/anrmanager/ANRManager$IAnrBroadcastQueue;

    .line 190
    if-nez v0, :cond_0

    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v1, "monitor Broadcast ANR process failed"

    .line 195
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_0
    invoke-interface {v0}, Lcom/mediatek/anrmanager/ANRManager$IAnrBroadcastQueue;->getOrderedBroadcastsPid()I

    move-result v0

    const-string/jumbo v1, "ANRManager"

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "monitor Broadcast ANR process ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :pswitch_2
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getProcessRecordPid(Ljava/lang/Object;)I

    move-result v0

    const-string/jumbo v1, "ANRManager"

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "monitor Service ANR process ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;

    const-string/jumbo v1, "ANRManager"

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "START_ANR_DUMP_MSG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    iget-object v1, v1, Lcom/mediatek/anrmanager/ANRManager;->mAnrDumpMgr:Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;

    invoke-virtual {v1, v0}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->dumpAnrDebugInfo(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V

    goto/16 :goto_0

    .line 217
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v1, "ANRManager"

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Monitor KeyDispatching ANR process ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 225
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    invoke-virtual {v0}, Lcom/mediatek/anrmanager/ANRManager;->updateProcessStats()V

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v0, "dalvik.vm.stack-trace-file"

    .line 229
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-nez v0, :cond_2

    .line 231
    :cond_1
    return-void

    .line 230
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "/data/anr/traces_"

    .line 233
    invoke-static {v2, v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    const-string/jumbo v0, "/data/anr/native1.txt"

    const-string/jumbo v1, "/data/anr/native1_"

    .line 234
    invoke-static {v2, v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    const-string/jumbo v0, "/data/anr/native2.txt"

    const-string/jumbo v1, "/data/anr/native2_"

    .line 235
    invoke-static {v2, v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    goto/16 :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
