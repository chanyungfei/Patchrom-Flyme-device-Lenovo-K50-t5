.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;,
        Lcom/android/server/twilight/TwilightService$LocationHandler;,
        Lcom/android/server/twilight/TwilightService$1;,
        Lcom/android/server/twilight/TwilightService$2;,
        Lcom/android/server/twilight/TwilightService$3;,
        Lcom/android/server/twilight/TwilightService$4;,
        Lcom/android/server/twilight/TwilightService$5;
    }
.end annotation


# static fields
.field private static final ACTION_AUTO_FORCE_STOP:Ljava/lang/String; = "com.android.action.AUTO_FORCE_STOP"

.field private static final ACTION_START_NIGHT_WATCH:Ljava/lang/String; = "com.android.action.START_NIGHT_WATCH"

.field static final ACTION_UPDATE_TWILIGHT_STATE:Ljava/lang/String; = "com.android.server.action.UPDATE_TWILIGHT_STATE"

.field static final DEBUG:Z = false

.field private static final SCHEDULER_ALARM_DURATION:J = 0x1b7740L

.field private static final START_WATCH_HOUR:I = 0x1

.field private static final START_WATCH_MINUTE:I = 0x0

.field private static final STOP_WATCH_HOUR:I = 0x3

.field private static final STOP_WATCH_MINUTE:I = 0x0

.field static final TAG:Ljava/lang/String; = "TwilightService"


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field private final mEmptyLocationListener:Landroid/location/LocationListener;

.field final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

.field private final mLocationListener:Landroid/location/LocationListener;

.field mLocationManager:Landroid/location/LocationManager;

.field final mLock:Ljava/lang/Object;

.field private final mNightWatchReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Lcom/android/server/twilight/TwilightManager;

.field mTwilightState:Lcom/android/server/twilight/TwilightState;

.field private final mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

.field private storeDataConnection:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/twilight/TwilightService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/twilight/TwilightService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 1
    .param p0, "from"    # Landroid/location/Location;
    .param p1, "to"    # Landroid/location/Location;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/twilight/TwilightService;->hasMoved(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/twilight/TwilightService;JII)Z
    .locals 1
    .param p1, "currentTime"    # J
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/twilight/TwilightService;->isTimePassed(JII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/twilight/TwilightService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->autoForceStopProcess()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/twilight/TwilightService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->cancelAlarmStopProcess()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/twilight/TwilightService;J)V
    .locals 1
    .param p1, "timeMillisSeconds"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/twilight/TwilightService;->setAlarmStopProcess(J)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService;->setTwilightState(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/twilight/TwilightService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->stopNightWatch()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/twilight/TwilightService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateAlarmNightWatch()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mService:Lcom/android/server/twilight/TwilightManager;

    .line 444
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 466
    new-instance v0, Lcom/android/server/twilight/TwilightService$3;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$3;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    .line 480
    new-instance v0, Lcom/android/server/twilight/TwilightService$4;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$4;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    .line 603
    new-instance v0, Lcom/android/server/twilight/TwilightService$5;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$5;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mNightWatchReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    return-void
.end method

.method private autoForceStopProcess()V
    .locals 8

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 527
    const-string/jumbo v6, "power"

    .line 526
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 528
    .local v4, "powerManager":Landroid/os/PowerManager;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 529
    :cond_0
    const-string/jumbo v5, "TwilightService"

    const-string/jumbo v6, "Skip ForceStop Process screen on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 533
    const-string/jumbo v6, "audio"

    .line 532
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 534
    .local v1, "audioManager":Landroid/media/AudioManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 535
    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v5

    .line 534
    if-eqz v5, :cond_3

    .line 536
    :cond_2
    const-string/jumbo v5, "TwilightService"

    const-string/jumbo v6, "Skip ForceStop Process music is active"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 539
    :cond_3
    const-string/jumbo v5, "TwilightService"

    const-string/jumbo v6, "ForceStop Process start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string/jumbo v5, "ForceStopProcess"

    const/4 v6, 0x1

    .line 540
    invoke-virtual {v4, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 542
    .local v2, "forceStopWakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 544
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->disconnectNetWork()V

    .line 546
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/memoryclean/MemoryCleanApi;->newInstance(Landroid/content/Context;)Lcom/lenovo/memoryclean/MemoryCleanApi;

    move-result-object v0

    .line 547
    .local v0, "api":Lcom/lenovo/memoryclean/MemoryCleanApi;
    invoke-virtual {v0}, Lcom/lenovo/memoryclean/MemoryCleanApi;->init()V

    .line 551
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 552
    .local v3, "ignoreListSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v5, "com.lenovo.lenovofingerprintsettings"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 553
    const-string/jumbo v5, "com.lenovo.launcher"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 554
    const-string/jumbo v5, "com.lenovo.factorymode"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 555
    const-string/jumbo v5, "com.validation"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 556
    const-string/jumbo v5, "com.lenovo.giftmoney3"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 557
    invoke-virtual {v0, v3}, Lcom/lenovo/memoryclean/MemoryCleanApi;->cleanMemory(Ljava/util/HashSet;)Ljava/util/List;

    .line 560
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 561
    const-string/jumbo v5, "TwilightService"

    const-string/jumbo v6, "ForceStop Process end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method

.method private cancelAlarmStopProcess()V
    .locals 5

    .prologue
    .line 659
    const-string/jumbo v2, "TwilightService"

    const-string/jumbo v3, "cancelAlarmStopProcess"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.action.AUTO_FORCE_STOP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 662
    const/high16 v4, 0x10000000

    .line 661
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 663
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 658
    return-void
.end method

.method private disconnectNetWork()V
    .locals 4

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 508
    const-string/jumbo v3, "wifi"

    .line 507
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 509
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 510
    :cond_0
    const-string/jumbo v2, "TwilightService"

    const-string/jumbo v3, "WifiAP enable not disconnect network"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 514
    const-string/jumbo v3, "phone"

    .line 513
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 515
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_2

    return-void

    .line 516
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    if-nez v2, :cond_3

    .line 517
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    .line 518
    iget-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    if-eqz v2, :cond_3

    .line 519
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->disableDataConnectivity()Z

    .line 520
    const-string/jumbo v2, "TwilightService"

    const-string/jumbo v3, "disableDataConnectivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_3
    return-void
.end method

.method private static hasMoved(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8
    .param p0, "from"    # Landroid/location/Location;
    .param p1, "to"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 175
    if-nez p1, :cond_0

    .line 176
    return v3

    .line 179
    :cond_0
    if-nez p0, :cond_1

    .line 180
    return v2

    .line 184
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 185
    return v3

    .line 189
    :cond_2
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 192
    .local v0, "distance":F
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    add-float v1, v4, v5

    .line 196
    .local v1, "totalAccuracy":F
    cmpl-float v4, v0, v1

    if-ltz v4, :cond_3

    :goto_0
    return v2

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private isTimePassed(JII)Z
    .locals 5
    .param p1, "currentTime"    # J
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .prologue
    .line 566
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 567
    .local v0, "alarmCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 568
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 569
    .local v1, "nowHour":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 570
    .local v2, "nowMinute":I
    if-lt p3, v1, :cond_0

    .line 571
    if-ne p3, v1, :cond_1

    if-gt p4, v2, :cond_1

    .line 572
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 574
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private setAlarmStopProcess(J)V
    .locals 7
    .param p1, "timeMillisSeconds"    # J

    .prologue
    const/4 v5, 0x0

    .line 667
    const-string/jumbo v2, "TwilightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlarmStopProcess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.action.AUTO_FORCE_STOP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 670
    const/high16 v3, 0x10000000

    .line 669
    invoke-static {v2, v5, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 671
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v5, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 666
    return-void
.end method

.method private setTwilightState(Lcom/android/server/twilight/TwilightState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 157
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-static {v2, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 165
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 166
    .local v1, "listenerLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;

    invoke-virtual {v2}, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->postUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "listenerLen":I
    :cond_0
    monitor-exit v3

    .line 156
    return-void

    .line 157
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private startNightWatch()V
    .locals 6

    .prologue
    .line 648
    const-string/jumbo v1, "TwilightService"

    const-string/jumbo v2, "startNightWatch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 650
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string/jumbo v1, "com.android.action.AUTO_FORCE_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mNightWatchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 654
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->cancelAlarmStopProcess()V

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/server/twilight/TwilightService;->setAlarmStopProcess(J)V

    .line 647
    return-void
.end method

.method private stopNightWatch()V
    .locals 3

    .prologue
    .line 635
    const-string/jumbo v1, "TwilightService"

    const-string/jumbo v2, "stopNightWatch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mNightWatchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 637
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    if-eqz v1, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 639
    const-string/jumbo v2, "phone"

    .line 638
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 640
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    return-void

    .line 641
    :cond_0
    const-string/jumbo v1, "TwilightService"

    const-string/jumbo v2, "stopNightWatch enableDataConnectivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    .line 643
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    .line 634
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    return-void
.end method

.method private updateAlarmNightWatch()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 578
    const-string/jumbo v5, "persist.perf.nightwatch"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 579
    return-void

    .line 581
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 582
    .local v0, "alarmCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 583
    .local v2, "currentTime":J
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 584
    invoke-direct {p0, v2, v3, v8, v10}, Lcom/android/server/twilight/TwilightService;->isTimePassed(JII)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 585
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 586
    const/4 v5, 0x3

    invoke-direct {p0, v2, v3, v5, v10}, Lcom/android/server/twilight/TwilightService;->isTimePassed(JII)Z

    move-result v5

    if-nez v5, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startNightWatch()V

    .line 590
    :cond_1
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 591
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 592
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 593
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 595
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 596
    .local v6, "timeMillisSeconds":J
    const-string/jumbo v5, "TwilightService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAlarmNightWatch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.action.START_NIGHT_WATCH"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 599
    const/high16 v8, 0x8000000

    .line 598
    invoke-static {v5, v10, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 600
    .local v4, "sender":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v5, v10, v6, v7, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 577
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 87
    const-string/jumbo v2, "location"

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 88
    new-instance v1, Lcom/android/server/twilight/TwilightService$LocationHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/twilight/TwilightService$LocationHandler;-><init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightService$LocationHandler;)V

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "com.android.action.START_NIGHT_WATCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mService:Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/twilight/TwilightService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateAlarmNightWatch()V

    .line 84
    return-void
.end method
