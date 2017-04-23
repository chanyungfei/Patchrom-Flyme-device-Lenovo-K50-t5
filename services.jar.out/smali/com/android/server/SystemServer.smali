.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$BootProgressUpdater;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final DATASHPAING_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.datashaping.DataShapingService"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final IS_USER_BUILD:Z

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field static mMTPROF_disable:Z


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mBootProgressUpdater:Lcom/android/server/SystemServer$BootProgressUpdater;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 229
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 228
    :goto_0
    sput-boolean v0, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    .line 160
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1631
    new-instance v0, Lcom/android/server/SystemServer$BootProgressUpdater;

    invoke-direct {v0, p0}, Lcom/android/server/SystemServer$BootProgressUpdater;-><init>(Lcom/android/server/SystemServer;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mBootProgressUpdater:Lcom/android/server/SystemServer$BootProgressUpdater;

    .line 245
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 243
    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 5
    .param p0, "bootevent"    # Ljava/lang/String;

    .prologue
    .line 395
    :try_start_0
    sget-boolean v3, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    if-nez v3, :cond_0

    .line 396
    new-instance v2, Ljava/io/FileOutputStream;

    const-string/jumbo v3, "/proc/bootprof"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 397
    .local v2, "fbp":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 398
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 399
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v2    # "fbp":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BOOTPROF"

    const-string/jumbo v4, "Failure open /proc/bootprof entry"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 401
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v3, "BOOTPROF"

    const-string/jumbo v4, "Failure open /proc/bootprof, not found!"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 427
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 428
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 429
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 426
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 240
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 239
    return-void
.end method

.method private performPendingShutdown()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 411
    const-string/jumbo v3, "sys.shutdown.requested"

    const-string/jumbo v4, ""

    .line 410
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 413
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 416
    .local v1, "reboot":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 417
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 422
    :goto_1
    invoke-static {v7, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 409
    .end local v1    # "reboot":Z
    :cond_0
    return-void

    .line 413
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "reboot":Z
    goto :goto_0

    .line 419
    :cond_2
    const/4 v0, 0x0

    .local v0, "reason":Ljava/lang/String;
    goto :goto_1
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 388
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    return-void
.end method

.method private run()V
    .locals 11

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 254
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 266
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 269
    .local v8, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .end local v8    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v4, 0xbc2

    invoke-static {v4, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 280
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.mtprof.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    .line 281
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "Android:SysServerInit_START"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 296
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 297
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 306
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 310
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 314
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 318
    invoke-static {v9}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 321
    invoke-static {v9}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 325
    const/4 v0, -0x2

    .line 324
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 326
    invoke-static {v10}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 327
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 330
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 334
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string/jumbo v1, "rm -r /data/piggybank"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 345
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 348
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 349
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 352
    const-string/jumbo v0, "sys.loadinganimation.enable"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 353
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mBootProgressUpdater:Lcom/android/server/SystemServer$BootProgressUpdater;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 359
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 360
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 361
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_4
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "Android:SysServerInit_END"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 383
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :catch_0
    move-exception v6

    .line 336
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system server init delete piggybank fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 363
    .local v7, "ex":Ljava/lang/Throwable;
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v0, :cond_5

    instance-of v0, v7, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v7, v9}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto :goto_1

    .line 369
    .restart local v7    # "ex":Ljava/lang/Throwable;
    :cond_5
    throw v7
.end method

.method private startBootstrapServices()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 443
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/Installer;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 446
    .local v3, "installer":Lcom/android/server/pm/Installer;
    sget-boolean v6, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    if-nez v6, :cond_0

    .line 448
    const/4 v4, 0x0

    .line 449
    .local v4, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_0
    new-instance v5, Lcom/mediatek/msglogger/MessageMonitorService;

    invoke-direct {v5}, Lcom/mediatek/msglogger/MessageMonitorService;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .local v5, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_1
    const-string/jumbo v6, "SystemServer"

    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    const-string/jumbo v9, "Create message monitor service successfully ."

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string/jumbo v6, "msgmonitorservice"

    .line 454
    invoke-virtual {v5}, Lcom/mediatek/msglogger/MessageMonitorService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 453
    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 462
    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 463
    const-class v9, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 462
    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 464
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v9}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 465
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 471
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 475
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 478
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/lights/LightsService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 482
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 485
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x64

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 488
    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v6, "trigger_restart_min_framework"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 490
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 498
    :cond_1
    :goto_1
    const-string/jumbo v6, "0"

    const-string/jumbo v9, "ro.mtk_antibricking_level"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 499
    .local v1, "disableAntiBricking":Z
    if-nez v1, :cond_2

    .line 501
    :try_start_2
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Recovery Manager"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v6, Lcom/mediatek/recovery/RecoveryManagerService;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/mediatek/recovery/RecoveryManagerService;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    .line 503
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v6, :cond_2

    .line 504
    const-string/jumbo v6, "recovery"

    .line 505
    iget-object v9, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v9}, Lcom/mediatek/recovery/RecoveryManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 504
    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 506
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v6}, Lcom/mediatek/recovery/RecoveryManagerService;->startBootMonitor()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 515
    :cond_2
    :goto_2
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Package Manager"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 517
    iget v6, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v6, :cond_4

    move v6, v7

    :goto_3
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 516
    invoke-static {v9, v3, v6, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 518
    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 519
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 521
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "User Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string/jumbo v6, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 525
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 528
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 532
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 439
    return-void

    .line 455
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disableAntiBricking":Z
    .restart local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_0
    move-exception v2

    .line 456
    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .local v2, "e":Ljava/lang/Throwable;
    :goto_4
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Starting message monitor service exception "

    invoke-static {v6, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 492
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 493
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Device encrypted - only parsing core apps"

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_1

    .line 508
    .restart local v1    # "disableAntiBricking":Z
    :catch_1
    move-exception v2

    .line 509
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Failure starting Recovery Manager"

    invoke-direct {p0, v6, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    move v6, v8

    .line 517
    goto :goto_3

    .line 455
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disableAntiBricking":Z
    .restart local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Throwable;
    move-object v4, v5

    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .local v4, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    goto :goto_4
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 543
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 544
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 545
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 544
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 547
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 550
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 538
    return-void
.end method

.method private startOtherServices()V
    .locals 119

    .prologue
    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 559
    .local v3, "context":Landroid/content/Context;
    const/16 v35, 0x0

    .line 560
    .local v35, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v55, 0x0

    .line 561
    .local v55, "contentService":Lcom/android/server/content/ContentService;
    const/16 v112, 0x0

    .line 562
    .local v112, "vibrator":Lcom/android/server/VibratorService;
    const/16 v37, 0x0

    .line 563
    .local v37, "alarm":Landroid/app/IAlarmManager;
    const/16 v88, 0x0

    .line 564
    .local v88, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .line 565
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 566
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v89, 0x0

    .line 567
    .local v89, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v51, 0x0

    .line 568
    .local v51, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v90, 0x0

    .line 569
    .local v90, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v104, 0x0

    .line 570
    .local v104, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v118, 0x0

    .line 571
    .local v118, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v111, 0x0

    .line 572
    .local v111, "usb":Lcom/android/server/usb/UsbService;
    const/16 v102, 0x0

    .line 573
    .local v102, "serial":Lcom/android/server/SerialService;
    const/16 v93, 0x0

    .line 574
    .local v93, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v48, 0x0

    .line 575
    .local v48, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v75, 0x0

    .line 576
    .local v75, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v107, 0x0

    .line 577
    .local v107, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v53, 0x0

    .line 578
    .local v53, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v44, 0x0

    .line 579
    .local v44, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v85, 0x0

    .line 580
    .local v85, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v68, 0x0

    .line 581
    .local v68, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v47, 0x0

    .line 584
    .local v47, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v86, 0x0

    .line 586
    .local v86, "mom":Lcom/mediatek/mom/MobileManagerService;
    const/16 v70, 0x0

    .line 588
    .local v70, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    const/16 v40, 0x0

    .line 591
    .local v40, "appPcService":Lcom/android/server/am/AppPcService;
    const/16 v38, 0x0

    .line 593
    .local v38, "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 594
    .local v63, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 595
    .local v58, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 596
    .local v59, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    .line 597
    .local v64, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 598
    .local v62, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 599
    .local v60, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 600
    .local v61, "disableNetworkTime":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v77

    .line 603
    .local v77, "isEmulator":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 606
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 611
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v108, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v108

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4d

    .line 613
    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v108, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v108

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 615
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v69, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v69

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4e

    .line 618
    .local v69, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .end local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 620
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 626
    :try_start_3
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v36, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 628
    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v36, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string/jumbo v4, "account"

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4f

    move-object/from16 v35, v36

    .line 633
    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    const/4 v4, 0x1

    .line 634
    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v55

    .line 638
    .local v55, "contentService":Lcom/android/server/content/ContentService;
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 640
    :try_start_6
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "MobileManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v87, Lcom/mediatek/mom/MobileManagerService;

    move-object/from16 v0, v87

    invoke-direct {v0, v3}, Lcom/mediatek/mom/MobileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 642
    .end local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v87, "mom":Lcom/mediatek/mom/MobileManagerService;
    :try_start_7
    const-string/jumbo v4, "mobile"

    invoke-virtual/range {v87 .. v87}, Lcom/mediatek/mom/MobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_50

    move-object/from16 v86, v87

    .line 649
    .end local v87    # "mom":Lcom/mediatek/mom/MobileManagerService;
    :cond_0
    :goto_2
    :try_start_8
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 652
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v113, Lcom/android/server/VibratorService;

    move-object/from16 v0, v113

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 654
    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .local v113, "vibrator":Lcom/android/server/VibratorService;
    :try_start_9
    const-string/jumbo v4, "vibrator"

    move-object/from16 v0, v113

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 656
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v54, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v54

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_51

    .line 658
    .local v54, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_a
    const-string/jumbo v4, "consumer_ir"

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v54

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 662
    const-string/jumbo v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 661
    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v37

    .line 664
    .local v37, "alarm":Landroid/app/IAlarmManager;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v117

    .line 666
    .local v117, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v117

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 668
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v76, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v76

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_52

    .line 671
    .local v76, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_b
    const-string/jumbo v4, "SystemServer"

    .end local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2f

    const/4 v4, 0x1

    move v5, v4

    .line 674
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_30

    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 672
    move-object/from16 v0, v76

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v118

    .line 675
    .local v118, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v118

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 676
    const-string/jumbo v4, "input"

    move-object/from16 v0, v76

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v118

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 680
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v76

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 681
    invoke-virtual/range {v76 .. v76}, Lcom/android/server/input/InputManagerService;->start()V

    .line 684
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 689
    if-eqz v77, :cond_31

    .line 690
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    :goto_5
    move-object/from16 v68, v69

    .end local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v68, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v53, v54

    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v53, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v107, v108

    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v107, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v75, v76

    .end local v76    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v75, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v112, v113

    .line 713
    .end local v37    # "alarm":Landroid/app/IAlarmManager;
    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v55    # "contentService":Lcom/android/server/content/ContentService;
    .end local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v113    # "vibrator":Lcom/android/server/VibratorService;
    .end local v117    # "watchdog":Lcom/android/server/Watchdog;
    .end local v118    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_1
    :goto_6
    const/16 v105, 0x0

    .line 714
    .local v105, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v95, 0x0

    .line 715
    .local v95, "notification":Landroid/app/INotificationManager;
    const/16 v73, 0x0

    .line 716
    .local v73, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v115, 0x0

    .line 717
    .local v115, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v78, 0x0

    .line 718
    .local v78, "location":Lcom/android/server/LocationManagerService;
    const/16 v56, 0x0

    .line 719
    .local v56, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v109, 0x0

    .line 720
    .local v109, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v80, 0x0

    .line 721
    .local v80, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v99, 0x0

    .line 722
    .local v99, "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    const/16 v97, 0x0

    .line 723
    .local v97, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v42, 0x0

    .line 724
    .local v42, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v82, 0x0

    .line 727
    .local v82, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 729
    :try_start_c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v74, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v74

    move-object/from16 v1, v118

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 731
    .end local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v74, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_d
    const-string/jumbo v4, "input_method"

    move-object/from16 v0, v74

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4c

    move-object/from16 v73, v74

    .line 737
    .end local v74    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_7
    :try_start_e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string/jumbo v4, "accessibility"

    .line 739
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 738
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 746
    :cond_2
    :goto_8
    :try_start_f
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .line 751
    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 752
    if-nez v63, :cond_3

    .line 753
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 770
    .end local v88    # "mountService":Landroid/os/storage/IMountService;
    :cond_3
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 773
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    .line 779
    :goto_b
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 780
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 781
    const v8, 0x1040371

    .line 780
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 782
    const/4 v8, 0x0

    .line 779
    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4b

    .line 786
    :goto_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3b

    .line 787
    if-nez v62, :cond_5

    .line 789
    :try_start_12
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v81, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    .line 791
    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v81, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_13
    const-string/jumbo v4, "lock_settings"

    move-object/from16 v0, v81

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4a

    move-object/from16 v80, v81

    .line 796
    .end local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_d
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 800
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 807
    :cond_5
    if-nez v64, :cond_6

    .line 809
    :try_start_14
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    new-instance v106, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v106

    move-object/from16 v1, v118

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    .line 811
    .end local v105    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v106, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_15
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v106

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_49

    move-object/from16 v105, v106

    .line 817
    .end local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_6
    :goto_e
    if-nez v62, :cond_7

    .line 819
    :try_start_16
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string/jumbo v4, "clipboard"

    .line 821
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 820
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b

    .line 827
    :cond_7
    :goto_f
    if-nez v60, :cond_8

    .line 829
    :try_start_17
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 831
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c

    .line 837
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :cond_8
    :goto_10
    if-nez v62, :cond_9

    .line 839
    :try_start_18
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance v110, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v110

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_d

    .line 841
    .end local v109    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v110, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_19
    const-string/jumbo v4, "textservices"

    move-object/from16 v0, v110

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_48

    move-object/from16 v109, v110

    .line 847
    .end local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_9
    :goto_11
    if-nez v60, :cond_3a

    .line 849
    :try_start_1a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    new-instance v91, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v91

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_e

    .line 851
    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v91, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1b
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v91

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_47

    move-object/from16 v90, v91

    .line 857
    .end local v91    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_12
    :try_start_1c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    new-instance v92, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v92

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_f

    .line 859
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v92, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1d
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v92

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_46

    move-object/from16 v6, v92

    .line 865
    .end local v92    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_13
    :try_start_1e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 868
    const-string/jumbo v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    .line 866
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_10

    .line 870
    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1f
    const-string/jumbo v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_45

    .line 875
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 876
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 878
    const-string/jumbo v5, "com.android.server.wifi.WifiScanningService"

    .line 877
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 882
    if-eqz v4, :cond_b

    .line 884
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 888
    :cond_b
    :try_start_20
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    new-instance v52, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v52

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11

    .line 891
    .end local v51    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v52, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_21
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v52

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 892
    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 893
    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_44

    move-object/from16 v51, v52

    .line 899
    .end local v52    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_15
    :try_start_22
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v104

    .line 902
    .local v104, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 901
    move-object/from16 v0, v104

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_12

    .line 908
    .end local v104    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_16
    const-string/jumbo v4, "1"

    const-string/jumbo v5, "persist.mtk.datashaping.support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 910
    :try_start_23
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Start DataShaping Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.mediatek.datashaping.DataShapingService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_13

    .line 919
    :cond_c
    :goto_17
    if-nez v62, :cond_d

    .line 921
    :try_start_24
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string/jumbo v4, "updatelock"

    .line 923
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 922
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_14

    .line 934
    :cond_d
    :goto_18
    if-eqz v88, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_36

    .line 942
    :cond_e
    :goto_19
    if-eqz v35, :cond_f

    .line 943
    :try_start_25
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_16

    .line 949
    :cond_f
    :goto_1a
    if-eqz v55, :cond_10

    .line 950
    :try_start_26
    invoke-virtual/range {v55 .. v55}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_17

    .line 955
    :cond_10
    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 957
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 956
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v95

    .line 958
    .local v95, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v95

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 962
    if-nez v59, :cond_11

    .line 964
    :try_start_27
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    new-instance v79, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_18

    .line 966
    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    .local v79, "location":Lcom/android/server/LocationManagerService;
    :try_start_28
    const-string/jumbo v4, "location"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_43

    move-object/from16 v78, v79

    .line 972
    .end local v79    # "location":Lcom/android/server/LocationManagerService;
    :goto_1c
    :try_start_29
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    new-instance v57, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v57

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_19

    .line 974
    .end local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v57, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2a
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v57

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_42

    move-object/from16 v56, v57

    .line 980
    .end local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_11
    :goto_1d
    if-nez v62, :cond_12

    .line 982
    :try_start_2b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const-string/jumbo v4, "search"

    .line 984
    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    .line 983
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1a

    .line 991
    :goto_1e
    :try_start_2c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Search Engine Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const-string/jumbo v4, "search_engine"

    .line 993
    new-instance v5, Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {v5, v3}, Lcom/mediatek/search/SearchEngineManagerService;-><init>(Landroid/content/Context;)V

    .line 992
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1b

    .line 1001
    :cond_12
    :goto_1f
    :try_start_2d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string/jumbo v4, "dropbox"

    .line 1003
    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 1002
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1c

    .line 1008
    :goto_20
    if-nez v62, :cond_13

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1009
    const v5, 0x1120048

    .line 1008
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1011
    :try_start_2e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    new-instance v116, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v116

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1d

    .line 1013
    .end local v115    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v116, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2f
    const-string/jumbo v4, "wallpaper"

    move-object/from16 v0, v116

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_41

    move-object/from16 v115, v116

    .line 1020
    .end local v116    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_13
    :goto_21
    :try_start_30
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance v45, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1e

    .line 1022
    .end local v44    # "audioService":Lcom/android/server/audio/AudioService;
    .local v45, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_31
    const-string/jumbo v4, "audio"

    move-object/from16 v0, v45

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_40

    move-object/from16 v44, v45

    .line 1029
    .end local v45    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_22
    const-string/jumbo v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1030
    const-string/jumbo v4, "ro.mtk_audio_profiles"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1032
    :try_start_32
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "AudioProfile Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const-string/jumbo v4, "audioprofile"

    .line 1034
    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {v5, v3}, Lcom/mediatek/audioprofile/AudioProfileService;-><init>(Landroid/content/Context;)V

    .line 1033
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1f

    .line 1042
    :cond_14
    :goto_23
    const-string/jumbo v4, "1"

    const-string/jumbo v5, "ro.mtk_sensorhub_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1044
    :try_start_33
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SensorHubService"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string/jumbo v4, "sensorhubservice"

    .line 1046
    new-instance v5, Lcom/mediatek/sensorhub/SensorHubService;

    invoke-direct {v5, v3}, Lcom/mediatek/sensorhub/SensorHubService;-><init>(Landroid/content/Context;)V

    .line 1045
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_20

    .line 1053
    :cond_15
    :goto_24
    if-nez v62, :cond_16

    .line 1054
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1058
    :cond_16
    :try_start_34
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v75

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1060
    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_21

    .line 1066
    :goto_25
    if-nez v62, :cond_1a

    .line 1067
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1072
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1074
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 1073
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1072
    if-eqz v4, :cond_19

    .line 1076
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1080
    :cond_19
    :try_start_35
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v103, Lcom/android/server/SerialService;

    move-object/from16 v0, v103

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_22

    .line 1083
    .end local v102    # "serial":Lcom/android/server/SerialService;
    .local v103, "serial":Lcom/android/server/SerialService;
    :try_start_36
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v103

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_3f

    move-object/from16 v102, v103

    .line 1089
    .end local v103    # "serial":Lcom/android/server/SerialService;
    :cond_1a
    :goto_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1091
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1094
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1097
    if-nez v62, :cond_1d

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1102
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1106
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1112
    :cond_1d
    :try_start_37
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_23

    .line 1123
    :goto_27
    :try_start_38
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const-string/jumbo v4, "samplingprofiler"

    .line 1125
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 1124
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_24

    .line 1130
    :goto_28
    if-nez v60, :cond_1e

    if-eqz v61, :cond_37

    .line 1140
    .end local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1e
    :goto_29
    :try_start_39
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    new-instance v49, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v49

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_26

    .line 1142
    .end local v48    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v49, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_3a
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_3e

    move-object/from16 v48, v49

    .line 1147
    .end local v49    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_2a
    if-nez v60, :cond_1f

    .line 1149
    :try_start_3b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    new-instance v46, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_27

    .line 1156
    :cond_1f
    :goto_2b
    if-nez v62, :cond_20

    .line 1158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1161
    :cond_20
    if-nez v62, :cond_21

    .line 1162
    const-string/jumbo v4, "ro.hwui.disable_asset_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1172
    .end local v42    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_21
    :goto_2c
    if-nez v62, :cond_22

    .line 1173
    const-string/jumbo v4, "graphicsstats"

    .line 1174
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 1173
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1177
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1181
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1189
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1193
    :cond_25
    if-nez v62, :cond_26

    .line 1195
    :try_start_3c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    new-instance v83, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v83

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_29

    .line 1197
    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v83, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3d
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v83

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_3c

    move-object/from16 v82, v83

    .line 1202
    .end local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1207
    :try_start_3e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_2a

    .line 1216
    :cond_26
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mBootProgressUpdater:Lcom/android/server/SystemServer$BootProgressUpdater;

    invoke-virtual {v4}, Lcom/android/server/SystemServer$BootProgressUpdater;->setCompleted()V

    .line 1219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1222
    const-string/jumbo v4, "ro.mtk_perfservice_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1224
    :try_start_3f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "PerfService state notifier"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    new-instance v100, Lcom/mediatek/perfservice/PerfServiceStateNotifier;

    invoke-direct/range {v100 .. v100}, Lcom/mediatek/perfservice/PerfServiceStateNotifier;-><init>()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_2b

    .line 1226
    .end local v99    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .local v100, "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    :try_start_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v100

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_3b

    move-object/from16 v99, v100

    .line 1233
    .end local v100    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    :goto_2f
    :try_start_41
    new-instance v98, Lcom/mediatek/perfservice/PerfServiceManager;

    move-object/from16 v0, v98

    invoke-direct {v0, v3}, Lcom/mediatek/perfservice/PerfServiceManager;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_2c

    .line 1235
    .end local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .local v98, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v96, 0x0

    .line 1236
    .local v96, "perfService":Lcom/mediatek/perfservice/IPerfService;
    :try_start_42
    new-instance v96, Lcom/mediatek/perfservice/PerfServiceImpl;

    .end local v96    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    move-object/from16 v0, v96

    move-object/from16 v1, v98

    invoke-direct {v0, v3, v1}, Lcom/mediatek/perfservice/PerfServiceImpl;-><init>(Landroid/content/Context;Lcom/mediatek/perfservice/IPerfServiceManager;)V

    .line 1238
    .local v96, "perfService":Lcom/mediatek/perfservice/IPerfService;
    const-string/jumbo v4, "perfservice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "perfService="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v96

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    if-eqz v96, :cond_27

    .line 1240
    const-string/jumbo v4, "mtk-perfservice"

    invoke-interface/range {v96 .. v96}, Lcom/mediatek/perfservice/IPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_3a

    :cond_27
    move-object/from16 v97, v98

    .line 1250
    .end local v96    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    .end local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :cond_28
    :goto_30
    if-nez v62, :cond_29

    .line 1251
    const-string/jumbo v4, "ro.mtk_hdmi_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1250
    if-eqz v4, :cond_29

    .line 1253
    :try_start_43
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "HDMI Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    new-instance v71, Lcom/mediatek/hdmi/MtkHdmiManagerService;

    move-object/from16 v0, v71

    invoke-direct {v0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2d

    .line 1255
    .end local v70    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v71, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :try_start_44
    const-string/jumbo v4, "mtkhdmi"

    .line 1256
    invoke-virtual/range {v71 .. v71}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1255
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_39

    move-object/from16 v70, v71

    .line 1266
    .end local v71    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .end local v95    # "notification":Landroid/app/INotificationManager;
    :cond_29
    :goto_31
    :try_start_45
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "AppPcService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    new-instance v41, Lcom/android/server/am/AppPcService;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Lcom/android/server/am/AppPcService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2e

    .line 1268
    .end local v40    # "appPcService":Lcom/android/server/am/AppPcService;
    .local v41, "appPcService":Lcom/android/server/am/AppPcService;
    :try_start_46
    const-string/jumbo v4, "lenovopermission"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_38

    move-object/from16 v40, v41

    .line 1278
    .end local v41    # "appPcService":Lcom/android/server/am/AppPcService;
    :goto_32
    :try_start_47
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "AppIconThemeServices"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    new-instance v39, Ltheme/content/res/AppIconThemeServices;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Ltheme/content/res/AppIconThemeServices;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2f

    .line 1280
    .end local v38    # "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    .local v39, "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    :try_start_48
    const-string/jumbo v4, "AppIconThemeServices"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_37

    move-object/from16 v38, v39

    .line 1287
    .end local v39    # "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    :goto_33
    if-nez v62, :cond_2a

    .line 1288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1293
    :cond_2a
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v101

    .line 1294
    .local v101, "safeMode":Z
    if-eqz v101, :cond_39

    .line 1295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1297
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1304
    :goto_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v85

    .end local v85    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v85, Lcom/android/server/MmsServiceBroker;

    .line 1309
    .local v85, "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_49
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_30

    .line 1314
    :goto_35
    if-eqz v80, :cond_2b

    .line 1316
    :try_start_4a
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_31

    .line 1323
    :cond_2b
    :goto_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1328
    :try_start_4b
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_32

    .line 1333
    :goto_37
    if-eqz v101, :cond_2c

    .line 1334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1340
    :cond_2c
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v50

    .line 1341
    .local v50, "config":Landroid/content/res/Configuration;
    new-instance v84, Landroid/util/DisplayMetrics;

    invoke-direct/range {v84 .. v84}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1342
    .local v84, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/view/WindowManager;

    .line 1343
    .local v114, "w":Landroid/view/WindowManager;
    invoke-interface/range {v114 .. v114}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v84

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1344
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v50

    move-object/from16 v1, v84

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1348
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_33

    .line 1354
    :goto_38
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_34

    .line 1361
    :goto_39
    :try_start_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v101

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_35

    .line 1367
    :goto_3a
    move-object v15, v7

    .line 1368
    .local v15, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v16, v6

    .line 1369
    .local v16, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v17, v2

    .line 1370
    .local v17, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v18, v51

    .line 1371
    .local v18, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v14, v90

    .line 1372
    .local v14, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v20, v115

    .line 1373
    .local v20, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v21, v73

    .line 1374
    .local v21, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v23, v78

    .line 1375
    .local v23, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v24, v56

    .line 1376
    .local v24, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v25, v93

    .line 1377
    .local v25, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v26, v48

    .line 1378
    .local v26, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v27, v109

    .line 1379
    .local v27, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v22, v105

    .line 1380
    .local v22, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v28, v42

    .line 1381
    .local v28, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v29, v75

    .line 1382
    .local v29, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v30, v107

    .line 1383
    .local v30, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v31, v82

    .line 1384
    .local v31, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v19, v44

    .line 1385
    .local v19, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v32, v85

    .line 1388
    .local v32, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v10, v86

    .line 1390
    .local v10, "momF":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    move-object/from16 v34, v0

    .line 1392
    .local v34, "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    move-object/from16 v33, v97

    .line 1394
    .local v33, "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    move-object/from16 v11, v40

    .line 1398
    .local v11, "appPcServiceF":Lcom/android/server/am/AppPcService;
    move-object/from16 v12, v38

    .line 1405
    .local v12, "appIconThemeServiceF":Ltheme/content/res/AppIconThemeServices;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v13, v3

    invoke-direct/range {v8 .. v34}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Lcom/mediatek/mom/MobileManagerService;Lcom/android/server/am/AppPcService;Ltheme/content/res/AppIconThemeServices;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/mediatek/perfservice/IPerfServiceManager;Lcom/mediatek/recovery/RecoveryManagerService;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1596
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_2d

    .line 1597
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v4}, Lcom/mediatek/recovery/RecoveryManagerService;->stopBootMonitor()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_36

    .line 557
    :cond_2d
    :goto_3b
    return-void

    .line 629
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v11    # "appPcServiceF":Lcom/android/server/am/AppPcService;
    .end local v12    # "appIconThemeServiceF":Ltheme/content/res/AppIconThemeServices;
    .end local v14    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v15    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v16    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v17    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v18    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v19    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v20    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v21    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v22    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v23    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v24    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v25    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v26    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v27    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v28    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v29    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v30    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v31    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v32    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v33    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v34    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v50    # "config":Landroid/content/res/Configuration;
    .end local v84    # "metrics":Landroid/util/DisplayMetrics;
    .end local v101    # "safeMode":Z
    .end local v114    # "w":Landroid/view/WindowManager;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v37, "alarm":Landroid/app/IAlarmManager;
    .restart local v38    # "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    .restart local v40    # "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v44    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v48    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v51    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v53, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v55, "contentService":Lcom/android/server/content/ContentService;
    .restart local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v70    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v75, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v85, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v88    # "mountService":Landroid/os/storage/IMountService;
    .restart local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v102    # "serial":Lcom/android/server/SerialService;
    .local v104, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    .local v118, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v67

    .line 630
    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v67, "e":Ljava/lang/Throwable;
    :goto_3c
    :try_start_50
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Account Manager"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_50} :catch_1

    goto/16 :goto_0

    .line 702
    .end local v55    # "contentService":Lcom/android/server/content/ContentService;
    .end local v67    # "e":Ljava/lang/Throwable;
    .end local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    :catch_1
    move-exception v66

    .local v66, "e":Ljava/lang/RuntimeException;
    move-object/from16 v68, v69

    .end local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v107, v108

    .line 703
    .end local v37    # "alarm":Landroid/app/IAlarmManager;
    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .end local v118    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_3d
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v66

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_1

    .line 708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v66

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto/16 :goto_6

    .line 635
    .end local v66    # "e":Ljava/lang/RuntimeException;
    .restart local v37    # "alarm":Landroid/app/IAlarmManager;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v55    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v118    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_2e
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 643
    .local v55, "contentService":Lcom/android/server/content/ContentService;
    :catch_2
    move-exception v67

    .line 644
    .end local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_3e
    :try_start_51
    const-string/jumbo v4, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_51} :catch_1

    goto/16 :goto_2

    .line 673
    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v67    # "e":Ljava/lang/Throwable;
    .end local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .local v37, "alarm":Landroid/app/IAlarmManager;
    .restart local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v76    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v113    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v117    # "watchdog":Lcom/android/server/Watchdog;
    :cond_2f
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_3

    .line 674
    :cond_30
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 691
    .local v118, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_31
    :try_start_52
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_32

    .line 692
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 702
    .end local v118    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_3
    move-exception v66

    .restart local v66    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v68, v69

    .end local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v53, v54

    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v53, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v107, v108

    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v75, v76

    .end local v76    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v75, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v112, v113

    .end local v113    # "vibrator":Lcom/android/server/VibratorService;
    .local v112, "vibrator":Lcom/android/server/VibratorService;
    goto :goto_3d

    .line 693
    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v66    # "e":Ljava/lang/RuntimeException;
    .end local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v76    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v113    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v118    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_32
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 694
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 693
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 695
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 696
    :cond_33
    if-eqz v58, :cond_34

    .line 697
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 699
    :cond_34
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_52} :catch_3

    goto/16 :goto_5

    .line 732
    .end local v37    # "alarm":Landroid/app/IAlarmManager;
    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v55    # "contentService":Lcom/android/server/content/ContentService;
    .end local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v76    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v113    # "vibrator":Lcom/android/server/VibratorService;
    .end local v117    # "watchdog":Lcom/android/server/Watchdog;
    .end local v118    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v42    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v78    # "location":Lcom/android/server/LocationManagerService;
    .restart local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v95, "notification":Landroid/app/INotificationManager;
    .restart local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v99    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .restart local v105    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v109    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v115    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4
    move-exception v67

    .line 733
    .end local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string/jumbo v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 740
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v67

    .line 741
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 747
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v67

    .line 748
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 759
    .end local v67    # "e":Ljava/lang/Throwable;
    :cond_35
    :try_start_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 761
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 760
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_7

    move-result-object v88

    .local v88, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_a

    .line 762
    .local v88, "mountService":Landroid/os/storage/IMountService;
    :catch_7
    move-exception v67

    .line 763
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 774
    .end local v67    # "e":Ljava/lang/Throwable;
    .end local v88    # "mountService":Landroid/os/storage/IMountService;
    :catch_8
    move-exception v67

    .line 775
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 792
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v67

    .line 793
    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 812
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v67

    .line 813
    .end local v105    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 822
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v67

    .line 823
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 832
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v67

    .line 833
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 842
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v67

    .line 843
    .end local v109    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string/jumbo v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 852
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v67

    .line 853
    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 860
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v67

    .line 861
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 871
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v2, v89

    .line 872
    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_45
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 894
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v67

    .line 895
    .end local v51    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 903
    .end local v67    # "e":Ljava/lang/Throwable;
    .end local v104    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_12
    move-exception v67

    .line 904
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 912
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v67

    .line 913
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure to start DataShaping Service"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 924
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v67

    .line 925
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 936
    .end local v67    # "e":Ljava/lang/Throwable;
    :cond_36
    :try_start_54
    invoke-interface/range {v88 .. v88}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_54} :catch_15

    goto/16 :goto_19

    .line 937
    :catch_15
    move-exception v72

    .local v72, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_19

    .line 944
    .end local v72    # "ignored":Landroid/os/RemoteException;
    :catch_16
    move-exception v67

    .line 945
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 951
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v67

    .line 952
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 967
    .end local v67    # "e":Ljava/lang/Throwable;
    .local v95, "notification":Landroid/app/INotificationManager;
    :catch_18
    move-exception v67

    .line 968
    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 975
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v67

    .line 976
    .end local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 985
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v67

    .line 986
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 994
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v67

    .line 995
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1004
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v67

    .line 1005
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1014
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v67

    .line 1015
    .end local v115    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_49
    const-string/jumbo v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1023
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v67

    .line 1024
    .end local v44    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_4a
    const-string/jumbo v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1035
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v67

    .line 1036
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "starting AudioProfile Service"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 1047
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v67

    .line 1048
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "starting SensorHub Service"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 1062
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v67

    .line 1063
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1084
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v67

    .line 1085
    .end local v102    # "serial":Lcom/android/server/SerialService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_4b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 1114
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v67

    .line 1115
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1126
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v67

    .line 1127
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1132
    .end local v67    # "e":Ljava/lang/Throwable;
    :cond_37
    :try_start_55
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    new-instance v94, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v94

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_25

    .end local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v94, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v93, v94

    .end local v94    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v93, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_29

    .line 1134
    .local v93, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_25
    move-exception v67

    .line 1135
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1143
    .end local v67    # "e":Ljava/lang/Throwable;
    .end local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_26
    move-exception v67

    .line 1144
    .end local v48    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_4c
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1151
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v67

    .line 1152
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1164
    .end local v67    # "e":Ljava/lang/Throwable;
    :cond_38
    :try_start_56
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v43, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v43

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_28

    .line 1166
    .end local v42    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v43, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_57
    const-string/jumbo v4, "assetatlas"

    move-object/from16 v0, v43

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_3d

    move-object/from16 v42, v43

    .end local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v42, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_2c

    .line 1167
    .local v42, "atlas":Lcom/android/server/AssetAtlasService;
    :catch_28
    move-exception v67

    .line 1168
    .end local v42    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_4d
    const-string/jumbo v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1198
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v67

    .line 1199
    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_4e
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1209
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v67

    .line 1210
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1227
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v67

    .line 1228
    .end local v99    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "FAIL starting PerfServiceStateNotifier"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 1243
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v67

    .line 1244
    .end local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_50
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "perfservice Failure starting PerfService"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 1257
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v67

    .line 1258
    .end local v70    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_51
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting MtkHdmiManager"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 1269
    .end local v67    # "e":Ljava/lang/Throwable;
    .end local v95    # "notification":Landroid/app/INotificationManager;
    :catch_2e
    move-exception v67

    .line 1270
    .end local v40    # "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_52
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "FAIL starting AppPcService"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 1281
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v67

    .line 1282
    .end local v38    # "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_53
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "FAIL starting appIconThemeServices"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 1300
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v101    # "safeMode":Z
    :cond_39
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_34

    .line 1310
    .local v85, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_30
    move-exception v67

    .line 1311
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1317
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v67

    .line 1318
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1329
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v67

    .line 1330
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1349
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v50    # "config":Landroid/content/res/Configuration;
    .restart local v84    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v114    # "w":Landroid/view/WindowManager;
    :catch_33
    move-exception v67

    .line 1350
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1355
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v67

    .line 1356
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1362
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v67

    .line 1363
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1599
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .restart local v11    # "appPcServiceF":Lcom/android/server/am/AppPcService;
    .restart local v12    # "appIconThemeServiceF":Ltheme/content/res/AppIconThemeServices;
    .restart local v14    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .restart local v15    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .restart local v16    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .restart local v17    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v18    # "connectivityF":Lcom/android/server/ConnectivityService;
    .restart local v19    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .restart local v20    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v21    # "immF":Lcom/android/server/InputMethodManagerService;
    .restart local v22    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v23    # "locationF":Lcom/android/server/LocationManagerService;
    .restart local v24    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .restart local v25    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v26    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .restart local v27    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .restart local v28    # "atlasF":Lcom/android/server/AssetAtlasService;
    .restart local v29    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .restart local v30    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .restart local v32    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .restart local v33    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v34    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    :catch_36
    move-exception v67

    .line 1600
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Failure Stop Boot Monitor"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1281
    .end local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v11    # "appPcServiceF":Lcom/android/server/am/AppPcService;
    .end local v12    # "appIconThemeServiceF":Ltheme/content/res/AppIconThemeServices;
    .end local v14    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v15    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v16    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v17    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v18    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v19    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v20    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v21    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v22    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v23    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v24    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v25    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v26    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v27    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v28    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v29    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v30    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v31    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v32    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v33    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v34    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v50    # "config":Landroid/content/res/Configuration;
    .end local v67    # "e":Ljava/lang/Throwable;
    .end local v84    # "metrics":Landroid/util/DisplayMetrics;
    .end local v101    # "safeMode":Z
    .end local v114    # "w":Landroid/view/WindowManager;
    .restart local v39    # "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    .local v85, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_37
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v38, v39

    .end local v39    # "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    .local v38, "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    goto :goto_53

    .line 1269
    .end local v67    # "e":Ljava/lang/Throwable;
    .local v38, "appIconThemeServices":Ltheme/content/res/AppIconThemeServices;
    .restart local v41    # "appPcService":Lcom/android/server/am/AppPcService;
    :catch_38
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v40, v41

    .end local v41    # "appPcService":Lcom/android/server/am/AppPcService;
    .local v40, "appPcService":Lcom/android/server/am/AppPcService;
    goto/16 :goto_52

    .line 1257
    .end local v67    # "e":Ljava/lang/Throwable;
    .local v40, "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v71    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v95    # "notification":Landroid/app/INotificationManager;
    :catch_39
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v70, v71

    .end local v71    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v70, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    goto/16 :goto_51

    .line 1243
    .end local v67    # "e":Ljava/lang/Throwable;
    .local v70, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :catch_3a
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v97, v98

    .end local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .local v97, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    goto/16 :goto_50

    .line 1227
    .end local v67    # "e":Ljava/lang/Throwable;
    .local v97, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v100    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    :catch_3b
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v99, v100

    .end local v100    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .local v99, "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    goto/16 :goto_4f

    .line 1198
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v99, "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    :catch_3c
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v82, v83

    .end local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v82, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_4e

    .line 1167
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v82, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_3d
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v42, v43

    .end local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v42, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_4d

    .line 1143
    .end local v67    # "e":Ljava/lang/Throwable;
    .local v42, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_3e
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v48, v49

    .end local v49    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v48, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_4c

    .line 1084
    .end local v67    # "e":Ljava/lang/Throwable;
    .local v48, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v103    # "serial":Lcom/android/server/SerialService;
    :catch_3f
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v102, v103

    .end local v103    # "serial":Lcom/android/server/SerialService;
    .local v102, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_4b

    .line 1023
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v45    # "audioService":Lcom/android/server/audio/AudioService;
    .local v102, "serial":Lcom/android/server/SerialService;
    :catch_40
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v44, v45

    .end local v45    # "audioService":Lcom/android/server/audio/AudioService;
    .local v44, "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_4a

    .line 1014
    .end local v67    # "e":Ljava/lang/Throwable;
    .local v44, "audioService":Lcom/android/server/audio/AudioService;
    .restart local v116    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_41
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v115, v116

    .end local v116    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v115, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_49

    .line 975
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v115, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_42
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v56, v57

    .end local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v56, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_48

    .line 967
    .end local v67    # "e":Ljava/lang/Throwable;
    .local v56, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v79    # "location":Lcom/android/server/LocationManagerService;
    :catch_43
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v78, v79

    .end local v79    # "location":Lcom/android/server/LocationManagerService;
    .local v78, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_47

    .line 894
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v52    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v78, "location":Lcom/android/server/LocationManagerService;
    .local v95, "notification":Landroid/app/INotificationManager;
    .restart local v104    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_44
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v51, v52

    .end local v52    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v51, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_46

    .line 871
    .end local v67    # "e":Ljava/lang/Throwable;
    .local v51, "connectivity":Lcom/android/server/ConnectivityService;
    :catch_45
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    goto/16 :goto_45

    .line 860
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v92    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_46
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v6, v92

    .end local v92    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_44

    .line 852
    .end local v67    # "e":Ljava/lang/Throwable;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v91    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_47
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v90, v91

    .end local v91    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v90, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_43

    .line 842
    .end local v67    # "e":Ljava/lang/Throwable;
    .local v90, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_48
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v109, v110

    .end local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v109, "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_42

    .line 812
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v109, "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_49
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v105, v106

    .end local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v105, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_41

    .line 792
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v105, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_4a
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v80, v81

    .end local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v80, "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_40

    .line 783
    .end local v67    # "e":Ljava/lang/Throwable;
    .local v80, "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_4b
    move-exception v65

    .local v65, "e":Landroid/os/RemoteException;
    goto/16 :goto_c

    .line 732
    .end local v65    # "e":Landroid/os/RemoteException;
    .restart local v74    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v88    # "mountService":Landroid/os/storage/IMountService;
    :catch_4c
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v73, v74

    .end local v74    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v73, "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_3f

    .line 702
    .end local v42    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v67    # "e":Ljava/lang/Throwable;
    .end local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v95    # "notification":Landroid/app/INotificationManager;
    .end local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v99    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .end local v105    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v109    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v115    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v37, "alarm":Landroid/app/IAlarmManager;
    .local v53, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v55, "contentService":Lcom/android/server/content/ContentService;
    .local v68, "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v75, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v107, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v112, "vibrator":Lcom/android/server/VibratorService;
    .local v118, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_4d
    move-exception v66

    .restart local v66    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_3d

    .end local v66    # "e":Ljava/lang/RuntimeException;
    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4e
    move-exception v66

    .restart local v66    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v107, v108

    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v107, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_3d

    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v66    # "e":Ljava/lang/RuntimeException;
    .end local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4f
    move-exception v66

    .restart local v66    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v68, v69

    .end local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v68, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v107, v108

    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v35, v36

    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v35, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_3d

    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v66    # "e":Ljava/lang/RuntimeException;
    .end local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v55, "contentService":Lcom/android/server/content/ContentService;
    .restart local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v87    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_50
    move-exception v66

    .restart local v66    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v86, v87

    .end local v87    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v86, "mom":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v68, v69

    .end local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v107, v108

    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_3d

    .end local v66    # "e":Ljava/lang/RuntimeException;
    .end local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v113    # "vibrator":Lcom/android/server/VibratorService;
    :catch_51
    move-exception v66

    .restart local v66    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v68, v69

    .end local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v107, v108

    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v112, v113

    .end local v113    # "vibrator":Lcom/android/server/VibratorService;
    .local v112, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3d

    .end local v37    # "alarm":Landroid/app/IAlarmManager;
    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v66    # "e":Ljava/lang/RuntimeException;
    .end local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v113    # "vibrator":Lcom/android/server/VibratorService;
    :catch_52
    move-exception v66

    .restart local v66    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v68, v69

    .end local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v53, v54

    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v53, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v107, v108

    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v112, v113

    .end local v113    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3d

    .line 643
    .end local v66    # "e":Ljava/lang/RuntimeException;
    .end local v68    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "alarm":Landroid/app/IAlarmManager;
    .local v53, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v87    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v112, "vibrator":Lcom/android/server/VibratorService;
    :catch_53
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v86, v87

    .end local v87    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    goto/16 :goto_3e

    .line 629
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v55, "contentService":Lcom/android/server/content/ContentService;
    .local v86, "mom":Lcom/mediatek/mom/MobileManagerService;
    :catch_54
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    move-object/from16 v35, v36

    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_3c

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v37    # "alarm":Landroid/app/IAlarmManager;
    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v55    # "contentService":Lcom/android/server/content/ContentService;
    .end local v67    # "e":Ljava/lang/Throwable;
    .end local v69    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v86    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v88    # "mountService":Landroid/os/storage/IMountService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .end local v118    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v42    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v78    # "location":Lcom/android/server/LocationManagerService;
    .restart local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v95    # "notification":Landroid/app/INotificationManager;
    .restart local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v99    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .restart local v115    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_3a
    move-object/from16 v2, v89

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_17

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v105    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v109    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_3b
    move-object/from16 v2, v89

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_31
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1623
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1624
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1625
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1624
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1627
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1622
    return-void
.end method

.method static final testSystemServerANR(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1607
    const/4 v1, 0x0

    .line 1608
    .local v1, "ret":Landroid/content/ComponentName;
    const-string/jumbo v2, "ANR_DEBUG"

    const-string/jumbo v3, "=== Start BadService2 ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.badservicesysserver"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1610
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.badservicesysserver"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1611
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1613
    .local v1, "ret":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 1614
    const-string/jumbo v2, "ANR_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "=== result to start BadService2 === Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :goto_0
    return-object v1

    .line 1616
    :cond_0
    const-string/jumbo v2, "ANR_DEBUG"

    const-string/jumbo v3, "=== result to start BadService2 === Name: Null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
