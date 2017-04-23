.class public Lcom/android/server/location/ComprehensiveCountryDetector;
.super Lcom/android/server/location/CountryDetectorBase;
.source "ComprehensiveCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/ComprehensiveCountryDetector$1;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final LOCATION_REFRESH_INTERVAL:J = 0x5265c00L

.field private static final MAX_LENGTH_DEBUG_LOGS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private mCountServiceStateChanges:I

.field private mCountry:Landroid/location/Country;

.field private mCountryFromLocation:Landroid/location/Country;

.field private final mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/location/Country;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCountryAddedToLogs:Landroid/location/Country;

.field private mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

.field protected mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

.field protected mLocationRefreshTimer:Ljava/util/Timer;

.field private final mObject:Ljava/lang/Object;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mStartTime:J

.field private mStopTime:J

.field private mStopped:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTotalCountServiceStateChanges:I

.field private mTotalTime:J


# direct methods
.method static synthetic -get0(Lcom/android/server/location/ComprehensiveCountryDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/location/ComprehensiveCountryDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/location/ComprehensiveCountryDetector;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;)Landroid/location/Country;
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/location/ComprehensiveCountryDetector;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;
    .locals 1
    .param p1, "notifyChange"    # Z
    .param p2, "startLocationBasedDetection"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/location/ComprehensiveCountryDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/location/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$1;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    .line 150
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 148
    return-void
.end method

.method private addToLogs(Landroid/location/Country;)V
    .locals 2
    .param p1, "country"    # Landroid/location/Country;

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    invoke-virtual {v0, p1}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 201
    return-void

    .line 203
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 206
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 210
    :cond_2
    const-string/jumbo v0, "CountryDetector"

    invoke-virtual {p1}, Landroid/location/Country;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 192
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized cancelLocationRefresh()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 433
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private detectCountry(ZZ)Landroid/location/Country;
    .locals 3
    .param p1, "notifyChange"    # Z
    .param p2, "startLocationBasedDetection"    # Z

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getCountry()Landroid/location/Country;

    move-result-object v0

    .line 277
    .local v0, "country":Landroid/location/Country;
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/location/Country;

    iget-object v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    invoke-direct {v1, v2}, Landroid/location/Country;-><init>(Landroid/location/Country;)V

    :goto_0
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V

    .line 279
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    .line 280
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    return-object v1

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    goto :goto_0
.end method

.method private getCountry()Landroid/location/Country;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "result":Landroid/location/Country;
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getNetworkBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 176
    .local v0, "result":Landroid/location/Country;
    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getLastKnownLocationBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 179
    :cond_0
    if-nez v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getSimBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 182
    :cond_1
    if-nez v0, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getLocaleCountry()Landroid/location/Country;

    move-result-object v0

    .line 185
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->addToLogs(Landroid/location/Country;)V

    .line 186
    return-object v0
.end method

.method private isNetworkCountryCodeAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 218
    iget-object v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 219
    .local v0, "phoneType":I
    const-string/jumbo v2, "CountryDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    phonetype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V
    .locals 3
    .param p1, "country"    # Landroid/location/Country;
    .param p2, "detectedCountry"    # Landroid/location/Country;

    .prologue
    .line 399
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_0

    .line 400
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const-string/jumbo v0, "CountryDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->notifyListener(Landroid/location/Country;)V

    goto :goto_0
.end method

.method private declared-synchronized scheduleLocationRefresh()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 414
    :cond_0
    :try_start_1
    const-string/jumbo v0, "CountryDetector"

    const-string/jumbo v1, "start periodic location refresh timer. Interval: 86400000"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    .line 418
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/location/ComprehensiveCountryDetector$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$3;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    .line 427
    const-wide/32 v2, 0x5265c00

    .line 418
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 411
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startLocationBasedDetector(Landroid/location/CountryListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/CountryListener;

    .prologue
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 364
    return-void

    .line 367
    :cond_0
    :try_start_1
    const-string/jumbo v0, "CountryDetector"

    const-string/jumbo v1, "starts LocationBasedDetector to detect Country code via Location info (e.g. GPS)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->createLocationBasedCountryDetector()Lcom/android/server/location/CountryDetectorBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    .line 371
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0, p1}, Lcom/android/server/location/CountryDetectorBase;->setCountryListener(Landroid/location/CountryListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->detectCountry()Landroid/location/Country;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 362
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopLocationBasedDetector()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 377
    :try_start_0
    const-string/jumbo v0, "CountryDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tries to stop LocationBasedDetector (current detector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    iget-object v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    const-string/jumbo v2, ")"

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->stop()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 375
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized addPhoneStateListener()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$4;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 456
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 440
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createLocationBasedCountryDetector()Lcom/android/server/location/CountryDetectorBase;
    .locals 2

    .prologue
    .line 387
    new-instance v0, Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/LocationBasedCountryDetector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public detectCountry()Landroid/location/Country;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getLastKnownLocationBasedCountry()Landroid/location/Country;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-object v0
.end method

.method protected getLocaleCountry()Landroid/location/Country;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 261
    .local v0, "defaultLocale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    .line 262
    new-instance v1, Landroid/location/Country;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 264
    :cond_0
    return-object v1
.end method

.method protected getNetworkBasedCountry()Landroid/location/Country;
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "countryIso":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    new-instance v1, Landroid/location/Country;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 234
    .end local v0    # "countryIso":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getSimBasedCountry()Landroid/location/Country;
    .locals 3

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "countryIso":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Landroid/location/Country;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 253
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected isAirplaneModeOff()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 392
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    .line 391
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isGeoCoderImplemented()Z
    .locals 1

    .prologue
    .line 468
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized removePhoneStateListener()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 460
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method runAfterDetection(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .locals 5
    .param p1, "country"    # Landroid/location/Country;
    .param p2, "detectedCountry"    # Landroid/location/Country;
    .param p3, "notifyChange"    # Z
    .param p4, "startLocationBasedDetection"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 319
    if-eqz p3, :cond_0

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V

    .line 323
    :cond_0
    const-string/jumbo v1, "CountryDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startLocationBasedDetection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    const-string/jumbo v3, " detectCountry="

    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    if-nez p2, :cond_4

    .line 323
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    const-string/jumbo v2, " isAirplaneModeOff()="

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isAirplaneModeOff()Z

    move-result v2

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    const-string/jumbo v2, " mListener="

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    iget-object v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 329
    const-string/jumbo v2, " isGeoCoderImplemnted()="

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isGeoCoderImplemented()Z

    move-result v2

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz p4, :cond_2

    if-eqz p2, :cond_1

    .line 333
    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isAirplaneModeOff()Z

    move-result v0

    .line 332
    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isGeoCoderImplemented()Z

    move-result v0

    .line 332
    if-eqz v0, :cond_2

    .line 335
    const-string/jumbo v0, "CountryDetector"

    const-string/jumbo v1, "run startLocationBasedDetector()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    invoke-direct {p0, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->startLocationBasedDetector(Landroid/location/CountryListener;)V

    .line 343
    :cond_2
    if-eqz p2, :cond_3

    .line 344
    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v0

    if-lt v0, v4, :cond_5

    .line 350
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->scheduleLocationRefresh()V

    .line 318
    :goto_1
    return-void

    .line 325
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(source: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    const-string/jumbo v3, ", countryISO: "

    .line 325
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    invoke-virtual {p2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    const-string/jumbo v3, ")"

    .line 325
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 354
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 355
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    goto :goto_1
.end method

.method protected runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .locals 7
    .param p1, "country"    # Landroid/location/Country;
    .param p2, "detectedCountry"    # Landroid/location/Country;
    .param p3, "notifyChange"    # Z
    .param p4, "startLocationBasedDetection"    # Z

    .prologue
    .line 288
    iget-object v6, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/ComprehensiveCountryDetector$2;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;Landroid/location/Country;ZZ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    return-void
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/location/CountryListener;

    .prologue
    const/4 v4, 0x0

    .line 299
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    .line 300
    .local v0, "prevListener":Landroid/location/CountryListener;
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    .line 301
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-nez v1, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->removePhoneStateListener()V

    .line 304
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 305
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    .line 307
    iget-wide v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    iget-wide v4, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->addPhoneStateListener()V

    .line 310
    const/4 v1, 0x1

    invoke-direct {p0, v4, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    .line 312
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    .line 313
    iput v4, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 162
    const-string/jumbo v0, "CountryDetector"

    const-string/jumbo v1, "Stop the detector."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->removePhoneStateListener()V

    .line 165
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    .line 160
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 474
    .local v4, "currentTime":J
    const-wide/16 v2, 0x0

    .line 475
    .local v2, "currentSessionLength":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "ComprehensiveCountryDetector{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget-wide v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 479
    iget-wide v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    sub-long v2, v4, v8

    .line 480
    const-string/jumbo v7, "timeRunning="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :goto_0
    const-string/jumbo v7, "totalCountServiceStateChanges="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string/jumbo v7, "currentCountServiceStateChanges="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string/jumbo v7, "totalTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    add-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string/jumbo v7, "currentTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string/jumbo v7, "countries="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v7, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "country$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Country;

    .line 491
    .local v0, "country":Landroid/location/Country;
    const-string/jumbo v7, "\n   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/location/Country;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 483
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "country$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v7, "lastRunTimeLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    iget-wide v10, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 493
    .restart local v1    # "country$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
