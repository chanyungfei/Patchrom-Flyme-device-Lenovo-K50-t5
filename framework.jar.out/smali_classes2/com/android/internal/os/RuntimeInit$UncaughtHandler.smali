.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$UncaughtHandler;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/16 v8, 0xa

    .line 92
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get1()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    const-string/jumbo v5, "persist.mtk.aee.mode"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "aeeMode":Ljava/lang/String;
    const-string/jumbo v5, "4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    const-string/jumbo v5, "RuntimeInit"

    const-string/jumbo v6, "RuntimeInit: enable FTRACE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v5, "aee -d ftraceon"

    invoke-static {v5}, Lcom/android/internal/os/RuntimeInit;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 126
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 92
    return-void

    .line 93
    .end local v0    # "aeeMode":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    :try_start_1
    invoke-static {v5}, Lcom/android/internal/os/RuntimeInit;->-set0(Z)Z

    .line 95
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get0()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_3

    .line 96
    const-string/jumbo v5, "AndroidRuntime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 110
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get0()Landroid/os/IBinder;

    move-result-object v6

    new-instance v7, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v7, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 109
    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    const-string/jumbo v5, "persist.mtk.aee.mode"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "aeeMode":Ljava/lang/String;
    const-string/jumbo v5, "4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    const-string/jumbo v5, "RuntimeInit"

    const-string/jumbo v6, "RuntimeInit: enable FTRACE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v5, "aee -d ftraceon"

    invoke-static {v5}, Lcom/android/internal/os/RuntimeInit;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 126
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 89
    :goto_1
    return-void

    .line 98
    .end local v0    # "aeeMode":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v1, "message":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "FATAL EXCEPTION: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "processName":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 102
    const-string/jumbo v5, "Process: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_4
    const-string/jumbo v5, "PID: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v5, "AndroidRuntime"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 111
    .end local v1    # "message":Ljava/lang/StringBuilder;
    .end local v2    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 113
    .local v3, "t2":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v5, "AndroidRuntime"

    const-string/jumbo v6, "Error reporting crash"

    invoke-static {v5, v6, v3}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    :goto_2
    const-string/jumbo v5, "persist.mtk.aee.mode"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "aeeMode":Ljava/lang/String;
    const-string/jumbo v5, "4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 120
    const-string/jumbo v5, "RuntimeInit"

    const-string/jumbo v6, "RuntimeInit: enable FTRACE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v5, "aee -d ftraceon"

    invoke-static {v5}, Lcom/android/internal/os/RuntimeInit;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    :cond_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 126
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 117
    .end local v0    # "aeeMode":Ljava/lang/String;
    .end local v3    # "t2":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 118
    const-string/jumbo v6, "persist.mtk.aee.mode"

    const-string/jumbo v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "aeeMode":Ljava/lang/String;
    const-string/jumbo v6, "4"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 120
    const-string/jumbo v6, "RuntimeInit"

    const-string/jumbo v7, "RuntimeInit: enable FTRACE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v6, "aee -d ftraceon"

    invoke-static {v6}, Lcom/android/internal/os/RuntimeInit;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    :cond_6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 126
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 117
    throw v5

    .line 114
    .end local v0    # "aeeMode":Ljava/lang/String;
    .restart local v3    # "t2":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .local v4, "t3":Ljava/lang/Throwable;
    goto :goto_2
.end method
