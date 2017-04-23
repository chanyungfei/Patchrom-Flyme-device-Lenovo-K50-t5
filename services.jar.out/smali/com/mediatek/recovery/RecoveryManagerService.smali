.class public Lcom/mediatek/recovery/RecoveryManagerService;
.super Lcom/mediatek/recovery/IRecoveryManagerService$Stub;
.source "RecoveryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;
    }
.end annotation


# static fields
.field private static final BOOT_TIMEOUT_MS:I = 0x1b7740

.field private static final MSG_BOOT_MONITOR_TIMEOUT:I = 0x1

.field private static final MSG_REBOOT_NORMAL:I = 0x2

.field private static final REBOOT_NORMAL_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "RecoveryManagerService"

.field private static final normalMode:I = 0x0

.field private static final recoveryMode:I = 0x1


# instance fields
.field private isSystemReady:Z

.field private logger:Lcom/mediatek/recovery/EventLogger;

.field private mContext:Landroid/content/Context;

.field private mExceptionHappen:Z

.field private final mHandler:Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;

.field private mParser:Lcom/mediatek/recovery/RecoveryParser;

.field private mServant:Lcom/mediatek/recovery/BackupServant;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/mediatek/recovery/IRecoveryManagerService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mContext:Landroid/content/Context;

    .line 72
    iput-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->isSystemReady:Z

    .line 81
    iput-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mExceptionHappen:Z

    .line 109
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    .line 110
    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 111
    iput-object p1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Lcom/mediatek/recovery/EventLogger;

    const-string/jumbo v1, "RecoveryManagerService"

    invoke-direct {v0, v1}, Lcom/mediatek/recovery/EventLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->logger:Lcom/mediatek/recovery/EventLogger;

    .line 113
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RecoveryManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance v1, Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;-><init>(Lcom/mediatek/recovery/RecoveryManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mHandler:Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;

    .line 116
    new-instance v0, Lcom/mediatek/recovery/RecoveryParser;

    invoke-direct {v0}, Lcom/mediatek/recovery/RecoveryParser;-><init>()V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mParser:Lcom/mediatek/recovery/RecoveryParser;

    .line 117
    new-instance v0, Lcom/mediatek/recovery/BackupServant;

    invoke-direct {v0}, Lcom/mediatek/recovery/BackupServant;-><init>()V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mServant:Lcom/mediatek/recovery/BackupServant;

    .line 119
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mParser:Lcom/mediatek/recovery/RecoveryParser;

    invoke-virtual {v0}, Lcom/mediatek/recovery/RecoveryParser;->read()V

    .line 120
    return-void
.end method

.method private NormalReboot()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Repair"

    .line 298
    invoke-direct {p0, v0}, Lcom/mediatek/recovery/RecoveryManagerService;->NormalReboot(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method private NormalReboot(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "RecoveryManagerService"

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Reboot for reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "power"

    .line 303
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 307
    if-nez v2, :cond_0

    :try_start_0
    const-string/jumbo v1, "RecoveryManagerService"

    const-string/jumbo v2, "Power Manager Service is dead !!"

    .line 311
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    if-eqz v0, :cond_1

    .line 325
    :goto_1
    return-void

    .line 308
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, p1, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    const-string/jumbo v1, "RecoveryManagerService"

    const-string/jumbo v2, "Exception happened when performing pm reboot "

    .line 315
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "RecoveryManagerService"

    const-string/jumbo v1, "Fall back to force reboot"

    .line 318
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :try_start_1
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "/system/bin/reboot"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 323
    :catch_1
    move-exception v0

    const-string/jumbo v1, "RecoveryManagerService"

    const-string/jumbo v2, "Failed to reboot device"

    .line 322
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mediatek/recovery/RecoveryManagerService;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/recovery/RecoveryManagerService;->NormalReboot()V

    return-void
.end method

.method private checkDbFilesIntegrity(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method private checkFilesIntegrity(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, ".xml"

    .line 407
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".db"

    .line 409
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    return v1

    .line 408
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/recovery/RecoveryManagerService;->checkXmlFilesIntegrity(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 410
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/recovery/RecoveryManagerService;->checkDbFilesIntegrity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkXmlFilesIntegrity(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method private static getSettingsProblemFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 262
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/recovery/BackupServant;->getBackupDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "RecoveryEvents.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    return-object v0
.end method

.method private final getTargetClass(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "RecoveryManagerService"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target class : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 98
    return-object v4

    :catch_1
    move-exception v0

    .line 100
    return-object v4

    :catch_2
    move-exception v0

    .line 102
    return-object v4
.end method

.method private handleException(Ljava/lang/RuntimeException;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 361
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mParser:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v3, -0x1

    .line 363
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 403
    :goto_1
    return v0

    .line 364
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mParser:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v1, v1, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/Module;

    .line 366
    iget-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    if-eqz v2, :cond_3

    .line 377
    :cond_1
    iget-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    invoke-virtual {v2, p1}, Lcom/mediatek/recovery/AbstractExceptionParser;->parseException(Ljava/lang/RuntimeException;)Ljava/util/ArrayList;

    move-result-object v2

    .line 379
    iget-object v1, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    invoke-virtual {v1}, Lcom/mediatek/recovery/AbstractExceptionParser;->getLastError()I

    move-result v1

    if-nez v1, :cond_4

    .line 384
    if-nez v2, :cond_5

    :cond_2
    const-string/jumbo v1, "RecoveryManagerService"

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Recovery module: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " returns unavailable pathes, try other modules!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :cond_3
    iget-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParserClass:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/recovery/RecoveryManagerService;->getTargetClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/recovery/AbstractExceptionParser;

    iput-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    .line 368
    iget-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    if-nez v2, :cond_1

    const-string/jumbo v2, "RecoveryManagerService"

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to get exception parser class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v1, Lcom/mediatek/recovery/Module;->exceptionParserClass:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " from recovery module: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Skip it!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v1, "RecoveryManagerService"

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Recovery module: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " mismatch"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 384
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 390
    iget-object v3, p0, Lcom/mediatek/recovery/RecoveryManagerService;->logger:Lcom/mediatek/recovery/EventLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recovery module: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "match the exception for file: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " start restoring"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mediatek/recovery/EventLogger;->logBootRecovery(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/recovery/RecoveryManagerService;->restore(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    .line 396
    if-nez v0, :cond_6

    .line 399
    invoke-direct {p0}, Lcom/mediatek/recovery/RecoveryManagerService;->NormalReboot()V

    goto/16 :goto_1

    .line 397
    :cond_6
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->logger:Lcom/mediatek/recovery/EventLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recovery failed with error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/recovery/EventLogger;->logBootRecovery(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private selectBootUpMode(I)V
    .locals 3

    .prologue
    const-string/jumbo v0, "RecoveryManagerService"

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectBootUpMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    packed-switch p1, :pswitch_data_0

    .line 437
    :goto_0
    :pswitch_0
    return-void

    .line 427
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/recovery/RecoveryManagerService;->NormalReboot()V

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method backupAll()V
    .locals 5

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mParser:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 213
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    return-void

    .line 214
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/recovery/Module;

    .line 215
    iget-object v1, v0, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 217
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 219
    iget v4, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 220
    iget-object v4, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mServant:Lcom/mediatek/recovery/BackupServant;

    invoke-virtual {v4, v0, v1}, Lcom/mediatek/recovery/BackupServant;->backup(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I

    goto :goto_0
.end method

.method public backupSingleFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x4

    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mParser:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/recovery/Module;

    .line 243
    if-nez v0, :cond_0

    move-object v4, v1

    move v1, v2

    move-object v2, v4

    .line 251
    :goto_0
    if-eqz v1, :cond_2

    move v0, v1

    .line 254
    :goto_1
    return v0

    .line 244
    :cond_0
    iget-object v1, v0, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 245
    if-eqz v1, :cond_1

    move-object v2, v1

    move v1, v3

    goto :goto_0

    :cond_1
    move-object v4, v1

    move v1, v2

    move-object v2, v4

    .line 246
    goto :goto_0

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mServant:Lcom/mediatek/recovery/BackupServant;

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/recovery/BackupServant;->backup(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I

    move-result v0

    goto :goto_1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "RecoveryManangerService v2.0"

    .line 258
    return-object v0
.end method

.method public handleException(Ljava/lang/RuntimeException;Z)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "RecoveryManagerService"

    const-string/jumbo v2, "Catch exception "

    .line 327
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->getNewInstance(Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_1

    .line 335
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mExceptionHappen:Z

    if-nez v1, :cond_2

    .line 339
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mExceptionHappen:Z

    .line 341
    :goto_1
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->logger:Lcom/mediatek/recovery/EventLogger;

    invoke-virtual {v1}, Lcom/mediatek/recovery/EventLogger;->getLastBootStatus()I

    move-result v1

    sget v2, Lcom/mediatek/recovery/EventLogger;->LAST_BOOT_SUCCESS:I

    if-eq v1, v2, :cond_3

    .line 344
    :goto_2
    sget-object v1, Lcom/mediatek/recovery/RecoveryManager;->ANTIBRICKING_LEVEL:Ljava/lang/String;

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 349
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 355
    :goto_3
    if-nez v0, :cond_5

    .line 358
    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "RecoveryManagerService"

    const-string/jumbo v2, "The exception backtrace is null, stop handle progress"

    .line 332
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "RecoveryManagerService"

    const-string/jumbo v2, "The first exception happened in system server has been caught, stop handle progress"

    .line 336
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 342
    :cond_3
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->logger:Lcom/mediatek/recovery/EventLogger;

    invoke-virtual {v1, p1}, Lcom/mediatek/recovery/EventLogger;->logBootFail(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "RecoveryManagerService"

    const-string/jumbo v2, "RMS is partial support, do not recover any files, just record the exception"

    .line 346
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 353
    :catch_0
    move-exception v1

    const-string/jumbo v2, "RecoveryManagerService"

    const-string/jumbo v3, "Exception recovery failed due to RMS excetipn"

    .line 352
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 355
    :cond_5
    if-eqz p2, :cond_0

    .line 356
    throw p1
.end method

.method restore(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 128
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mParser:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/recovery/Module;

    .line 129
    if-eqz v0, :cond_1

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 138
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 149
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 204
    return v6

    :cond_1
    const-string/jumbo v0, "RecoveryManagerService"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Recovery failed, Module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xa

    .line 131
    return v0

    .line 139
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    iget-object v2, v0, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 141
    if-eqz v2, :cond_3

    .line 145
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "RecoveryManagerService"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recovery failed, File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xb

    .line 143
    return v0

    .line 150
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 155
    iget v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    if-eqz v2, :cond_7

    .line 159
    iget v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_8

    .line 171
    :cond_5
    iget v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    .line 183
    :cond_6
    :goto_1
    iget-object v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/recovery/RecoveryManagerService;->getTargetClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/recovery/AbstractRecoveryMethod;

    .line 187
    if-eqz v2, :cond_a

    .line 193
    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/mediatek/recovery/AbstractRecoveryMethod;->doRecover(Ljava/lang/Object;)I

    move-result v1

    .line 195
    if-eqz v1, :cond_0

    const-string/jumbo v0, "RecoveryManagerService"

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recovery failed, recovery method execute failed, error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x9

    .line 199
    return v0

    :cond_7
    const-string/jumbo v2, "RecoveryManagerService"

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " has no default recovery action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    :cond_8
    new-instance v2, Ljava/io/File;

    iget-object v4, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v0, "RecoveryManagerService"

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recovery failed, cannot finish defualt REMOVE action for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    .line 166
    return v0

    .line 172
    :cond_9
    iget-object v2, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mServant:Lcom/mediatek/recovery/BackupServant;

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/recovery/BackupServant;->restore(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I

    move-result v2

    .line 173
    if-eqz v2, :cond_6

    const-string/jumbo v0, "RecoveryManagerService"

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recovery failed, cannot perform resotre for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v2

    :cond_a
    const-string/jumbo v0, "RecoveryManagerService"

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recovery failed, recovery class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " instantiation failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x8

    .line 190
    return v0
.end method

.method public startBootMonitor()V
    .locals 4

    .prologue
    const-string/jumbo v0, "RecoveryManagerService"

    const-string/jumbo v1, "Start boot monitor"

    .line 445
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mHandler:Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;

    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mHandler:Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 447
    return-void
.end method

.method public stopBootMonitor()V
    .locals 2

    .prologue
    const-string/jumbo v0, "RecoveryManagerService"

    const-string/jumbo v1, "Stop boot monitor"

    .line 454
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mHandler:Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/recovery/RecoveryManagerService$RecoveryHandler;->removeMessages(I)V

    .line 456
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->logger:Lcom/mediatek/recovery/EventLogger;

    const-string/jumbo v1, "systemReady()"

    invoke-virtual {v0, v1}, Lcom/mediatek/recovery/EventLogger;->logBootSuccess(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/mediatek/recovery/RecoveryManagerService;->backupAll()V

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->isSystemReady:Z

    .line 234
    return-void
.end method
