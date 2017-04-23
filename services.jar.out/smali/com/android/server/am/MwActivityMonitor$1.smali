.class Lcom/android/server/am/MwActivityMonitor$1;
.super Landroid/os/Handler;
.source "MwActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MwActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MwActivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/am/MwActivityMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MwActivityMonitor;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 88
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    iget-object v2, v2, Lcom/android/server/am/MwActivityMonitor;->mContext:Landroid/content/Context;

    .line 92
    const-string/jumbo v3, "Cannot use Gallery,Camera or Video Player at the same time"

    .line 90
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 96
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 101
    .end local v1    # "toast":Landroid/widget/Toast;
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    iget-object v2, v2, Lcom/android/server/am/MwActivityMonitor;->mContext:Landroid/content/Context;

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Maximum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    invoke-static {v4}, Lcom/android/server/am/MwActivityMonitor;->-get0(Lcom/android/server/am/MwActivityMonitor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 103
    const-string/jumbo v4, " floating windows!"

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 108
    .restart local v1    # "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    .end local v1    # "toast":Landroid/widget/Toast;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/MwActivityMonitor$MessageObj;

    .line 113
    .local v0, "obj":Lcom/android/server/am/MwActivityMonitor$MessageObj;
    iget-object v2, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    iget-object v3, v2, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MwActivityMonitor$1;->this$0:Lcom/android/server/am/MwActivityMonitor;

    iget-object v2, v2, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->-get0(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->-get0(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->-get1(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-ne v2, v4, :cond_0

    .line 116
    const-string/jumbo v2, "MwActivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACT-reset the process max/restore status for app : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 117
    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->-get0(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->-get0(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->inMaxOrRestore:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    goto/16 :goto_0

    .line 120
    :cond_0
    :try_start_1
    const-string/jumbo v2, "MwActivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "obj.mAr.app != obj.mPr, obj.mAr.app:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->-get0(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 121
    const-string/jumbo v5, ", obj.mPr:"

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 121
    invoke-static {v0}, Lcom/android/server/am/MwActivityMonitor$MessageObj;->-get1(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 113
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
