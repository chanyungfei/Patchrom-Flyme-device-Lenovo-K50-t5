.class Lcom/android/server/am/ActivityManagerService$24;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$changesBackup:I

.field final synthetic val$mChange:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$changesBackup"    # I
    .param p3, "val$mChange"    # I

    .prologue
    .line 19114
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$changesBackup:I

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$24;->val$mChange:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 19117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 19118
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v2, :cond_2

    .line 19120
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19126
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v2, 0x60000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19131
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$24;->val$changesBackup:I

    invoke-static {v5, v2}, Landroid/content/res/ThemeExtraConfiguration;->updateIntent(Landroid/content/Intent;I)V

    .line 19134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 19136
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 19134
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 19135
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 19136
    const/16 v17, 0x3e8

    const/16 v18, -0x1

    .line 19134
    invoke-static/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 19137
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$24;->val$mChange:I

    if-eqz v2, :cond_1

    .line 19138
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19141
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v2, :cond_0

    .line 19142
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19144
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 19146
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 19144
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 19145
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 19146
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 19147
    const/16 v18, -0x1

    .line 19144
    invoke-static/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    monitor-exit v19

    .line 19116
    return-void

    .line 19151
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v6, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v6, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19117
    :catchall_0
    move-exception v2

    monitor-exit v19

    throw v2
.end method
