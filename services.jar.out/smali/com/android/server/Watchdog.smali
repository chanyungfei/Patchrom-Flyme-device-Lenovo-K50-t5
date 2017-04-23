.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$HandlerChecker;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$Monitor;
    }
.end annotation


# static fields
.field static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final TIME_SF_WAIT:I = 0x4e20

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 75
    const-string/jumbo v1, "/system/bin/mediaserver"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "/system/bin/sdcard"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "/system/bin/surfaceflinger"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 74
    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const-wide/32 v4, 0xea60

    .line 245
    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 253
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 254
    const-string/jumbo v3, "foreground thread"

    move-object v1, p0

    .line 253
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 255
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 259
    const-string/jumbo v3, "main thread"

    move-object v1, p0

    .line 258
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 262
    const-string/jumbo v3, "ui thread"

    move-object v1, p0

    .line 261
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 265
    const-string/jumbo v3, "i/o thread"

    move-object v1, p0

    .line 264
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 267
    const-string/jumbo v3, "display thread"

    move-object v1, p0

    .line 266
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    const-string/jumbo v0, "ro.have_aee_feature"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v0}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    .line 244
    :cond_0
    return-void
.end method

.method public static GetSFReboot()I
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "service.sf.reboot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static SetSFReboot()V
    .locals 3

    .prologue
    .line 105
    const-string/jumbo v1, "service.sf.reboot"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, "OldTime":I
    add-int/lit8 v0, v0, 0x1

    .line 107
    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    const/16 v0, 0x9

    .line 108
    :cond_0
    const-string/jumbo v1, "service.sf.reboot"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 359
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 361
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doSysRq(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 609
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string/jumbo v2, "/proc/sysrq-trigger"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 610
    .local v1, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(I)V

    .line 611
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .end local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Watchdog"

    const-string/jumbo v3, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private dumpAllBackTraces(Z)Ljava/io/File;
    .locals 5
    .param p1, "clearTraces"    # Z

    .prologue
    const/4 v4, 0x0

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRunningProcessPids(Ljava/util/ArrayList;)V

    .line 645
    sget-object v2, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v0, v4, v4, v2}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 647
    .local v1, "stack":Ljava/io/File;
    return-object v1
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 618
    const-string/jumbo v1, "dalvik.vm.stack-trace-file"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "tracesPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 620
    :cond_0
    return-object v2

    .line 623
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    .line 624
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 4

    .prologue
    .line 338
    const/4 v2, 0x0

    .line 339
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    .line 341
    .local v0, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    return v2
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 349
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 350
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 241
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public GetSFStatus()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    invoke-virtual {v0, v2, v3, v2, v3}, Lcom/mediatek/aee/ExceptionLog;->SFMatterJava(JJ)J

    move-result-wide v0

    return-wide v0

    .line 96
    :cond_0
    return-wide v2
.end method

.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .prologue
    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 307
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 302
    return-void
.end method

.method public addThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "thread"    # Landroid/os/Handler;

    .prologue
    .line 312
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 311
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .locals 8
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .prologue
    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 315
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 275
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 277
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    .line 278
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    .line 277
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 273
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    const-string/jumbo v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 282
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string/jumbo v2, "Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Rebooting system because: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager;

    .line 332
    .local v1, "pms":Landroid/os/IPowerManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v2, p1, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public run()V
    .locals 35

    .prologue
    .line 384
    const/16 v34, 0x0

    .line 385
    .local v34, "waitedHalf":Z
    const/16 v25, 0x0

    .line 386
    .local v25, "mNeedDump":Z
    const/16 v26, 0x0

    .line 391
    .local v26, "mSFHang":Z
    :goto_0
    const/16 v26, 0x0

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v4, :cond_0

    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Lcom/mediatek/aee/ExceptionLog;->WDTMatterJava(J)V

    .line 395
    :cond_0
    if-eqz v25, :cond_2

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v6, v7}, Lcom/mediatek/aee/ExceptionLog;->WDTMatterJava(J)V

    .line 399
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/Watchdog;->dumpAllBackTraces(Z)Ljava/io/File;

    .line 400
    const/16 v25, 0x0

    .line 404
    :cond_2
    const/16 v19, 0x0

    .line 406
    .local v19, "debuggerWasConnected":I
    const-string/jumbo v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SWT Watchdog before synchronized:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-enter p0

    .line 410
    :try_start_0
    const-string/jumbo v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SWT Watchdog after synchronized:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-wide/16 v32, 0x7530

    .line 416
    .local v32, "timeout":J
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_3

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/Watchdog$HandlerChecker;

    .line 418
    .local v23, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    .line 416
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 430
    .end local v23    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    .line 431
    .local v30, "start":J
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-lez v4, :cond_6

    .line 432
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 433
    const/16 v19, 0x2

    .line 437
    :cond_4
    :try_start_1
    const-string/jumbo v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SWT Watchdog before wait timeout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string/jumbo v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SWT Watchdog before wait current time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string/jumbo v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SWT Watchdog before wait start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "SWT Watchdog before wait CHECK_INTERVAL:30000"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->wait(J)V

    .line 444
    const-string/jumbo v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SWT Watchdog after wait current time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :goto_3
    :try_start_2
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 450
    const/16 v19, 0x2

    .line 452
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v30

    const-wide/16 v6, 0x7530

    sub-long v32, v6, v4

    goto/16 :goto_2

    .line 446
    :catch_0
    move-exception v21

    .line 447
    .local v21, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v4, "Watchdog"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 408
    .end local v21    # "e":Ljava/lang/InterruptedException;
    .end local v24    # "i":I
    .end local v30    # "start":J
    .end local v32    # "timeout":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 456
    .restart local v24    # "i":I
    .restart local v30    # "start":J
    .restart local v32    # "timeout":J
    :cond_6
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->GetSFStatus()J

    move-result-wide v14

    .line 457
    .local v14, "SFHangTime":J
    const-string/jumbo v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "**Get SF Time **"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-wide/32 v4, 0x9c40

    cmp-long v4, v14, v4

    if-lez v4, :cond_a

    .line 459
    const-string/jumbo v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "**SF hang Time **"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/16 v26, 0x1

    .line 485
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v17

    .line 486
    .local v17, "blockedCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v10

    .line 487
    .local v10, "subject":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    move/from16 v16, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v16, "allowRestart":Z
    monitor-exit p0

    .line 494
    const-string/jumbo v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "**SWT happen **"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-eqz v26, :cond_8

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 496
    const-string/jumbo v10, "surfaceflinger  hang."

    .line 498
    :cond_8
    const/16 v4, 0xaf2

    invoke-static {v4, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->exceptionHWT:Lcom/mediatek/aee/ExceptionLog;

    const-wide/16 v6, 0x2d0

    invoke-virtual {v4, v6, v7}, Lcom/mediatek/aee/ExceptionLog;->WDTMatterJava(J)V

    .line 501
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/Watchdog;->dumpAllBackTraces(Z)Ljava/io/File;

    .line 506
    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    .line 514
    const/16 v4, 0x77

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 515
    const/16 v4, 0x6c

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 535
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "** save all info before killnig system server **"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "watchdog"

    const-string/jumbo v7, "system_server"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 539
    monitor-enter p0

    .line 540
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    move-object/from16 v18, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .local v18, "controller":Landroid/app/IActivityController;
    monitor-exit p0

    .line 542
    if-nez v26, :cond_e

    if-eqz v18, :cond_e

    .line 543
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Reporting stuck state to activity controller"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :try_start_5
    const-string/jumbo v4, "Service dumps disabled due to hung system process."

    invoke-static {v4}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 546
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Binder.setDumpDisabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v27

    .line 549
    .local v27, "res":I
    if-ltz v27, :cond_d

    .line 550
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Activity controller requested to coninue to wait"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 551
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 464
    .end local v10    # "subject":Ljava/lang/String;
    .end local v16    # "allowRestart":Z
    .end local v17    # "blockedCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v18    # "controller":Landroid/app/IActivityController;
    .end local v27    # "res":I
    :cond_a
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v29

    .line 465
    .local v29, "waitState":I
    if-nez v29, :cond_c

    .line 467
    const/16 v34, 0x0

    :cond_b
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    .line 470
    :cond_c
    const/4 v4, 0x1

    move/from16 v0, v29

    if-eq v0, v4, :cond_b

    .line 474
    const/4 v4, 0x2

    move/from16 v0, v29

    if-ne v0, v4, :cond_7

    .line 475
    if-nez v34, :cond_b

    .line 478
    const/16 v25, 0x1

    .line 479
    const/16 v34, 0x1

    goto :goto_4

    .line 539
    .end local v29    # "waitState":I
    .restart local v10    # "subject":Ljava/lang/String;
    .restart local v16    # "allowRestart":Z
    .restart local v17    # "blockedCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 554
    .restart local v18    # "controller":Landroid/app/IActivityController;
    .restart local v27    # "res":I
    :cond_d
    :try_start_7
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Activity controller requested to reboot"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 560
    .end local v27    # "res":I
    :cond_e
    :goto_5
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 561
    const/16 v19, 0x2

    .line 563
    :cond_f
    const/4 v4, 0x2

    move/from16 v0, v19

    if-lt v0, v4, :cond_10

    .line 564
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_6
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 565
    :cond_10
    if-lez v19, :cond_11

    .line 566
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 567
    :cond_11
    if-nez v16, :cond_12

    .line 568
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 570
    :cond_12
    const-string/jumbo v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/16 v24, 0x0

    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_14

    .line 572
    const-string/jumbo v5, "Watchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v4}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " stack trace:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v4}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v28

    .line 575
    .local v28, "stackTrace":[Ljava/lang/StackTraceElement;
    const/4 v4, 0x0

    move-object/from16 v0, v28

    array-length v5, v0

    :goto_8
    if-ge v4, v5, :cond_13

    aget-object v22, v28, v4

    .line 576
    .local v22, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v6, "Watchdog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 571
    .end local v22    # "element":Ljava/lang/StackTraceElement;
    :cond_13
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 579
    .end local v28    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_14
    const-wide/16 v4, 0x61a8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 582
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "*** GOODBYE!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-eqz v26, :cond_15

    .line 586
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "SF hang!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-static {}, Lcom/android/server/Watchdog;->GetSFReboot()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_16

    .line 589
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "SF hang reboot time larger than 3 time, reboot device!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string/jumbo v4, "Maybe SF driver hang,reboot device."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    .line 599
    :cond_15
    :goto_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 600
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_6

    .line 594
    :cond_16
    invoke-static {}, Lcom/android/server/Watchdog;->SetSFReboot()V

    goto :goto_9

    .line 555
    :catch_1
    move-exception v20

    .local v20, "e":Landroid/os/RemoteException;
    goto/16 :goto_5
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 1
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 291
    monitor-enter p0

    .line 292
    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 290
    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .locals 1
    .param p1, "allowRestart"    # Z

    .prologue
    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 296
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
