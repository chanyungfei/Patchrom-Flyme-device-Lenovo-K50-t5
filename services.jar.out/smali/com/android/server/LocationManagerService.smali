.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$Receiver;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$LocationWorkerHandler;,
        Lcom/android/server/LocationManagerService$1;
    }
.end annotation


# static fields
.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final ACCESS_MOCK_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MOCK_LOCATION"

.field private static final CHECK_PROVIDER_TIMER:I = 0x1388

.field public static final D:Z = true

.field private static final DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

.field private static final FUSED_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final INSTALL_LOCATION_PROVIDER:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_PROVIDER"

.field private static final MAX_PROVIDER_SCHEDULING_JITTER_MS:I = 0x64

.field private static final MSG_LOCATION_CHANGED:I = 0x1

.field private static final NANOS_PER_MILLI:J = 0xf4240L

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x1

.field private static final RESOLUTION_LEVEL_FINE:I = 0x2

.field private static final RESOLUTION_LEVEL_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LocationManagerService"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentUserProfiles:[I

.field private final mDisabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeofenceManager:Lcom/android/server/location/GeofenceManager;

.field private mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field private mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

.field private mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

.field private mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private final mLastLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocationCoarseInterval:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationFudger:Lcom/android/server/location/LocationFudger;

.field private mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mMockProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/MockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPassiveProvider:Lcom/android/server/location/PassiveProvider;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProviderCheckAlarm:Z

.field private mProviderCheckTimeoutIntent:Landroid/app/PendingIntent;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxyProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/LocationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/LocationManagerService;II)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/LocationManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->triggerProviderCheck()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;
    .locals 1
    .param p1, "resolutionLevel"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->applyAllProviderRequirementsLocked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->locationIPOcreateProvider()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->locationIPOremoveProvider()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/LocationManagerService;Z)V
    .locals 0
    .param p1, "bindGmsPackage"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->reBindNetworkProviderLock(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->removeProviderCheck()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0
    .param p1, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 170
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 190
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    .line 193
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 196
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    .line 200
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 208
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 207
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    .line 212
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 211
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 216
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 215
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 218
    new-instance v1, Lcom/android/server/location/LocationRequestStatistics;

    invoke-direct {v1}, Lcom/android/server/location/LocationRequestStatistics;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    .line 221
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    .line 226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 225
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    .line 233
    iput v2, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 234
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    .line 237
    iput-boolean v2, p0, Lcom/android/server/LocationManagerService;->mProviderCheckAlarm:Z

    .line 2652
    new-instance v1, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 245
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 246
    const-string/jumbo v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 251
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 250
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 253
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/LocationManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 261
    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v2, "Constructed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method private addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/location/LocationProviderInterface;

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    return-void
.end method

.method private addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .prologue
    const/4 v2, 0x0

    .line 2745
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2746
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2748
    :cond_0
    new-instance v0, Lcom/android/server/location/MockProvider;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;Lcom/android/internal/location/ProviderProperties;)V

    .line 2749
    .local v0, "provider":Lcom/android/server/location/MockProvider;
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2750
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2751
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2752
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2744
    return-void
.end method

.method private applyAllProviderRequirementsLocked()V
    .locals 3

    .prologue
    .line 1977
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1979
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1983
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_0

    .line 1976
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_1
    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .locals 14
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1595
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 1596
    .local v1, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v1, :cond_0

    return-void

    .line 1598
    :cond_0
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1599
    .local v5, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v8, Landroid/os/WorkSource;

    invoke-direct {v8}, Landroid/os/WorkSource;-><init>()V

    .line 1600
    .local v8, "worksource":Landroid/os/WorkSource;
    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 1602
    .local v2, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    if-eqz v5, :cond_5

    .line 1603
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "record$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1604
    .local v3, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1606
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    .line 1607
    iget-object v10, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    .line 1608
    iget-object v11, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v11, v11, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    .line 1609
    iget-object v12, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 1605
    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1610
    iget-object v0, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1611
    .local v0, "locationRequest":Landroid/location/LocationRequest;
    iget-object v9, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1612
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    iget-wide v12, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v9, v10, v12

    if-gez v9, :cond_1

    .line 1613
    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 1614
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto :goto_0

    .line 1620
    .end local v0    # "locationRequest":Landroid/location/LocationRequest;
    .end local v3    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_2
    iget-boolean v9, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v9, :cond_5

    .line 1626
    iget-wide v10, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x2

    div-long v6, v10, v12

    .line 1627
    .local v6, "thresholdInterval":J
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1628
    .restart local v3    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1629
    iget-object v0, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1630
    .restart local v0    # "locationRequest":Landroid/location/LocationRequest;
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    cmp-long v9, v10, v6

    if-gtz v9, :cond_3

    .line 1631
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v9, :cond_4

    .line 1632
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v9}, Landroid/os/WorkSource;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 1633
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1636
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v8, v9}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_1

    .line 1640
    :cond_4
    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    .line 1641
    iget-object v10, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    .line 1639
    invoke-virtual {v8, v9, v10}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    goto :goto_1

    .line 1649
    .end local v0    # "locationRequest":Landroid/location/LocationRequest;
    .end local v3    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v4    # "record$iterator":Ljava/util/Iterator;
    .end local v6    # "thresholdInterval":J
    :cond_5
    const-string/jumbo v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "provider request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-interface {v1, v2, v8}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 1594
    return-void
.end method

.method private canCallerAccessMockLocation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "opPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2713
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3a

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private checkCallerIsProvider()V
    .locals 2

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2360
    return-void

    .line 2370
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2371
    return-void

    .line 2374
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "need INSTALL_LOCATION_PROVIDER permission, or UID of a currently bound location provider"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkDeviceStatsAllowed()V
    .locals 3

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1360
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    .line 1359
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    return-void
.end method

.method private checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 7
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "hideFromAppOps"    # Z

    .prologue
    .line 1807
    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 1808
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "need either listener or intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1809
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1810
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cannot register both listener and intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1811
    :cond_1
    if-eqz p2, :cond_2

    .line 1812
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 1813
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 1815
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    return-object v0
.end method

.method private checkPackageName(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1785
    if-nez p1, :cond_0

    .line 1786
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1788
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1789
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1790
    .local v0, "packages":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1791
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1793
    :cond_1
    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 1794
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 1793
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1796
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1800
    if-nez p1, :cond_0

    .line 1801
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1799
    :cond_0
    return-void
.end method

.method private checkResolutionLevelIsSufficientForGeofenceUse(I)V
    .locals 2
    .param p1, "allowedResolutionLevel"    # I

    .prologue
    .line 1290
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 1291
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Geofence usage requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
    :cond_0
    return-void
.end method

.method private checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V
    .locals 4
    .param p1, "allowedResolutionLevel"    # I
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 1338
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    move-result v0

    .line 1339
    .local v0, "requiredResolutionLevel":I
    if-ge p1, v0, :cond_0

    .line 1340
    packed-switch v0, :pswitch_data_0

    .line 1348
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Insufficient permission for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1349
    const-string/jumbo v3, "\" location provider."

    .line 1348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1342
    :pswitch_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" location provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1343
    const-string/jumbo v3, "requires ACCESS_FINE_LOCATION permission."

    .line 1342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1345
    :pswitch_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" location provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1346
    const-string/jumbo v3, "requires ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission."

    .line 1345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1337
    :cond_0
    return-void

    .line 1340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkUpdateAppOpsAllowed()V
    .locals 3

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1365
    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v2, 0x0

    .line 1364
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    return-void
.end method

.method private createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;
    .locals 6
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "resolutionLevel"    # I

    .prologue
    const-wide/32 v4, 0x927c0

    .line 1759
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    .line 1760
    .local v0, "sanitizedRequest":Landroid/location/LocationRequest;
    const/4 v1, 0x2

    if-ge p2, v1, :cond_1

    .line 1761
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1770
    :goto_0
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1771
    invoke-virtual {v0, v4, v5}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 1773
    :cond_0
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 1774
    invoke-virtual {v0, v4, v5}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 1778
    :cond_1
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 1779
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 1781
    :cond_2
    return-object v0

    .line 1763
    :sswitch_0
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_0

    .line 1766
    :sswitch_1
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_0

    .line 1761
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xcb -> :sswitch_1
    .end sparse-switch
.end method

.method private doesUidHavePackage(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2382
    if-nez p2, :cond_0

    .line 2383
    return v3

    .line 2385
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2386
    .local v1, "packageNames":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2387
    return v3

    .line 2389
    :cond_1
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v0, v1, v2

    .line 2390
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2391
    const/4 v2, 0x1

    return v2

    .line 2389
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2394
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method private ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 451
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 452
    .local v8, "systemPackageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    .line 455
    .local v7, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    iget v11, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    const/16 v12, 0x80

    .line 454
    invoke-virtual {v3, v10, v12, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 457
    .local v6, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "rInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 458
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 464
    .local v2, "packageName":Ljava/lang/String;
    const/16 v10, 0x40

    :try_start_0
    invoke-virtual {v3, v2, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 465
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v10, v7}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 466
    const-string/jumbo v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " resolves service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "com.android.location.service.FusedLocationProvider"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 467
    const-string/jumbo v12, ", but has wrong signature, ignoring"

    .line 466
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "missing package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 476
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v10, :cond_1

    .line 477
    const-string/jumbo v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found fused provider without metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 481
    :cond_1
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 482
    const-string/jumbo v11, "serviceVersion"

    const/4 v12, -0x1

    .line 481
    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 483
    .local v9, "version":I
    if-nez v9, :cond_4

    .line 487
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_2

    .line 488
    const-string/jumbo v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Fallback candidate not in /system: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 494
    :cond_2
    invoke-virtual {v3, v8, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3

    .line 496
    const-string/jumbo v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Fallback candidate not signed the same as system: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 502
    :cond_3
    const-string/jumbo v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found fallback provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void

    .line 505
    :cond_4
    const-string/jumbo v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Fallback candidate not version 0: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 508
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "version":I
    :cond_5
    return-void
.end method

.method private getAllowedResolutionLevel(II)I
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1264
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 1266
    const/4 v0, 0x2

    return v0

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 1269
    const/4 v0, 0x1

    return v0

    .line 1271
    :cond_1
    return v2
.end method

.method private getCallerAllowedResolutionLevel()I
    .locals 2

    .prologue
    .line 1281
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method private getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 1302
    const-string/jumbo v2, "gps"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1303
    const-string/jumbo v2, "passive"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1302
    if-eqz v2, :cond_1

    .line 1305
    :cond_0
    return v3

    .line 1306
    :cond_1
    const-string/jumbo v2, "network"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1307
    const-string/jumbo v2, "fused"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1306
    if-eqz v2, :cond_3

    .line 1309
    :cond_2
    return v4

    .line 1312
    :cond_3
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1313
    .local v0, "lp":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v0, :cond_6

    .line 1314
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    .line 1315
    .local v1, "properties":Lcom/android/internal/location/ProviderProperties;
    if-eqz v1, :cond_6

    .line 1316
    iget-boolean v2, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    if-eqz v2, :cond_4

    .line 1318
    return v3

    .line 1319
    :cond_4
    iget-boolean v2, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    if-nez v2, :cond_5

    iget-boolean v2, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    if-eqz v2, :cond_6

    .line 1321
    :cond_5
    return v4

    .line 1326
    .end local v1    # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_6
    return v3
.end method

.method private getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 9
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "hideFromAppOps"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1741
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1742
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    .line 1743
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    .end local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    .line 1745
    .restart local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    :cond_0
    return-object v0
.end method

.method private getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 11
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "hideFromAppOps"    # Z

    .prologue
    .line 1723
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1724
    .local v9, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1725
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    .line 1726
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    .end local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    .line 1729
    .restart local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1734
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    :cond_0
    return-object v0

    .line 1730
    :catch_0
    move-exception v10

    .line 1731
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v2, "linkToDeath failed:"

    invoke-static {v1, v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1732
    const/4 v1, 0x0

    return-object v1
.end method

.method private getResolutionPermission(I)Ljava/lang/String;
    .locals 1
    .param p1, "resolutionLevel"    # I

    .prologue
    .line 1246
    packed-switch p1, :pswitch_data_0

    .line 1252
    const/4 v0, 0x0

    return-object v0

    .line 1248
    :pswitch_0
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    return-object v0

    .line 1250
    :pswitch_1
    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0

    .line 1246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleLocationChanged(Landroid/location/Location;Z)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    .prologue
    .line 2631
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2632
    .local v0, "myLocation":Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 2637
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isMockProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2638
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    .line 2641
    :cond_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2642
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2643
    if-nez p2, :cond_1

    .line 2645
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V

    .line 2647
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    .line 2628
    return-void

    .line 2641
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Z)V
    .locals 38
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    .prologue
    .line 2450
    const-string/jumbo v34, "LocationManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "incoming location: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 2453
    .local v18, "now":J
    if-eqz p2, :cond_0

    const-string/jumbo v21, "passive"

    .line 2456
    .local v21, "provider":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/location/LocationProviderInterface;

    .line 2457
    .local v20, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v20, :cond_1

    return-void

    .line 2453
    .end local v20    # "p":Lcom/android/server/location/LocationProviderInterface;
    .end local v21    # "provider":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "provider":Ljava/lang/String;
    goto :goto_0

    .line 2460
    .restart local v20    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_1
    const-string/jumbo v34, "noGPSLocation"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v16

    .line 2461
    .local v16, "noGPSLocation":Landroid/location/Location;
    const/4 v13, 0x0

    .line 2462
    .local v13, "lastNoGPSLocation":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/Location;

    .line 2463
    .local v11, "lastLocation":Landroid/location/Location;
    if-nez v11, :cond_6

    .line 2464
    new-instance v11, Landroid/location/Location;

    .end local v11    # "lastLocation":Landroid/location/Location;
    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2465
    .restart local v11    # "lastLocation":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    .end local v13    # "lastNoGPSLocation":Landroid/location/Location;
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/Location;

    .line 2478
    .local v12, "lastLocationCoarseInterval":Landroid/location/Location;
    if-nez v12, :cond_3

    .line 2479
    new-instance v12, Landroid/location/Location;

    .end local v12    # "lastLocationCoarseInterval":Landroid/location/Location;
    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2480
    .restart local v12    # "lastLocationCoarseInterval":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2482
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v34

    .line 2483
    invoke-virtual {v12}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v36

    .line 2482
    sub-long v32, v34, v36

    .line 2484
    .local v32, "timeDiffNanos":J
    const-wide v34, 0x8bb2c97000L

    cmp-long v34, v32, v34

    if-lez v34, :cond_4

    .line 2485
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 2491
    :cond_4
    const-string/jumbo v34, "noGPSLocation"

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v16

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayList;

    .line 2495
    .local v30, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v30, :cond_5

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-nez v34, :cond_7

    :cond_5
    return-void

    .line 2467
    .end local v12    # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v30    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v32    # "timeDiffNanos":J
    .restart local v13    # "lastNoGPSLocation":Landroid/location/Location;
    :cond_6
    const-string/jumbo v34, "noGPSLocation"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v13

    .line 2468
    .local v13, "lastNoGPSLocation":Landroid/location/Location;
    if-nez v16, :cond_2

    if-eqz v13, :cond_2

    .line 2471
    const-string/jumbo v34, "noGPSLocation"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v13}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    goto :goto_1

    .line 2498
    .end local v13    # "lastNoGPSLocation":Landroid/location/Location;
    .restart local v12    # "lastLocationCoarseInterval":Landroid/location/Location;
    .restart local v30    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v32    # "timeDiffNanos":J
    :cond_7
    const/4 v6, 0x0

    .line 2499
    .local v6, "coarseLocation":Landroid/location/Location;
    if-eqz v16, :cond_8

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v6

    .line 2504
    .end local v6    # "coarseLocation":Landroid/location/Location;
    :cond_8
    invoke-interface/range {v20 .. v20}, Lcom/android/server/location/LocationProviderInterface;->getStatusUpdateTime()J

    move-result-wide v14

    .line 2507
    .local v14, "newStatusUpdateTime":J
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2508
    .local v9, "extras":Landroid/os/Bundle;
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v31

    .line 2510
    .local v31, "status":I
    const/4 v7, 0x0

    .line 2511
    .local v7, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    const/4 v8, 0x0

    .line 2514
    .local v8, "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .end local v7    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v8    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v25, "r$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_19

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2515
    .local v24, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v26, v0

    .line 2516
    .local v26, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/16 v28, 0x0

    .line 2518
    .local v28, "receiverDead":Z
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    .line 2519
    .local v29, "receiverUserId":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v34

    if-nez v34, :cond_a

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 2528
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    move-object/from16 v34, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 2529
    const-string/jumbo v34, "LocationManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "skipping loc update for blacklisted app: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2530
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 2529
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2521
    :cond_b
    const-string/jumbo v34, "LocationManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "skipping loc update for background user "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2522
    const-string/jumbo v36, " (current user: "

    .line 2521
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2522
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    move/from16 v36, v0

    .line 2521
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2522
    const-string/jumbo v36, ", app: "

    .line 2521
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2523
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 2521
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2523
    const-string/jumbo v36, ")"

    .line 2521
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2534
    :cond_c
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    move/from16 v34, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    move/from16 v35, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 2535
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    move/from16 v37, v0

    .line 2534
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v34

    if-nez v34, :cond_d

    .line 2536
    const-string/jumbo v34, "LocationManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "skipping loc update for no op app: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 2537
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 2536
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2541
    :cond_d
    const/16 v17, 0x0

    .line 2542
    .local v17, "notifyLocation":Landroid/location/Location;
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    move/from16 v34, v0

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_17

    .line 2543
    move-object/from16 v17, v6

    .line 2547
    .local v17, "notifyLocation":Landroid/location/Location;
    :goto_3
    if-eqz v17, :cond_10

    .line 2548
    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2549
    .local v10, "lastLoc":Landroid/location/Location;
    if-eqz v10, :cond_e

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-wide/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v3}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z

    move-result v34

    if-eqz v34, :cond_10

    .line 2550
    :cond_e
    if-nez v10, :cond_18

    .line 2551
    new-instance v10, Landroid/location/Location;

    .end local v10    # "lastLoc":Landroid/location/Location;
    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2552
    .restart local v10    # "lastLoc":Landroid/location/Location;
    move-object/from16 v0, v24

    iput-object v10, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2556
    :goto_4
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v34

    if-nez v34, :cond_f

    .line 2557
    const-string/jumbo v34, "LocationManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "RemoteException calling onLocationChanged on "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    const/16 v28, 0x1

    .line 2560
    :cond_f
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    .line 2564
    .end local v10    # "lastLoc":Landroid/location/Location;
    :cond_10
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    move-wide/from16 v22, v0

    .line 2565
    .local v22, "prevStatusUpdateTime":J
    cmp-long v34, v14, v22

    if-lez v34, :cond_12

    .line 2566
    const-wide/16 v34, 0x0

    cmp-long v34, v22, v34

    if-nez v34, :cond_11

    const/16 v34, 0x2

    move/from16 v0, v31

    move/from16 v1, v34

    if-eq v0, v1, :cond_12

    .line 2568
    :cond_11
    move-object/from16 v0, v24

    iput-wide v14, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 2569
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v34

    if-nez v34, :cond_12

    .line 2570
    const/16 v28, 0x1

    .line 2571
    const-string/jumbo v34, "LocationManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "RemoteException calling onStatusChanged on "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_12
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v34

    if-lez v34, :cond_13

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v34

    cmp-long v34, v34, v18

    if-gez v34, :cond_15

    .line 2577
    :cond_13
    if-nez v8, :cond_14

    .line 2578
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2580
    :cond_14
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    :cond_15
    if-eqz v28, :cond_9

    .line 2584
    if-nez v7, :cond_16

    .line 2585
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2587
    :cond_16
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_9

    .line 2588
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2545
    .end local v22    # "prevStatusUpdateTime":J
    .local v17, "notifyLocation":Landroid/location/Location;
    :cond_17
    move-object/from16 v17, v11

    .local v17, "notifyLocation":Landroid/location/Location;
    goto/16 :goto_3

    .line 2554
    .restart local v10    # "lastLoc":Landroid/location/Location;
    :cond_18
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto/16 :goto_4

    .line 2594
    .end local v10    # "lastLoc":Landroid/location/Location;
    .end local v17    # "notifyLocation":Landroid/location/Location;
    .end local v24    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v28    # "receiverDead":Z
    .end local v29    # "receiverUserId":I
    :cond_19
    if-eqz v7, :cond_1a

    .line 2595
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "receiver$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1a

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/LocationManagerService$Receiver;

    .line 2596
    .restart local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    goto :goto_5

    .line 2599
    .end local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v27    # "receiver$iterator":Ljava/util/Iterator;
    :cond_1a
    if-eqz v8, :cond_1c

    .line 2600
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1b

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2601
    .restart local v24    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    const/16 v34, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    goto :goto_6

    .line 2603
    .end local v24    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2449
    :cond_1c
    return-void
.end method

.method private isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1211
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1212
    const/4 v1, 0x1

    return v1

    .line 1214
    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1215
    const/4 v1, 0x0

    return v1

    .line 1218
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1220
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1233
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1236
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1234
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isCurrentProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 439
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 440
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    aget v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 442
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 440
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isMockProvider(Ljava/lang/String;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 2623
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2624
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2623
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isUidALocationProvider(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 2345
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_0

    .line 2346
    return v3

    .line 2348
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v2, :cond_1

    .line 2349
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    invoke-virtual {v2}, Lcom/android/server/location/GeocoderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/LocationManagerService;->doesUidHavePackage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 2351
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "proxy$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    .line 2352
    .local v0, "proxy":Lcom/android/server/location/LocationProviderProxy;
    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/LocationManagerService;->doesUidHavePackage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    .line 2354
    .end local v0    # "proxy":Lcom/android/server/location/LocationProviderProxy;
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private loadProvidersLocked()V
    .locals 29

    .prologue
    .line 520
    new-instance v19, Lcom/android/server/location/PassiveProvider;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/location/ILocationManager;)V

    .line 521
    .local v19, "passiveProvider":Lcom/android/server/location/PassiveProvider;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/location/PassiveProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    .line 525
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    new-instance v16, Lcom/android/server/location/GpsLocationProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 527
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V

    .line 529
    .local v16, "gpsProvider":Lcom/android/server/location/GpsLocationProvider;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/GpsLocationProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 530
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/GpsLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 531
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v4, "gps"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/GpsLocationProvider;->getGpsMeasurementsProvider()Lcom/android/server/location/GpsMeasurementsProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    .line 534
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/GpsLocationProvider;->getGpsNavigationMessageProvider()Lcom/android/server/location/GpsNavigationMessageProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    .line 535
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/GpsLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 549
    .end local v16    # "gpsProvider":Lcom/android/server/location/GpsLocationProvider;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 550
    .local v24, "resources":Landroid/content/res/Resources;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v22, "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v3, 0x1070029

    .line 551
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 553
    .local v20, "pkgs":[Ljava/lang/String;
    const-string/jumbo v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "certificates for location providers pulled from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 554
    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 553
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    if-eqz v20, :cond_1

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 557
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 562
    const-string/jumbo v3, "network"

    .line 563
    const-string/jumbo v4, "com.android.location.service.v3.NetworkLocationProvider"

    .line 567
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 564
    const v5, 0x1120049

    .line 565
    const v6, 0x1040024

    .line 566
    const v7, 0x1070029

    .line 560
    invoke-static/range {v2 .. v8}, Lcom/android/server/location/LocationProviderProxy;->createAndDelayBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v18

    .line 570
    .local v18, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    if-nez v18, :cond_2

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 573
    const-string/jumbo v3, "network"

    .line 574
    const-string/jumbo v4, "com.android.location.service.v3.NetworkLocationProvider"

    .line 578
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 575
    const v5, 0x1120049

    .line 576
    const v6, 0x1040024

    .line 577
    const v7, 0x8040004

    .line 571
    invoke-static/range {v2 .. v8}, Lcom/android/server/location/LocationProviderProxy;->createAndDelayBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v18

    .line 580
    :cond_2
    if-eqz v18, :cond_7

    .line 581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v4, "network"

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 590
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 591
    const-string/jumbo v3, "fused"

    .line 592
    const-string/jumbo v4, "com.android.location.service.FusedLocationProvider"

    .line 596
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 593
    const v5, 0x112004a

    .line 594
    const v6, 0x1040025

    .line 595
    const v7, 0x1070029

    .line 589
    invoke-static/range {v2 .. v8}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v14

    .line 597
    .local v14, "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v14, :cond_8

    .line 598
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual {v14}, Lcom/android/server/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v4, "fused"

    invoke-virtual {v3, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 609
    const v5, 0x112004c

    .line 610
    const v6, 0x1040027

    .line 611
    const v7, 0x1070029

    .line 608
    invoke-static {v3, v5, v6, v7, v4}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v3, :cond_3

    .line 614
    const-string/jumbo v3, "LocationManagerService"

    const-string/jumbo v4, "no geocoder provider found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_3
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/location/FlpHardwareProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;

    move-result-object v12

    .line 624
    .local v12, "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 626
    invoke-virtual {v12}, Lcom/android/server/location/FlpHardwareProvider;->getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;

    move-result-object v4

    .line 627
    const v5, 0x112004b

    .line 628
    const v6, 0x1040026

    .line 629
    const v7, 0x1070029

    .line 623
    invoke-static/range {v2 .. v7}, Lcom/android/server/location/FusedProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)Lcom/android/server/location/FusedProxy;

    move-result-object v15

    .line 630
    .local v15, "fusedProxy":Lcom/android/server/location/FusedProxy;
    if-nez v15, :cond_4

    .line 631
    const-string/jumbo v3, "LocationManagerService"

    const-string/jumbo v4, "Unable to bind FusedProxy."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v12    # "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    .end local v15    # "fusedProxy":Lcom/android/server/location/FusedProxy;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 643
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 644
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 645
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;

    move-result-object v8

    .line 640
    :goto_3
    const v3, 0x112004d

    .line 641
    const v4, 0x1040028

    .line 642
    const v5, 0x1070029

    .line 639
    invoke-static/range {v2 .. v8}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    move-result-object v21

    .line 646
    .local v21, "provider":Lcom/android/server/location/GeofenceProxy;
    if-nez v21, :cond_5

    .line 647
    const-string/jumbo v3, "LocationManagerService"

    const-string/jumbo v4, "Unable to bind FLP Geofence proxy."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_5
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 655
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/hardware/location/ActivityRecognitionHardware;->getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v4

    .line 656
    const v5, 0x112004e

    .line 657
    const v6, 0x1040029

    .line 658
    const v7, 0x1070029

    .line 652
    invoke-static/range {v2 .. v7}, Lcom/android/server/location/ActivityRecognitionProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;

    move-result-object v23

    .line 660
    .local v23, "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    if-nez v23, :cond_6

    .line 661
    const-string/jumbo v3, "LocationManagerService"

    const-string/jumbo v4, "Unable to bind ActivityRecognitionProxy."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .end local v23    # "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    :cond_6
    :goto_4
    const v3, 0x107002a

    .line 667
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    .line 669
    .local v26, "testProviderStrings":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v27, v3

    :goto_5
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    aget-object v25, v26, v27

    .line 670
    .local v25, "testProviderString":Ljava/lang/String;
    const-string/jumbo v3, ","

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 671
    .local v13, "fragments":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v13, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 672
    .local v17, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 673
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Provider \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" already exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 585
    .end local v13    # "fragments":[Ljava/lang/String;
    .end local v14    # "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    .end local v17    # "name":Ljava/lang/String;
    .end local v21    # "provider":Lcom/android/server/location/GeofenceProxy;
    .end local v25    # "testProviderString":Ljava/lang/String;
    .end local v26    # "testProviderStrings":[Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "LocationManagerService"

    const-string/jumbo v4, "no network location provider found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 603
    .restart local v14    # "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    :cond_8
    const-string/jumbo v3, "LocationManagerService"

    const-string/jumbo v4, "no fused location provider found"

    .line 604
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Location service needs a fused location provider"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-static {v3, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 634
    :cond_9
    const/4 v12, 0x0

    .line 635
    .local v12, "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    const-string/jumbo v3, "LocationManagerService"

    const-string/jumbo v4, "FLP HAL not supported"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 645
    .end local v12    # "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 664
    .restart local v21    # "provider":Lcom/android/server/location/GeofenceProxy;
    :cond_b
    const-string/jumbo v3, "LocationManagerService"

    const-string/jumbo v4, "Hardware Activity-Recognition not supported."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 675
    .restart local v13    # "fragments":[Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v25    # "testProviderString":Ljava/lang/String;
    .restart local v26    # "testProviderStrings":[Ljava/lang/String;
    :cond_c
    new-instance v2, Lcom/android/internal/location/ProviderProperties;

    .line 676
    const/4 v3, 0x1

    aget-object v3, v13, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 677
    const/4 v4, 0x2

    aget-object v4, v13, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 678
    const/4 v5, 0x3

    aget-object v5, v13, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 679
    const/4 v6, 0x4

    aget-object v6, v13, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 680
    const/4 v7, 0x5

    aget-object v7, v13, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 681
    const/4 v8, 0x6

    aget-object v8, v13, v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 682
    const/4 v9, 0x7

    aget-object v9, v13, v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 683
    const/16 v10, 0x8

    aget-object v10, v13, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 684
    const/16 v11, 0x9

    aget-object v11, v13, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 675
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 685
    .local v2, "properties":Lcom/android/internal/location/ProviderProperties;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/LocationManagerService;->addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    .line 669
    add-int/lit8 v3, v27, 0x1

    move/from16 v27, v3

    goto/16 :goto_5

    .line 518
    .end local v2    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v13    # "fragments":[Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v25    # "testProviderString":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method private locationIPOcreateProvider()V
    .locals 12

    .prologue
    .line 719
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "IPO powerup for location"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 732
    .local v11, "resources":Landroid/content/res/Resources;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v10, "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v0, 0x1070029

    .line 733
    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 735
    .local v9, "pkgs":[Ljava/lang/String;
    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "certificates for location providers pulled from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-eqz v9, :cond_0

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 739
    :cond_0
    invoke-direct {p0, v10}, Lcom/android/server/LocationManagerService;->ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V

    .line 743
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 744
    const-string/jumbo v1, "network"

    .line 745
    const-string/jumbo v2, "com.android.location.service.v3.NetworkLocationProvider"

    .line 749
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 746
    const v3, 0x1120049

    .line 747
    const v4, 0x1040024

    .line 748
    const v5, 0x1070029

    .line 742
    invoke-static/range {v0 .. v6}, Lcom/android/server/location/LocationProviderProxy;->createAndDelayBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v8

    .line 752
    .local v8, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    if-nez v8, :cond_1

    .line 754
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 755
    const-string/jumbo v1, "network"

    .line 756
    const-string/jumbo v2, "com.android.location.service.v3.NetworkLocationProvider"

    .line 760
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 757
    const v3, 0x1120049

    .line 758
    const v4, 0x1040024

    .line 759
    const v5, 0x8040004

    .line 753
    invoke-static/range {v0 .. v6}, Lcom/android/server/location/LocationProviderProxy;->createAndDelayBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v8

    .line 762
    :cond_1
    if-eqz v8, :cond_3

    .line 763
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    invoke-direct {p0, v8}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 771
    :goto_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 772
    const-string/jumbo v1, "fused"

    .line 773
    const-string/jumbo v2, "com.android.location.service.FusedLocationProvider"

    .line 777
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 774
    const v3, 0x112004a

    .line 775
    const v4, 0x1040025

    .line 776
    const v5, 0x1070029

    .line 770
    invoke-static/range {v0 .. v6}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v7

    .line 778
    .local v7, "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v7, :cond_4

    .line 779
    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 780
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual {v7}, Lcom/android/server/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 782
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v1, "fused"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    :goto_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 793
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 790
    const v2, 0x112004c

    .line 791
    const v3, 0x1040027

    .line 792
    const v4, 0x1070029

    .line 789
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 794
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v0, :cond_2

    .line 795
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "no geocoder provider found"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_2
    return-void

    .line 767
    .end local v7    # "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    :cond_3
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "no network location provider found"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 784
    .restart local v7    # "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    :cond_4
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "no fused location provider found"

    .line 785
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Location service needs a fused location provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 784
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private locationIPOremoveProvider()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 691
    const-string/jumbo v3, "LocationManagerService"

    const-string/jumbo v4, "IPO shutdown for location"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v4, "network"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 693
    .local v2, "realProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 694
    check-cast v1, Lcom/android/server/location/LocationProviderProxy;

    .line 695
    .local v1, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v1}, Lcom/android/server/location/LocationProviderProxy;->close(Lcom/android/server/location/LocationProviderProxy;)V

    .line 696
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v4, "network"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 698
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 699
    const/4 v2, 0x0

    .line 702
    .end local v1    # "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    .end local v2    # "realProvider":Lcom/android/server/location/LocationProviderInterface;
    :cond_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v4, "fused"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 703
    .restart local v2    # "realProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 704
    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    .line 705
    .local v0, "fusedProvider":Lcom/android/server/location/LocationProviderProxy;
    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->close(Lcom/android/server/location/LocationProviderProxy;)V

    .line 706
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v4, "fused"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 708
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 709
    const/4 v2, 0x0

    .line 712
    .end local v0    # "fusedProvider":Lcom/android/server/location/LocationProviderProxy;
    .end local v2    # "realProvider":Lcom/android/server/location/LocationProviderInterface;
    :cond_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v3, :cond_2

    .line 713
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    invoke-virtual {v3}, Lcom/android/server/location/GeocoderProxy;->unbind()V

    .line 714
    iput-object v5, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 690
    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 2898
    const-string/jumbo v0, "LocationManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2899
    const-string/jumbo v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    :cond_0
    return-void
.end method

.method private pickBest(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1501
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "gps"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    const-string/jumbo v0, "gps"

    return-object v0

    .line 1503
    :cond_0
    const-string/jumbo v0, "network"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1504
    const-string/jumbo v0, "network"

    return-object v0

    .line 1506
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private reBindNetworkProviderLock(Z)V
    .locals 9
    .param p1, "bindGmsPackage"    # Z

    .prologue
    .line 2990
    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reBindNetworkProviderLock bindGmsPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/location/LocationProviderProxy;

    .line 2994
    .local v8, "previousNlp":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v8, :cond_1

    .line 2995
    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "binded NLP package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    const/4 v5, 0x0

    .line 3003
    .local v5, "locationProviderPackageNamesId":I
    if-eqz p1, :cond_2

    .line 3005
    const v5, 0x1070029

    .line 3013
    :goto_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 3014
    const-string/jumbo v1, "network"

    .line 3015
    const-string/jumbo v2, "com.android.location.service.v3.NetworkLocationProvider"

    .line 3019
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 3016
    const v3, 0x1120049

    .line 3017
    const v4, 0x1040024

    .line 3012
    invoke-static/range {v0 .. v6}, Lcom/android/server/location/LocationProviderProxy;->createAndDelayBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v7

    .line 3021
    .local v7, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v7, :cond_3

    .line 3022
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Successfully bind new package"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    if-eqz v8, :cond_0

    .line 3026
    invoke-static {v8}, Lcom/android/server/location/LocationProviderProxy;->close(Lcom/android/server/location/LocationProviderProxy;)V

    .line 3027
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3028
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3029
    invoke-direct {p0, v8}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 3032
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3033
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3034
    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 3035
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2989
    :goto_1
    return-void

    .line 2997
    .end local v5    # "locationProviderPackageNamesId":I
    .end local v7    # "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    :cond_1
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "currently there is no NLP provided."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    return-void

    .line 3008
    .restart local v5    # "locationProviderPackageNamesId":I
    :cond_2
    const v5, 0x8040004

    .line 3007
    goto :goto_0

    .line 3037
    .restart local v7    # "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    :cond_3
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Failed to bind specified package service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removeProviderCheck()V
    .locals 3

    .prologue
    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService;->mProviderCheckAlarm:Z

    .line 811
    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeProviderCheck : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/LocationManagerService;->mProviderCheckAlarm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviderCheckTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 809
    return-void
.end method

.method private removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/location/LocationProviderInterface;

    .prologue
    .line 1197
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 1198
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1199
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 10
    .param p1, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;

    .prologue
    const/4 v9, 0x0

    .line 1941
    const-string/jumbo v6, "LocationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remove "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1944
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v6

    invoke-interface {v6}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v6, p1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1945
    monitor-enter p1

    .line 1946
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 1950
    :cond_0
    invoke-virtual {p1, v9}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1953
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1954
    .local v3, "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 1955
    .local v0, "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v0, :cond_2

    .line 1957
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1959
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    invoke-virtual {v4, v9}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    goto :goto_0

    .line 1945
    .end local v0    # "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v3    # "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v5    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit p1

    throw v6

    .line 1962
    .restart local v0    # "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v3    # "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "record$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1966
    .end local v5    # "record$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "provider$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1968
    .local v1, "provider":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1972
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_1

    .line 1940
    .end local v1    # "provider":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V
    .locals 9
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1882
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 1883
    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 1884
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1885
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "provider name must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1888
    :cond_1
    const-string/jumbo v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1889
    const-string/jumbo v7, " "

    .line 1888
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1889
    const-string/jumbo v7, " "

    .line 1888
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1889
    const-string/jumbo v7, " from "

    .line 1888
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1889
    const-string/jumbo v7, "("

    .line 1888
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1889
    const-string/jumbo v7, ")"

    .line 1888
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 1891
    .local v3, "provider":Lcom/android/server/location/LocationProviderInterface;
    if-nez v3, :cond_2

    .line 1892
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "provider doesn\'t exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1895
    :cond_2
    new-instance v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1896
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v5, p2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1897
    .local v2, "oldRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v2, :cond_3

    .line 1898
    invoke-virtual {v2, v8}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    .line 1901
    :cond_3
    invoke-direct {p0, v1, p4}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    move-result v0

    .line 1902
    .local v0, "isProviderEnabled":Z
    if-eqz v0, :cond_4

    .line 1903
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 1910
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1879
    return-void

    .line 1906
    :cond_4
    invoke-virtual {p2, v1, v8}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public static resolutionLevelToOp(I)I
    .locals 2
    .param p0, "allowedResolutionLevel"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1369
    if-eqz p0, :cond_1

    .line 1370
    if-ne p0, v1, :cond_0

    .line 1371
    return v0

    .line 1373
    :cond_0
    return v1

    .line 1376
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z
    .locals 11
    .param p0, "loc"    # Landroid/location/Location;
    .param p1, "lastLoc"    # Landroid/location/Location;
    .param p2, "record"    # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p3, "now"    # J

    .prologue
    .line 2416
    if-nez p1, :cond_0

    .line 2417
    const/4 v6, 0x1

    return v6

    .line 2421
    :cond_0
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v4

    .line 2422
    .local v4, "minTime":J
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 2423
    const-wide/32 v8, 0xf4240

    .line 2422
    div-long v0, v6, v8

    .line 2424
    .local v0, "delta":J
    const-wide/16 v6, 0x64

    sub-long v6, v4, v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    .line 2425
    const/4 v6, 0x0

    return v6

    .line 2429
    :cond_1
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v6

    float-to-double v2, v6

    .line 2430
    .local v2, "minDistance":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_2

    .line 2431
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v6

    float-to-double v6, v6

    cmpg-double v6, v6, v2

    if-gtz v6, :cond_2

    .line 2432
    const/4 v6, 0x0

    return v6

    .line 2437
    :cond_2
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v6

    if-gtz v6, :cond_3

    .line 2438
    const/4 v6, 0x0

    return v6

    .line 2442
    :cond_3
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v6

    cmp-long v6, v6, p3

    if-gez v6, :cond_4

    .line 2443
    const/4 v6, 0x0

    return v6

    .line 2446
    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method private switchUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 821
    iget v2, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    if-ne v2, p1, :cond_0

    .line 822
    return-void

    .line 824
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationBlacklist;->switchUser(I)V

    .line 825
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(I)V

    .line 826
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 827
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 828
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 829
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 830
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 826
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 832
    .restart local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 833
    invoke-virtual {p0, p1}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    .line 834
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 820
    return-void
.end method

.method private triggerProviderCheck()V
    .locals 6

    .prologue
    .line 802
    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerProviderCheck before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/LocationManagerService;->mProviderCheckAlarm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to:true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService;->mProviderCheckAlarm:Z

    .line 804
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviderCheckTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 805
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 806
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviderCheckTimeoutIntent:Landroid/app/PendingIntent;

    .line 805
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 801
    return-void
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1553
    const/4 v3, 0x0

    .line 1555
    .local v3, "listeners":I
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 1556
    .local v4, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v4, :cond_0

    return-void

    .line 1558
    :cond_0
    const/4 v1, 0x0

    .line 1560
    .local v1, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1561
    .local v6, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_4

    .line 1562
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1563
    .local v0, "N":I
    const/4 v2, 0x0

    .end local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 1564
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1565
    .local v5, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1567
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1568
    if-nez v1, :cond_1

    .line 1569
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1571
    :cond_1
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 1563
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1578
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v5    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_4
    if-eqz v1, :cond_5

    .line 1579
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_5

    .line 1580
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1579
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1584
    .end local v2    # "i":I
    :cond_5
    if-eqz p2, :cond_7

    .line 1585
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    .line 1586
    if-lez v3, :cond_6

    .line 1587
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 1552
    :cond_6
    :goto_2
    return-void

    .line 1590
    :cond_7
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    goto :goto_2
.end method

.method private updateProvidersLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1524
    const/4 v0, 0x0

    .line 1525
    .local v0, "changesMade":Z
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1526
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 1527
    .local v4, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v2

    .line 1528
    .local v2, "isEnabled":Z
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1529
    .local v3, "name":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v5

    .line 1530
    .local v5, "shouldBeEnabled":Z
    if-eqz v2, :cond_0

    if-eqz v5, :cond_2

    .line 1538
    :cond_0
    if-nez v2, :cond_1

    if-eqz v5, :cond_1

    .line 1539
    const/4 v6, 0x1

    invoke-direct {p0, v3, v6}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1540
    const/4 v0, 0x1

    .line 1542
    :cond_1
    :goto_1
    const-string/jumbo v6, "LocationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateProvidersLocked provider:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " changesMade: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isEnabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " shouldBeEnabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1531
    :cond_2
    invoke-direct {p0, v3, v9}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1535
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1536
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1537
    const/4 v0, 0x1

    .line 1530
    goto :goto_1

    .line 1544
    .end local v2    # "isEnabled":Z
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "p":Lcom/android/server/location/LocationProviderInterface;
    .end local v5    # "shouldBeEnabled":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 1545
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1546
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1545
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1547
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.location.MODE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1548
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1547
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1523
    :cond_4
    return-void
.end method


# virtual methods
.method public addGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;Ljava/lang/String;)Z
    .locals 7
    .param p1, "listener"    # Landroid/location/IGpsMeasurementsListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2177
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 2180
    .local v0, "allowedResolutionLevel":I
    const-string/jumbo v6, "gps"

    .line 2178
    invoke-direct {p0, v0, v6}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2182
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2183
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2184
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2187
    .local v2, "identity":J
    :try_start_0
    invoke-virtual {p0, v4, v5, p2, v0}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2189
    .local v1, "hasLocationAccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2192
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    if-nez v6, :cond_1

    .line 2193
    :cond_0
    const/4 v6, 0x0

    return v6

    .line 2188
    .end local v1    # "hasLocationAccess":Z
    :catchall_0
    move-exception v6

    .line 2189
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2188
    throw v6

    .line 2195
    .restart local v1    # "hasLocationAccess":Z
    :cond_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v6, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->addListener(Landroid/os/IInterface;)Z

    move-result v6

    return v6
.end method

.method public addGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;Ljava/lang/String;)Z
    .locals 7
    .param p1, "listener"    # Landroid/location/IGpsNavigationMessageListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2209
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 2212
    .local v0, "allowedResolutionLevel":I
    const-string/jumbo v6, "gps"

    .line 2210
    invoke-direct {p0, v0, v6}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2214
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2215
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2216
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2219
    .local v2, "identity":J
    :try_start_0
    invoke-virtual {p0, v4, v5, p2, v0}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2221
    .local v1, "hasLocationAccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2224
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    if-nez v6, :cond_1

    .line 2225
    :cond_0
    const/4 v6, 0x0

    return v6

    .line 2220
    .end local v1    # "hasLocationAccess":Z
    :catchall_0
    move-exception v6

    .line 2221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2220
    throw v6

    .line 2227
    .restart local v1    # "hasLocationAccess":Z
    :cond_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v6, p1}, Lcom/android/server/location/GpsNavigationMessageProvider;->addListener(Landroid/os/IInterface;)Z

    move-result v6

    return v6
.end method

.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z
    .locals 9
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 2134
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 2136
    .local v0, "allowedResolutionLevel":I
    const-string/jumbo v6, "gps"

    .line 2135
    invoke-direct {p0, v0, v6}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2138
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2139
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2140
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2142
    .local v2, "ident":J
    :try_start_0
    invoke-virtual {p0, v4, v5, p2, v0}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 2146
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2143
    return v8

    .line 2146
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2149
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    if-nez v6, :cond_1

    .line 2150
    return v8

    .line 2145
    :catchall_0
    move-exception v6

    .line 2146
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2145
    throw v6

    .line 2154
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v6, p1}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2159
    const/4 v6, 0x1

    return v6

    .line 2155
    :catch_0
    move-exception v1

    .line 2156
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "LocationManagerService"

    const-string/jumbo v7, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2157
    return v8
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2719
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2720
    return-void

    .line 2723
    :cond_0
    const-string/jumbo v3, "passive"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2724
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Cannot mock the passive location provider"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2727
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2728
    .local v0, "identity":J
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2730
    :try_start_0
    const-string/jumbo v3, "gps"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2731
    const-string/jumbo v3, "network"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2730
    if-nez v3, :cond_2

    .line 2732
    const-string/jumbo v3, "fused"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2730
    if-eqz v3, :cond_3

    .line 2733
    :cond_2
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 2734
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_3

    .line 2735
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2738
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    .line 2739
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 2741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2718
    return-void

    .line 2728
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method checkLocationAccess(IILjava/lang/String;I)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"    # I

    .prologue
    const/4 v2, 0x0

    .line 1396
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    .line 1397
    .local v0, "op":I
    if-ltz v0, :cond_0

    .line 1398
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1399
    return v2

    .line 1403
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v1

    if-ge v1, p4, :cond_1

    .line 1404
    return v2

    .line 1407
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2849
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2850
    return-void

    .line 2853
    :cond_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2854
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2855
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_1

    .line 2856
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2853
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2858
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2859
    .local v0, "identity":J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2860
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2861
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2862
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 2848
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2808
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2809
    return-void

    .line 2812
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2813
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2814
    .local v0, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_1

    .line 2815
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2812
    .end local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2817
    .restart local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearLocation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 2807
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2884
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2885
    return-void

    .line 2888
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2889
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2890
    .local v0, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_1

    .line 2891
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2888
    .end local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2893
    .restart local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 2883
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "android.permission.DUMP"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_0

    .line 2907
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Permission Denial: can\'t dump LocationManagerService from from pid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 2908
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    .line 2907
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 2909
    const-string/jumbo v23, ", uid="

    .line 2907
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 2909
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 2907
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2910
    return-void

    .line 2913
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 2914
    :try_start_0
    const-string/jumbo v22, "Current Location Manager state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2915
    const-string/jumbo v22, "  Location Listeners:"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "receiver$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/LocationManagerService$Receiver;

    .line 2917
    .local v17, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2913
    .end local v17    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v18    # "receiver$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    .line 2919
    .restart local v18    # "receiver$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string/jumbo v22, "  Active Records by Provider:"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2921
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, ":"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2922
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "record$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2923
    .local v19, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "      "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2926
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    .end local v19    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v20    # "record$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v22, "  Historical Records by Provider:"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    .line 2927
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2929
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    .line 2930
    .local v11, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 2931
    .local v21, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v11, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, ": "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v11, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->providerName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, ": "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2933
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    .end local v11    # "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    .end local v21    # "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    :cond_4
    const-string/jumbo v22, "  Last Known Locations:"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2935
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2936
    .local v14, "provider":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/Location;

    .line 2937
    .local v12, "location":Landroid/location/Location;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, ": "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2940
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v12    # "location":Landroid/location/Location;
    .end local v14    # "provider":Ljava/lang/String;
    :cond_5
    const-string/jumbo v22, "  Last Known Locations Coarse Intervals:"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2942
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2943
    .restart local v14    # "provider":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/Location;

    .line 2944
    .restart local v12    # "location":Landroid/location/Location;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, ": "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 2947
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v12    # "location":Landroid/location/Location;
    .end local v14    # "provider":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/location/GeofenceManager;->dump(Ljava/io/PrintWriter;)V

    .line 2949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    if-lez v22, :cond_7

    .line 2950
    const-string/jumbo v22, "  Enabled Providers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2952
    .local v8, "i":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 2956
    .end local v8    # "i":Ljava/lang/String;
    .end local v10    # "i$iterator":Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    if-lez v22, :cond_8

    .line 2957
    const-string/jumbo v22, "  Disabled Providers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2959
    .restart local v8    # "i":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2962
    .end local v8    # "i":Ljava/lang/String;
    .end local v10    # "i$iterator":Ljava/util/Iterator;
    :cond_8
    const-string/jumbo v22, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationBlacklist;->dump(Ljava/io/PrintWriter;)V

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    if-lez v22, :cond_9

    .line 2965
    const-string/jumbo v22, "  Mock Providers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2967
    .local v9, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/location/MockProvider;

    const-string/jumbo v24, "      "

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_7

    .line 2971
    .end local v9    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    .end local v10    # "i$iterator":Ljava/util/Iterator;
    :cond_9
    const-string/jumbo v22, "  fudger: "

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/LocationFudger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2974
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_a

    const-string/jumbo v22, "short"

    const/16 v24, 0x0

    aget-object v24, p3, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v22

    if-eqz v22, :cond_a

    monitor-exit v23

    .line 2975
    return-void

    .line 2977
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "provider$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/LocationProviderInterface;

    .line 2978
    .local v13, "provider":Lcom/android/server/location/LocationProviderInterface;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, " Internal State"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2979
    instance-of v0, v13, Lcom/android/server/location/LocationProviderProxy;

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 2980
    move-object v0, v13

    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    move-object/from16 v16, v0

    .line 2981
    .local v16, "proxy":Lcom/android/server/location/LocationProviderProxy;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, " ("

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, ")"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2983
    .end local v16    # "proxy":Lcom/android/server/location/LocationProviderProxy;
    :cond_b
    const-string/jumbo v22, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2984
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lcom/android/server/location/LocationProviderInterface;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_8

    .end local v13    # "provider":Lcom/android/server/location/LocationProviderInterface;
    :cond_c
    monitor-exit v23

    .line 2904
    return-void
.end method

.method public geocoderIsPresent()Z
    .locals 1

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1418
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1419
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1420
    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "provider$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 1421
    .local v2, "provider":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1422
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v4, "fused"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1425
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1418
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "provider":Lcom/android/server/location/LocationProviderInterface;
    .end local v3    # "provider$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "provider$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    .line 1429
    const-string/jumbo v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAllProviders()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    return-object v1
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 6
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1481
    const/4 v1, 0x0

    .line 1483
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 1484
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1485
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->pickBest(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1486
    .local v1, "result":Ljava/lang/String;
    const-string/jumbo v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBestProvider("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    return-object v1

    .line 1489
    .local v1, "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v5, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 1490
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1491
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->pickBest(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1492
    .local v1, "result":Ljava/lang/String;
    const-string/jumbo v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBestProvider("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    return-object v1

    .line 1496
    .local v1, "result":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBestProvider("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    return-object v5
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2688
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 2689
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2692
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2702
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 2703
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2707
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .locals 12
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1989
    const-string/jumbo v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getLastLocation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 1991
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 1992
    .local v0, "allowedResolutionLevel":I
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 1994
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v9

    .line 1993
    invoke-direct {p0, v0, v9}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 1999
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2000
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2001
    const/4 v11, 0x0

    .line 1998
    invoke-static {p2, v9, v10, v11}, Lcom/lenovo/common/SecurityManagerUtils;->checkAppPcPermission(Ljava/lang/String;III)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2002
    const/4 v9, 0x0

    return-object v9

    .line 2007
    :cond_1
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2008
    const-string/jumbo v9, "sub-permission.ACCESS_LOCATION"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {v9, v10}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2009
    const-string/jumbo v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moms denied getLastLocation pkg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    const/4 v9, 0x0

    return-object v9

    .line 2015
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2016
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2017
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2019
    .local v2, "identity":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v9, p2}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2020
    const-string/jumbo v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not returning last loc for blacklisted app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2022
    const/4 v9, 0x0

    .line 2063
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2022
    return-object v9

    .line 2025
    :cond_3
    :try_start_1
    invoke-virtual {p0, v6, v8, p2, v0}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 2026
    const-string/jumbo v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not returning last loc for no op app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2028
    const/4 v9, 0x0

    .line 2063
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2028
    return-object v9

    .line 2031
    :cond_4
    :try_start_2
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2034
    :try_start_3
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    .line 2035
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_5

    const-string/jumbo v4, "fused"

    .line 2036
    :cond_5
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/location/LocationProviderInterface;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2037
    .local v7, "provider":Lcom/android/server/location/LocationProviderInterface;
    if-nez v7, :cond_6

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v9, 0x0

    .line 2063
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2037
    return-object v9

    .line 2039
    :cond_6
    :try_start_5
    invoke-direct {p0, v4, v8}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v9

    if-nez v9, :cond_7

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v9, 0x0

    .line 2063
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2039
    return-object v9

    .line 2042
    :cond_7
    const/4 v9, 0x2

    if-ge v0, v9, :cond_8

    .line 2045
    :try_start_7
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2049
    .local v1, "location":Landroid/location/Location;
    :goto_0
    if-nez v1, :cond_9

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2050
    const/4 v9, 0x0

    .line 2063
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2050
    return-object v9

    .line 2047
    .end local v1    # "location":Landroid/location/Location;
    :cond_8
    :try_start_9
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .restart local v1    # "location":Landroid/location/Location;
    goto :goto_0

    .line 2052
    :cond_9
    const/4 v9, 0x2

    if-ge v0, v9, :cond_a

    .line 2053
    const-string/jumbo v9, "noGPSLocation"

    invoke-virtual {v1, v9}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 2054
    .local v5, "noGPSLocation":Landroid/location/Location;
    if-eqz v5, :cond_b

    .line 2055
    new-instance v9, Landroid/location/Location;

    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v11, v5}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2063
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2055
    return-object v9

    .line 2058
    .end local v5    # "noGPSLocation":Landroid/location/Location;
    :cond_a
    :try_start_b
    new-instance v9, Landroid/location/Location;

    invoke-direct {v9, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2063
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2058
    return-object v9

    .restart local v5    # "noGPSLocation":Landroid/location/Location;
    :cond_b
    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 2061
    const/4 v9, 0x0

    .line 2063
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2061
    return-object v9

    .line 2031
    .end local v1    # "location":Landroid/location/Location;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "noGPSLocation":Landroid/location/Location;
    .end local v7    # "provider":Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v9

    :try_start_e
    monitor-exit v10

    throw v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2062
    :catchall_1
    move-exception v9

    .line 2063
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2062
    throw v9
.end method

.method public getNetworkProviderPackage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2305
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2306
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v3, "network"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v2

    .line 2307
    return-object v4

    .line 2309
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v3, "network"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    monitor-exit v2

    .line 2312
    instance-of v1, v0, Lcom/android/server/location/LocationProviderProxy;

    if-eqz v1, :cond_1

    .line 2313
    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2305
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2315
    .restart local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_1
    return-object v4
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2281
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2282
    return-object v3

    .line 2285
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2289
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2290
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    monitor-exit v2

    .line 2293
    if-nez v0, :cond_1

    return-object v3

    .line 2289
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2294
    .restart local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_1
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    return-object v1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 11
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1440
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 1442
    .local v0, "allowedResolutionLevel":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1443
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1445
    .local v2, "identity":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1446
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1447
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "provider$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/LocationProviderInterface;

    .line 1448
    .local v5, "provider":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v5}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v8, "fused"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1452
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    move-result v8

    if-lt v0, v8, :cond_0

    .line 1453
    if-eqz p2, :cond_1

    invoke-direct {p0, v1, v7}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1456
    :cond_1
    if-eqz p1, :cond_2

    .line 1457
    invoke-interface {v5}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v8

    .line 1456
    invoke-static {v1, v8, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1460
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1445
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "provider":Lcom/android/server/location/LocationProviderInterface;
    .end local v6    # "provider$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1464
    :catchall_1
    move-exception v8

    .line 1465
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1464
    throw v8

    .restart local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "provider$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1465
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1468
    const-string/jumbo v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getProviders()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    return-object v4
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2322
    const-string/jumbo v4, "fused"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v6

    .line 2324
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2325
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2327
    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2328
    :try_start_1
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2329
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v2, :cond_1

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2334
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2329
    return v6

    .line 2331
    :cond_1
    :try_start_3
    invoke-direct {p0, p1, v3}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2334
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2331
    return v4

    .line 2327
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v5

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2333
    :catchall_1
    move-exception v4

    .line 2334
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2333
    throw v4
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/location/ILocationListener;

    .prologue
    .line 1177
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1178
    :try_start_0
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1179
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    .line 1180
    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v1, :cond_0

    .line 1181
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1183
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1184
    .local v2, "identity":J
    invoke-static {v1}, Lcom/android/server/LocationManagerService$Receiver;->-wrap0(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1185
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "identity":J
    :cond_0
    monitor-exit v5

    .line 1172
    return-void

    .line 1181
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v1

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1177
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "criteria"    # Landroid/location/Criteria;

    .prologue
    .line 1512
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1513
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    .line 1514
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1518
    :cond_0
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v3

    .line 1517
    invoke-static {v2, v3, p2}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v1

    .line 1519
    .local v1, "result":Z
    const-string/jumbo v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "providerMeetsCriteria("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    return v1
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .param p1, "geofence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2117
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 2118
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2120
    const-string/jumbo v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeGeofence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2125
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2116
    return-void

    .line 2126
    :catchall_0
    move-exception v2

    .line 2127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2126
    throw v2
.end method

.method public removeGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGpsMeasurementsListener;

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    if-eqz v0, :cond_0

    .line 2201
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->removeListener(Landroid/os/IInterface;)V

    .line 2199
    :cond_0
    return-void
.end method

.method public removeGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGpsNavigationMessageListener;

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsNavigationMessageProvider;->removeListener(Landroid/os/IInterface;)V

    .line 2231
    :cond_0
    return-void
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;

    .prologue
    .line 2164
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2166
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v1, p1}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 2163
    return-void

    .line 2167
    :catch_0
    move-exception v0

    .line 2168
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v3, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2164
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2757
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2758
    return-void

    .line 2761
    :cond_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2765
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2770
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_1

    .line 2771
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Provider \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\" unknown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2761
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2773
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2774
    .local v0, "identity":J
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2777
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 2778
    .local v3, "realProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v3, :cond_2

    .line 2779
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2781
    :cond_2
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2782
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2783
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2784
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 2756
    return-void
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 12
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1916
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 1918
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1919
    .local v3, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1921
    .local v4, "uid":I
    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1922
    const/4 v6, 0x0

    .line 1923
    .local v6, "workSource":Landroid/os/WorkSource;
    const/4 v7, 0x0

    .local v7, "hideFromAppOps":Z
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1924
    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/android/server/LocationManagerService;->checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v10

    .line 1928
    .local v10, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 1931
    .local v8, "identity":J
    if-eqz v10, :cond_0

    .line 1932
    :try_start_1
    invoke-direct {p0, v10}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1935
    :cond_0
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v11

    .line 1915
    return-void

    .line 1934
    :catchall_0
    move-exception v0

    .line 1935
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1934
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1921
    .end local v8    # "identity":J
    .end local v10    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_1
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public reportLocation(Landroid/location/Location;Z)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2399
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkCallerIsProvider()V

    .line 2401
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2402
    const-string/jumbo v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dropping incomplete location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    return-void

    .line 2406
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2407
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2408
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2409
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2398
    return-void

    .line 2408
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method reportLocationAccessNoThrow(IILjava/lang/String;I)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"    # I

    .prologue
    const/4 v2, 0x0

    .line 1381
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    .line 1382
    .local v0, "op":I
    if-ltz v0, :cond_0

    .line 1383
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1384
    return v2

    .line 1388
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v1

    if-ge v1, p4, :cond_1

    .line 1389
    return v2

    .line 1392
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 10
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "geofence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2070
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2071
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v4

    .line 2072
    .local v4, "allowedResolutionLevel":I
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForGeofenceUse(I)V

    .line 2073
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 2074
    invoke-direct {p0, p4}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 2075
    invoke-direct {p0, v4, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2077
    invoke-direct {p0, p1, v4}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;

    move-result-object v1

    .line 2079
    .local v1, "sanitizedRequest":Landroid/location/LocationRequest;
    const-string/jumbo v0, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestGeofence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2084
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2082
    invoke-static {p4, v0, v2, v6}, Lcom/lenovo/common/SecurityManagerUtils;->checkAppPcPermission(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2086
    return-void

    .line 2091
    :cond_1
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2092
    const-string/jumbo v0, "sub-permission.ACCESS_LOCATION"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2093
    const-string/jumbo v0, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moms denied requestGeofence pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    return-void

    .line 2100
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2101
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 2103
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v2, "proximity alerts are currently available only to the primary user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    return-void

    .line 2106
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2108
    .local v8, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/GeofenceManager;->addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2111
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2069
    return-void

    .line 2110
    :catchall_0
    move-exception v0

    .line 2111
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2110
    throw v0
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 15
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1822
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 1823
    :cond_0
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 1824
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v10

    .line 1826
    .local v10, "allowedResolutionLevel":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 1825
    invoke-direct {p0, v10, v2}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 1827
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v8

    .line 1828
    .local v8, "workSource":Landroid/os/WorkSource;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1829
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkDeviceStatsAllowed()V

    .line 1831
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    move-result v9

    .line 1832
    .local v9, "hideFromAppOps":Z
    if-eqz v9, :cond_2

    .line 1833
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkUpdateAppOpsAllowed()V

    .line 1835
    :cond_2
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;

    move-result-object v11

    .line 1837
    .local v11, "sanitizedRequest":Landroid/location/LocationRequest;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1838
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1842
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1843
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1844
    const/4 v7, 0x0

    .line 1841
    move-object/from16 v0, p4

    invoke-static {v0, v2, v3, v7}, Lcom/lenovo/common/SecurityManagerUtils;->checkAppPcPermission(Ljava/lang/String;III)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1845
    return-void

    .line 1850
    :cond_3
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1851
    const-string/jumbo v2, "sub-permission.ACCESS_LOCATION"

    invoke-static {v2, v6}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1852
    const-string/jumbo v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "moms denied requestLocationUpdates pkg:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " uid:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    return-void

    .line 1859
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1863
    .local v12, "identity":J
    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {p0, v5, v6, v0, v10}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    .line 1865
    iget-object v14, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    .line 1866
    :try_start_1
    invoke-direct/range {v2 .. v9}, Lcom/android/server/LocationManagerService;->checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v4

    .line 1869
    .local v4, "recevier":Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v4, :cond_5

    move-object v2, p0

    move-object v3, v11

    move-object/from16 v7, p4

    .line 1870
    invoke-direct/range {v2 .. v7}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1874
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1821
    return-void

    .line 1865
    .end local v4    # "recevier":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v14

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1873
    :catchall_1
    move-exception v2

    .line 1874
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1873
    throw v2
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 2239
    if-nez p1, :cond_0

    .line 2241
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2243
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2247
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 2249
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2252
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2253
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2254
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_2

    monitor-exit v2

    return v3

    .line 2256
    :cond_2
    :try_start_1
    invoke-interface {v0, p2, p3}, Lcom/android/server/location/LocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 2252
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public sendNiResponse(II)Z
    .locals 3
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .prologue
    .line 2262
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2263
    new-instance v1, Ljava/lang/SecurityException;

    .line 2264
    const-string/jumbo v2, "calling sendNiResponse from outside of the system is not allowed"

    .line 2263
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2267
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v1, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2268
    :catch_0
    move-exception v0

    .line 2269
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    const/4 v1, 0x0

    return v1
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2823
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2824
    return-void

    .line 2827
    :cond_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2828
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2829
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_1

    .line 2830
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2827
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2832
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2833
    .local v0, "identity":J
    if-eqz p2, :cond_2

    .line 2834
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->enable()V

    .line 2835
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2836
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2842
    :goto_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2843
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 2822
    return-void

    .line 2838
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->disable()V

    .line 2839
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2840
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/location/Location;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2790
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2791
    return-void

    .line 2794
    :cond_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2795
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2796
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_1

    .line 2797
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2794
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2800
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2801
    .local v0, "identity":J
    invoke-virtual {v2, p2}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    .line 2802
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 2789
    return-void
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "updateTime"    # J
    .param p6, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 2869
    invoke-direct {p0, p6}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2870
    return-void

    .line 2873
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2874
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2875
    .local v0, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_1

    .line 2876
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2873
    .end local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2878
    .restart local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 2868
    return-void
.end method

.method public systemRunning()V
    .locals 15

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v2, "systemReady()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 274
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 277
    new-instance v0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 280
    new-instance v0, Lcom/android/server/location/LocationFudger;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v0, v2, v4}, Lcom/android/server/location/LocationFudger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    .line 281
    new-instance v0, Lcom/android/server/location/LocationBlacklist;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v0, v2, v4}, Lcom/android/server/location/LocationBlacklist;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    .line 282
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0}, Lcom/android/server/location/LocationBlacklist;->init()V

    .line 283
    new-instance v0, Lcom/android/server/location/GeofenceManager;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-direct {v0, v2, v4}, Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    .line 287
    new-instance v10, Lcom/android/server/LocationManagerService$3;

    invoke-direct {v10, p0}, Lcom/android/server/LocationManagerService$3;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 297
    .local v10, "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v10}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 300
    new-instance v14, Lcom/android/server/LocationManagerService$4;

    invoke-direct {v14, p0}, Lcom/android/server/LocationManagerService$4;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 308
    .local v14, "permissionListener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    .line 311
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    .line 314
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProvidersLocked()V

    .line 315
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 319
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 320
    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 321
    new-instance v2, Lcom/android/server/LocationManagerService$5;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/LocationManagerService$5;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 320
    const/4 v4, 0x1

    .line 331
    const/4 v5, -0x1

    .line 319
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 332
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 335
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 336
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/LocationManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$6;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 351
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v4, 0x0

    .line 340
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 354
    const-string/jumbo v6, "android.intent.action.ACTION_BOOT_IPO"

    .line 355
    .local v6, "ACTION_BOOT_IPO":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.action.ACTION_SHUTDOWN_IPO"

    .line 356
    .local v7, "ACTION_SHUTDOWN_IPO":Ljava/lang/String;
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 357
    .local v11, "intentIPOFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "ro.mtk_ipo_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string/jumbo v0, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/LocationManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$7;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 377
    :cond_0
    const-string/jumbo v8, "com.mediatek.location.providercheck"

    .line 378
    .local v8, "ALARM_PVDCHECK":Ljava/lang/String;
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 379
    .local v13, "intentPvdChkFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.mediatek.location.providercheck"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/LocationManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$8;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 393
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 394
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.mediatek.location.providercheck"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    const/4 v2, 0x0

    .line 394
    const/4 v4, 0x0

    .line 393
    invoke-static {v0, v2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProviderCheckTimeoutIntent:Landroid/app/PendingIntent;

    .line 397
    const-string/jumbo v9, "com.mediatek.lbs.action.NLP_BIND_REQUEST"

    .line 398
    .local v9, "NLP_BIND_REQUEST":Ljava/lang/String;
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 399
    .local v12, "intentNlpFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.mediatek.lbs.action.NLP_BIND_REQUEST"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/LocationManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$9;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    return-void

    .line 267
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v6    # "ACTION_BOOT_IPO":Ljava/lang/String;
    .end local v7    # "ACTION_SHUTDOWN_IPO":Ljava/lang/String;
    .end local v8    # "ALARM_PVDCHECK":Ljava/lang/String;
    .end local v9    # "NLP_BIND_REQUEST":Ljava/lang/String;
    .end local v10    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    .end local v11    # "intentIPOFilter":Landroid/content/IntentFilter;
    .end local v12    # "intentNlpFilter":Landroid/content/IntentFilter;
    .end local v13    # "intentPvdChkFilter":Landroid/content/IntentFilter;
    .end local v14    # "permissionListener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method updateUserProfiles(I)V
    .locals 5
    .param p1, "currentUserId"    # I

    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 426
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 427
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 429
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    aput v2, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 424
    return-void

    .line 426
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
