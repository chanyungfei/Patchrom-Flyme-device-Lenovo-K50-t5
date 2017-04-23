.class public Lcom/mediatek/datashaping/DataShapingServiceImpl;
.super Lcom/mediatek/datashaping/IDataShapingManager$Stub;
.source "DataShapingServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;,
        Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;,
        Lcom/mediatek/datashaping/DataShapingServiceImpl$AppIdleStateChangeListener;,
        Lcom/mediatek/datashaping/DataShapingServiceImpl$1;
    }
.end annotation


# static fields
.field public static final ALARM_MANAGER_OPEN_GATE_INTERVAL:J = 0x493e0L

.field private static final CLOSE_TIME_EXPIRED_ACTION:Ljava/lang/String; = "com.mediatek.datashaping.CLOSE_TIME_EXPIRED"

.field public static final DATA_SHAPING_STATE_CLOSE:I = 0x3

.field public static final DATA_SHAPING_STATE_OPEN:I = 0x2

.field public static final DATA_SHAPING_STATE_OPEN_LOCKED:I = 0x1

.field public static final GATE_CLOSE_EXPIRED_TIME:J = 0x493e0L

.field public static final GATE_CLOSE_SAFE_TIMER:I = 0x927c0

.field private static final MSG_ALARM_MANAGER_TRIGGER:I = 0xe

.field private static final MSG_APPSTANDBY_CHANGED:I = 0x16

.field private static final MSG_BT_AP_STATE_CHANGED:I = 0x13

.field private static final MSG_CHECK_USER_PREFERENCE:I = 0x1

.field private static final MSG_CONNECTIVITY_CHANGED:I = 0x14

.field private static final MSG_DEVICEIDLE_CHANGED:I = 0x15

.field private static final MSG_GATE_CLOSE_TIMER_EXPIRED:I = 0x11

.field private static final MSG_HEADSETHOOK_CHANGED:I = 0x12

.field private static final MSG_INIT:I = 0x2

.field private static final MSG_LTE_AS_STATE_CHANGED:I = 0xf

.field private static final MSG_NETWORK_TYPE_CHANGED:I = 0xb

.field private static final MSG_SCREEN_STATE_CHANGED:I = 0xa

.field private static final MSG_SHARED_DEFAULT_APN_STATE_CHANGED:I = 0x10

.field private static final MSG_STOP:I = 0x3

.field private static final MSG_USB_STATE_CHANGED:I = 0xd

.field private static final MSG_WIFI_AP_STATE_CHANGED:I = 0xc

.field private static final WAKE_LOCK_TIMEOUT:I = 0x7530


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/mediatek/datashaping/DataShapingState;

.field private mDataShapingEnabled:Z

.field private mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

.field private mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

.field private mGateCloseState:Lcom/mediatek/datashaping/DataShapingState;

.field private mGateOpenLockedState:Lcom/mediatek/datashaping/DataShapingState;

.field private mGateOpenState:Lcom/mediatek/datashaping/DataShapingState;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInputFilter:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mLastAlarmTriggerSuccessTime:J

.field private final mLock:Ljava/lang/Object;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mRegisterInput:Z

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManagerService:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingUtils;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    return-object v0
.end method

.method static synthetic -get6(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Lcom/mediatek/datashaping/DataShapingState;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateOpenState:Lcom/mediatek/datashaping/DataShapingState;

    return-object v0
.end method

.method static synthetic -get7(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic -get8(Lcom/mediatek/datashaping/DataShapingServiceImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/mediatek/datashaping/DataShapingState;)Lcom/mediatek/datashaping/DataShapingState;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;

    return-object p1
.end method

.method static synthetic -set1(Lcom/mediatek/datashaping/DataShapingServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    return-object p1
.end method

.method static synthetic -set3(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic -set4(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;)Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mInputFilter:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;

    return-object p1
.end method

.method static synthetic -set5(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-object p1
.end method

.method static synthetic -set6(Lcom/mediatek/datashaping/DataShapingServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    return p1
.end method

.method static synthetic -set7(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/view/WindowManagerInternal;)Landroid/view/WindowManagerInternal;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->getWakeLock()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->releaseWakeLock()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/mediatek/datashaping/IDataShapingManager$Stub;-><init>()V

    .line 78
    const-string/jumbo v0, "DataShapingService"

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->TAG:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mLock:Ljava/lang/Object;

    .line 491
    new-instance v0, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl$1;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 108
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    .line 111
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/datashaping/DataShapingUtils;->getInstance(Landroid/content/Context;)Lcom/mediatek/datashaping/DataShapingUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    .line 113
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 107
    return-void
.end method

.method private getWakeLock()V
    .locals 4

    .prologue
    .line 471
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "[getWakeLock]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-direct {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->releaseWakeLock()V

    .line 473
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    .line 475
    const-string/jumbo v2, "power"

    .line 474
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 477
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 476
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 479
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 470
    return-void
.end method

.method private releaseWakeLock()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 483
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[releaseWakeLock]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "really release WakeLock"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 487
    iput-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 482
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 534
    invoke-direct {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->releaseWakeLock()V

    .line 535
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->cancelCloseExpiredAlarm()V

    .line 532
    return-void
.end method


# virtual methods
.method public cancelCloseExpiredAlarm()V
    .locals 3

    .prologue
    .line 360
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "[cancelCloseExpiredAlarm]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    .line 363
    const-string/jumbo v2, "alarm"

    .line 362
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 364
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 359
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method public disableDataShaping()V
    .locals 2

    .prologue
    .line 302
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "disableDataShaping"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method public enableDataShaping()V
    .locals 2

    .prologue
    .line 297
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "enableDataShaping"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public openLteDataUpLinkGate(Z)Z
    .locals 7
    .param p1, "isForce"    # Z

    .prologue
    const/4 v6, 0x0

    .line 312
    iget-boolean v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingEnabled:Z

    if-nez v1, :cond_0

    .line 313
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "[openLteDataUpLinkGate] DataShaping is Disabled!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return v6

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "background_power_saving_enable"

    .line 316
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 319
    .local v0, "powerSavingEnabled":Z
    :goto_0
    const-string/jumbo v1, "0"

    const-string/jumbo v2, "persist.alarmgroup.enable"

    const-string/jumbo v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 320
    const/4 v0, 0x0

    .line 321
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "[openLteDataUpLinkGate] persist.alarmgroup.enable is false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mLastAlarmTriggerSuccessTime:J

    sub-long/2addr v2, v4

    .line 329
    const-wide/32 v4, 0x493e0

    .line 328
    cmp-long v1, v2, v4

    if-ltz v1, :cond_5

    .line 330
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    if-eqz v1, :cond_2

    .line 331
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->sendEmptyMessage(I)Z

    .line 333
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mLastAlarmTriggerSuccessTime:J

    .line 334
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "Alarm manager openLteDataUpLinkGate: true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v1, 0x1

    return v1

    .line 316
    .end local v0    # "powerSavingEnabled":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "powerSavingEnabled":Z
    goto :goto_0

    .line 322
    :cond_4
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "persist.alarmgroup.enable"

    const-string/jumbo v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    const/4 v0, 0x1

    .line 324
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "[openLteDataUpLinkGate] persist.alarmgroup.enable is true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 337
    :cond_5
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "Alarm manager openLteDataUpLinkGate: false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return v6

    .line 341
    :cond_6
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "[openLteDataUpLinkGate] powerSaving is Disabled!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return v6
.end method

.method registerListener()Z
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-nez v0, :cond_1

    .line 183
    :cond_0
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "registerListener get WindowManager fail !"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    return v0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    const-string/jumbo v0, "DataShapingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListener registerInput Before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->alreadyHasInputFilter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    if-eqz v0, :cond_4

    .line 196
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v2, "I have registered it"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    const-string/jumbo v0, "DataShapingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListener registerInput After: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 203
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    return v0

    .line 192
    :cond_3
    :try_start_1
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v2, "registerListener!!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mInputFilter:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingInputFilter;

    invoke-virtual {v0, v2}, Landroid/view/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 198
    :cond_4
    :try_start_2
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v2, "Someone registered it !!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "registerReceiver start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl$2;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;)V

    iput-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, "eventsFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v1, "android.intent.action.PS_NETWORK_TYPE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v1, "android.intent.action.LTE_ACCESS_STRATUM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v1, "android.intent.action.SHARED_DEFAULT_APN_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "com.mediatek.datashaping.CLOSE_TIME_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "registerReceiver end"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v2, Lcom/mediatek/datashaping/DataShapingServiceImpl$AppIdleStateChangeListener;

    invoke-direct {v2, p0, v3}, Lcom/mediatek/datashaping/DataShapingServiceImpl$AppIdleStateChangeListener;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Lcom/mediatek/datashaping/DataShapingServiceImpl$AppIdleStateChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 177
    const-string/jumbo v1, "DataShapingService"

    const-string/jumbo v2, "addAppIdleStateChangeListener end"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public setCurrentState(I)V
    .locals 2
    .param p1, "stateType"    # I

    .prologue
    .line 275
    packed-switch p1, :pswitch_data_0

    .line 274
    :goto_0
    return-void

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateOpenLockedState:Lcom/mediatek/datashaping/DataShapingState;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;

    .line 278
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->unregisterListener()V

    .line 279
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[setCurrentState]: set to STATE_OPEN_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateOpenState:Lcom/mediatek/datashaping/DataShapingState;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;

    .line 283
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->unregisterListener()V

    .line 284
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[setCurrentState]: set to STATE_OPEN"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateCloseState:Lcom/mediatek/datashaping/DataShapingState;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mCurrentState:Lcom/mediatek/datashaping/DataShapingState;

    .line 288
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[setCurrentState]: set to STATE_CLOSE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDeviceIdleMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingEnabled:Z

    if-nez v0, :cond_0

    .line 349
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "[setDeviceIdleMode] Data Shaping isn\'t enable."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 352
    :cond_0
    const-string/jumbo v0, "DataShapingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceIdleMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-virtual {v0, p1}, Lcom/mediatek/datashaping/DataShapingUtils;->setDeviceIdleState(Z)V

    .line 354
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mDataShapingHandler:Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/datashaping/DataShapingServiceImpl$DataShapingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 347
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 262
    new-instance v0, Lcom/mediatek/datashaping/GateOpenState;

    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/datashaping/GateOpenState;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateOpenState:Lcom/mediatek/datashaping/DataShapingState;

    .line 263
    new-instance v0, Lcom/mediatek/datashaping/GateOpenLockedState;

    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/datashaping/GateOpenLockedState;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateOpenLockedState:Lcom/mediatek/datashaping/DataShapingState;

    .line 264
    new-instance v0, Lcom/mediatek/datashaping/GateCloseState;

    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/datashaping/GateCloseState;-><init>(Lcom/mediatek/datashaping/DataShapingServiceImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mGateCloseState:Lcom/mediatek/datashaping/DataShapingState;

    .line 265
    invoke-virtual {p0, v3}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->setCurrentState(I)V

    .line 267
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "start check user preference"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    const-string/jumbo v1, "background_power_saving_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 268
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 271
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 261
    return-void
.end method

.method public startCloseExpiredAlarm()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 369
    const-string/jumbo v2, "DataShapingService"

    const-string/jumbo v3, "[startCloseExpiredAlarm] cancel previous alarm"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingServiceImpl;->cancelCloseExpiredAlarm()V

    .line 371
    const-string/jumbo v2, "DataShapingService"

    const-string/jumbo v3, "[startCloseExpiredAlarm] start new alarm"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    .line 373
    const-string/jumbo v3, "alarm"

    .line 372
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 374
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 375
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.mediatek.datashaping.CLOSE_TIME_EXPIRED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mPendingIntent:Landroid/app/PendingIntent;

    .line 379
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    .line 380
    iget-object v4, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mPendingIntent:Landroid/app/PendingIntent;

    .line 378
    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 368
    return-void
.end method

.method unregisterListener()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    if-nez v0, :cond_0

    .line 208
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v1, "unregisterListener get WindowManager fail !"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z

    if-eqz v0, :cond_1

    .line 213
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v2, "unregisterListener registerInput is TRUE , Set myself to null!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mWindowManagerService:Landroid/view/WindowManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingServiceImpl;->mRegisterInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 206
    return-void

    .line 217
    :cond_1
    :try_start_1
    const-string/jumbo v0, "DataShapingService"

    const-string/jumbo v2, "unregisterListener registerInput is False , Not to set to null!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
