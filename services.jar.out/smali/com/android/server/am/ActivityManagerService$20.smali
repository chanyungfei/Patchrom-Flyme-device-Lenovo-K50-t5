.class Lcom/android/server/am/ActivityManagerService$20;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;

.field final synthetic val$sb_pid:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$report"    # Ljava/lang/String;
    .param p4, "val$sb"    # Ljava/lang/StringBuilder;
    .param p5, "val$logFile"    # Ljava/io/File;
    .param p6, "val$crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p7, "val$dropboxTag"    # Ljava/lang/String;
    .param p8, "val$dbox"    # Landroid/os/DropBoxManager;
    .param p9, "val$sb_pid"    # Ljava/lang/StringBuilder;

    .prologue
    .line 13809
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$20;->val$logFile:Ljava/io/File;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$20;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb_pid:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 13812
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$report:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 13813
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$20;->val$report:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13815
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$logFile:Ljava/io/File;

    if-eqz v8, :cond_1

    .line 13817
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$20;->val$logFile:Ljava/io/File;

    .line 13818
    const-string/jumbo v10, "\n\n[[TRUNCATED]]"

    .line 13817
    const/high16 v11, 0x40000

    invoke-static {v9, v11, v10}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13823
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v8, v8, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 13824
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$20;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v9, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13827
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "logcat_for_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 13828
    .local v7, "setting":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v7, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 13829
    .local v4, "lines":I
    if-lez v4, :cond_3

    .line 13830
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13833
    const/4 v2, 0x0

    .line 13835
    .local v2, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v8, Ljava/lang/ProcessBuilder;

    const/16 v9, 0xd

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "/system/bin/logcat"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 13836
    const-string/jumbo v10, "-v"

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const-string/jumbo v10, "time"

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const-string/jumbo v10, "-b"

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const-string/jumbo v10, "events"

    const/4 v11, 0x4

    aput-object v10, v9, v11

    const-string/jumbo v10, "-b"

    const/4 v11, 0x5

    aput-object v10, v9, v11

    const-string/jumbo v10, "system"

    const/4 v11, 0x6

    aput-object v10, v9, v11

    const-string/jumbo v10, "-b"

    const/4 v11, 0x7

    aput-object v10, v9, v11

    const-string/jumbo v10, "main"

    const/16 v11, 0x8

    aput-object v10, v9, v11

    .line 13837
    const-string/jumbo v10, "-b"

    const/16 v11, 0x9

    aput-object v10, v9, v11

    const-string/jumbo v10, "crash"

    const/16 v11, 0xa

    aput-object v10, v9, v11

    .line 13838
    const-string/jumbo v10, "-t"

    const/16 v11, 0xb

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xc

    aput-object v10, v9, v11

    .line 13835
    invoke-direct {v8, v9}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 13838
    const/4 v9, 0x1

    .line 13835
    invoke-virtual {v8, v9}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 13840
    .local v5, "logcat":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13841
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13842
    :goto_2
    :try_start_4
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13845
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .local v3, "input":Ljava/io/InputStreamReader;
    const/16 v8, 0x2000

    :try_start_5
    new-array v0, v8, [C

    .line 13846
    .local v0, "buf":[C
    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    .local v6, "num":I
    if-lez v6, :cond_6

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 13847
    .end local v0    # "buf":[C
    .end local v6    # "num":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 13848
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v5    # "logcat":Ljava/lang/Process;
    :goto_4
    :try_start_6
    const-string/jumbo v8, "ActivityManager"

    const-string/jumbo v9, "Error running logcat"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 13850
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 13855
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dbox:Landroid/os/DropBoxManager;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 13856
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 13858
    :cond_4
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->exceptionLog:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v8}, Lcom/android/server/am/ActivityManagerService;->-get0(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 13859
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->exceptionLog:Lcom/mediatek/aee/ExceptionLog;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb_pid:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/mediatek/aee/ExceptionLog;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13811
    :cond_5
    return-void

    .line 13819
    .end local v4    # "lines":I
    .end local v7    # "setting":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 13820
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$20;->val$logFile:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 13850
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[C
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "lines":I
    .restart local v5    # "logcat":Ljava/lang/Process;
    .restart local v6    # "num":I
    .restart local v7    # "setting":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    .end local v0    # "buf":[C
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v5    # "logcat":Ljava/lang/Process;
    .end local v6    # "num":I
    :catch_3
    move-exception v1

    goto :goto_5

    .line 13849
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 13850
    :goto_6
    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 13849
    :cond_7
    :goto_7
    throw v8

    .line 13850
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 13849
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .local v2, "input":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 13847
    .end local v5    # "logcat":Ljava/lang/Process;
    .local v2, "input":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_4

    .line 13841
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 13840
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_1
.end method
