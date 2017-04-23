.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$GpsRequest;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GpsLocationProvider$BackOff;,
        Lcom/android/server/location/GpsLocationProvider$1;,
        Lcom/android/server/location/GpsLocationProvider$2;,
        Lcom/android/server/location/GpsLocationProvider$3;,
        Lcom/android/server/location/GpsLocationProvider$4;,
        Lcom/android/server/location/GpsLocationProvider$5;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final BATTERY_SAVER_GPS_MODE:Ljava/lang/String; = "batterySaverGpsMode"

.field private static final BATTERY_SAVER_MODE_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field private static final BATTERY_SAVER_MODE_NO_CHANGE:I = 0x0

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DEFAULT_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final ENABLE:I = 0x2

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final INJECT_NTP_TIME_FINISHED:I = 0xa

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final PROPERTIES_FILE_PREFIX:Ljava/lang/String; = "/etc/gps"

.field private static final PROPERTIES_FILE_SUFFIX:Ljava/lang/String; = ".conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final SUBSCRIPTION_OR_SIM_CHANGED:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = true

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"


# instance fields
.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mApnIpType:I

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultApn:Ljava/lang/String;

.field private mDisableGps:Z

.field private mDownloadXtraDataPending:I

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

.field private final mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

.field private final mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private mInjectNtpTimePending:I

.field private mLastFixTime:J

.field private final mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private mLock:Ljava/lang/Object;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNmeaBuffer:[B

.field private mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPeriodicTimeInjection:Z

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProperties:Ljava/util/Properties;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mSingleShot:Z

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;

.field private mXtraBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$BackOff;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsStatusListenerHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$BackOff;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/location/GpsLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    return p1
.end method

.method static synthetic -wrap0(IDDDIIII)Z
    .locals 1
    .param p0, "geofenceId"    # I
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # D
    .param p7, "lastTransition"    # I
    .param p8, "monitorTransitions"    # I
    .param p9, "notificationResponsivenes"    # I
    .param p10, "unknownTimer"    # I

    .prologue
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GpsLocationProvider;->native_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/location/GpsLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic -wrap2()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/location/GpsLocationProvider;JJI)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/location/GpsLocationProvider;[BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .param p1, "singleShot"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic -wrap3()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(I)Z
    .locals 1
    .param p0, "geofenceId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/location/GpsLocationProvider;->native_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(I)Z
    .locals 1
    .param p0, "geofenceId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/location/GpsLocationProvider;->native_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(II)Z
    .locals 1
    .param p0, "geofenceId"    # I
    .param p1, "transitions"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->native_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 118
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    .line 120
    const/4 v8, 0x3

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    .line 118
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 2307
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ilocationManager"    # Landroid/location/ILocationManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/32 v8, 0x493e0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    .line 271
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 274
    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 302
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$BackOff;

    const-wide/32 v2, 0xdbba00

    invoke-direct {v0, v8, v9, v2, v3}, Lcom/android/server/location/GpsLocationProvider$BackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    .line 303
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$BackOff;

    const-wide/32 v2, 0xdbba00

    invoke-direct {v0, v8, v9, v2, v3}, Lcom/android/server/location/GpsLocationProvider$BackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    .line 318
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    .line 319
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    .line 331
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 346
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 348
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 355
    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 357
    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 359
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    .line 368
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    .line 371
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    .line 376
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 377
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 412
    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDefaultApn:Ljava/lang/String;

    .line 415
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 419
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 447
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 489
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    .line 488
    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1223
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    .line 1805
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$5;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$5;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2298
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    .line 2299
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    .line 2300
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    .line 2301
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 2302
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    .line 2305
    const/16 v0, 0x78

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 638
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 639
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 640
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    .line 642
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 645
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 646
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "GpsLocationProvider"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 647
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 649
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 650
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 651
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 653
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 657
    const-string/jumbo v0, "appops"

    .line 656
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 661
    const-string/jumbo v0, "batterystats"

    .line 660
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 664
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    .line 671
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 672
    const/16 v0, 0xd

    invoke-direct {p0, v0, v4, v6}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 675
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 676
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 677
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    .line 675
    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 679
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$6;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$6;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    .line 691
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$7;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$7;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    .line 713
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$8;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$8;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    .line 735
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->initLocationExt()V

    .line 637
    return-void
.end method

.method private buildLocation(IDDDFFFJ)Landroid/location/Location;
    .locals 6
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 1661
    new-instance v2, Landroid/location/Location;

    const-string/jumbo v3, "gps"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1662
    .local v2, "location":Landroid/location/Location;
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1663
    invoke-virtual {v2, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1664
    invoke-virtual {v2, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1665
    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1666
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1668
    :cond_0
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1669
    invoke-virtual {v2, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 1671
    :cond_1
    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1672
    invoke-virtual {v2, p8}, Landroid/location/Location;->setSpeed(F)V

    .line 1674
    :cond_2
    and-int/lit8 v3, p1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1675
    invoke-virtual {v2, p9}, Landroid/location/Location;->setBearing(F)V

    .line 1677
    :cond_3
    and-int/lit8 v3, p1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1678
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1680
    :cond_4
    return-object v2
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 513
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 514
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 515
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 516
    .local v2, "supl_init":[B
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    .end local v2    # "supl_init":[B
    :cond_0
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 521
    invoke-static {p1}, Lcom/mediatek/location/LocationExt;->checkWapSuplInit(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 522
    :cond_0
    const-string/jumbo v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 523
    .local v0, "supl_init":[B
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 520
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1251
    if-nez p1, :cond_1

    .line 1252
    const v0, 0xffff

    .line 1270
    .local v0, "flags":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_e

    .line 1271
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 1272
    const/4 v1, 0x1

    return v1

    .line 1254
    .end local v0    # "flags":I
    :cond_1
    const/4 v0, 0x0

    .line 1255
    .restart local v0    # "flags":I
    const-string/jumbo v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 1256
    :cond_2
    const-string/jumbo v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 1257
    :cond_3
    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    .line 1258
    :cond_4
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    .line 1259
    :cond_5
    const-string/jumbo v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    .line 1260
    :cond_6
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 1261
    :cond_7
    const-string/jumbo v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    .line 1262
    :cond_8
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x80

    .line 1263
    :cond_9
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x100

    .line 1264
    :cond_a
    const-string/jumbo v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x200

    .line 1265
    :cond_b
    const-string/jumbo v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x400

    .line 1266
    :cond_c
    const-string/jumbo v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1267
    :cond_d
    const-string/jumbo v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 1274
    :cond_e
    invoke-static {p1, v0}, Lcom/mediatek/location/LocationExt;->deleteAidingData(Landroid/os/Bundle;I)V

    .line 1275
    return v2
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .locals 9
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 2144
    if-nez p1, :cond_0

    .line 2145
    return v8

    .line 2149
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    if-eqz v0, :cond_1

    .line 2150
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    return v0

    .line 2153
    :cond_1
    const-string/jumbo v0, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2154
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2156
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2157
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 2158
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "protocol"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 2161
    const-string/jumbo v5, "name ASC"

    .line 2160
    const/4 v4, 0x0

    .line 2156
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2163
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2164
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GpsLocationProvider;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2171
    if-eqz v6, :cond_2

    .line 2172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2164
    :cond_2
    return v0

    .line 2166
    :cond_3
    :try_start_1
    const-string/jumbo v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No entry found in query for APN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2171
    if-eqz v6, :cond_4

    .line 2172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2176
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_0
    return v8

    .line 2168
    :catch_0
    move-exception v7

    .line 2169
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error encountered on APN query for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2171
    if-eqz v6, :cond_4

    .line 2172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2170
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 2171
    if-eqz v6, :cond_5

    .line 2172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2170
    :cond_5
    throw v0
.end method

.method private getGeofenceStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1687
    sparse-switch p1, :sswitch_data_0

    .line 1701
    const/4 v0, -0x1

    return v0

    .line 1689
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 1691
    :sswitch_1
    const/4 v0, 0x5

    return v0

    .line 1693
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 1695
    :sswitch_3
    const/4 v0, 0x4

    return v0

    .line 1697
    :sswitch_4
    const/4 v0, 0x1

    return v0

    .line 1699
    :sswitch_5
    const/4 v0, 0x3

    return v0

    .line 1687
    nop

    :sswitch_data_0
    .sparse-switch
        -0x95 -> :sswitch_1
        -0x67 -> :sswitch_3
        -0x66 -> :sswitch_5
        -0x65 -> :sswitch_2
        0x0 -> :sswitch_0
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2118
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2119
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2121
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2123
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "apn"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2126
    const-string/jumbo v5, "name ASC"

    .line 2124
    const/4 v3, 0x0

    .line 2125
    const/4 v4, 0x0

    .line 2121
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2127
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2128
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2135
    if-eqz v6, :cond_0

    .line 2136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2128
    :cond_0
    return-object v0

    .line 2130
    :cond_1
    :try_start_1
    const-string/jumbo v0, "GpsLocationProvider"

    const-string/jumbo v2, "No APN found to select."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2135
    if-eqz v6, :cond_2

    .line 2136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2140
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v8

    .line 2132
    :catch_0
    move-exception v7

    .line 2133
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "GpsLocationProvider"

    const-string/jumbo v2, "Error encountered on selecting the APN."

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2135
    if-eqz v6, :cond_2

    .line 2136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2134
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 2135
    if-eqz v6, :cond_3

    .line 2136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2134
    :cond_3
    throw v0
.end method

.method private getSuplMode(Ljava/util/Properties;ZZ)I
    .locals 7
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "agpsEnabled"    # Z
    .param p3, "singleShot"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 974
    if-eqz p2, :cond_2

    .line 975
    const-string/jumbo v3, "SUPL_MODE"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 976
    .local v1, "modeString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 977
    .local v2, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 979
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 987
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_1

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1

    .line 988
    const/4 v3, 0x1

    return v3

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to parse SUPL_MODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return v6

    .line 993
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    if-eqz p3, :cond_2

    .line 994
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v3

    .line 993
    if-eqz v3, :cond_2

    .line 995
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    .line 996
    return v4

    .line 999
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v2    # "suplMode":I
    :cond_2
    return v6
.end method

.method private handleDisable()V
    .locals 2

    .prologue
    .line 1044
    const-string/jumbo v0, "GpsLocationProvider"

    const-string/jumbo v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1047
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1048
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1052
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_cleanup()V

    .line 1054
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GpsMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1055
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GpsNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1043
    return-void
.end method

.method private handleDownloadXtraData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 883
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    if-ne v0, v1, :cond_0

    .line 885
    return-void

    .line 887
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_1

    .line 889
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    .line 890
    return-void

    .line 892
    :cond_1
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    .line 895
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 896
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$10;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$10;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 882
    return-void
.end method

.method private handleEnable()V
    .locals 4

    .prologue
    .line 1003
    const-string/jumbo v1, "GpsLocationProvider"

    const-string/jumbo v2, "handleEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v0

    .line 1007
    .local v0, "enabled":Z
    if-eqz v0, :cond_2

    .line 1008
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 1011
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1014
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1015
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    const/4 v3, 0x2

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1018
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GpsMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1019
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1002
    :goto_0
    return-void

    .line 1021
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1022
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1024
    const-string/jumbo v1, "GpsLocationProvider"

    const-string/jumbo v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1021
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private handleInjectNtpTime()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 824
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    if-ne v0, v1, :cond_0

    .line 826
    return-void

    .line 828
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_1

    .line 830
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    .line 831
    return-void

    .line 833
    :cond_1
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    .line 836
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 837
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$9;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$9;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 823
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1094
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1095
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateRequirements()V

    .line 1092
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 925
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 927
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    move-object v1, p0

    .line 926
    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 924
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 10
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 756
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 759
    const-string/jumbo v1, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "available"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 760
    const-string/jumbo v2, " info: "

    .line 759
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    if-eqz p2, :cond_2

    .line 764
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 765
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v8

    .line 766
    .local v8, "dataEnabled":Z
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    move v4, v8

    .line 768
    :goto_2
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 769
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDefaultApn:Ljava/lang/String;

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDefaultApn:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 772
    const-string/jumbo v0, "dummy-apn"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDefaultApn:Ljava/lang/String;

    .line 775
    :cond_1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 776
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    .line 777
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDefaultApn:Ljava/lang/String;

    move-object v0, p0

    .line 775
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 784
    .end local v8    # "dataEnabled":Z
    :cond_2
    :goto_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 785
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 786
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_b

    .line 787
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    .line 788
    .local v7, "apnName":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 791
    const-string/jumbo v7, "dummy-apn"

    .line 793
    :cond_3
    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 794
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->getApnIpType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    .line 795
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setRouting()V

    .line 798
    const-string/jumbo v0, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    .line 797
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 799
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 797
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 800
    .local v9, "message":Ljava/lang/String;
    const-string/jumbo v0, "GpsLocationProvider"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 803
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 813
    .end local v7    # "apnName":Ljava/lang/String;
    .end local v9    # "message":Ljava/lang/String;
    :cond_4
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_6

    .line 814
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    if-nez v0, :cond_5

    .line 815
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 817
    :cond_5
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    if-nez v0, :cond_6

    .line 818
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 755
    :cond_6
    return-void

    .line 756
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 759
    :cond_8
    const-string/jumbo v0, "unavailable"

    goto/16 :goto_1

    .line 766
    .restart local v8    # "dataEnabled":Z
    :cond_9
    const/4 v4, 0x0

    .local v4, "networkAvailable":Z
    goto/16 :goto_2

    .line 779
    .end local v4    # "networkAvailable":Z
    .end local v8    # "dataEnabled":Z
    :cond_a
    const-string/jumbo v0, "GpsLocationProvider"

    const-string/jumbo v1, "Skipped network state update because AGPS-RIL in GPS HAL is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 805
    :cond_b
    const-string/jumbo v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "call native_agps_data_conn_failed, info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 807
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    .line 808
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 809
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_4
.end method

.method private hasCapability(I)Z
    .locals 2
    .param p1, "capability"    # I

    .prologue
    const/4 v0, 0x0

    .line 1365
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hibernate()V
    .locals 7

    .prologue
    .line 1357
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1358
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1359
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1361
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v4, v3

    add-long/2addr v4, v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1355
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 543
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 620
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 623
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {p2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 626
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 633
    const/4 v4, 0x1

    return v4

    .line 625
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    .line 626
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 625
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 629
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not open GPS configuration file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v4, 0x0

    return v4

    .line 625
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v4, 0x0

    .line 603
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 604
    const v5, 0x107003d

    .line 603
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "configValues":[Ljava/lang/String;
    array-length v5, v0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 606
    .local v1, "item":Ljava/lang/String;
    const-string/jumbo v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GpsParamsResource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string/jumbo v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, "split":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 610
    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 605
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 612
    :cond_0
    const-string/jumbo v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "malformed contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 602
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "split":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private static native native_configuration_update(Ljava/lang/String;)V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_is_gnss_configuration_supported()Z
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private native native_read_gnss_sv_status([I[F[F[F[Z[Z[Z)I
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_start_measurement_collection()Z
.end method

.method private native native_start_navigation_message_collection()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_stop_measurement_collection()Z
.end method

.method private native native_stop_navigation_message_collection()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v8, 0x1

    .line 547
    const-string/jumbo v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Reset GPS properties, previous size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 549
    const/4 v4, 0x0

    .line 550
    .local v4, "isPropertiesLoadedFromFile":Z
    const-string/jumbo v9, "ro.hardware.gps"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, "gpsHardware":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 553
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "/etc/gps."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 555
    .local v6, "propFilename":Ljava/lang/String;
    invoke-direct {p0, v6, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v4

    .line 557
    .end local v4    # "isPropertiesLoadedFromFile":Z
    .end local v6    # "propFilename":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    .line 558
    const-string/jumbo v9, "/etc/gps.conf"

    invoke-direct {p0, v9, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 560
    :cond_1
    const-string/jumbo v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "GPS properties reloaded, size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string/jumbo v9, "SUPL_HOST"

    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 564
    const-string/jumbo v10, "SUPL_PORT"

    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 563
    invoke-direct {p0, v9, v10}, Lcom/android/server/location/GpsLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string/jumbo v9, "C2K_HOST"

    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 566
    const-string/jumbo v9, "C2K_PORT"

    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 567
    .local v5, "portString":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v9, :cond_2

    if-eqz v5, :cond_2

    .line 569
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_gnss_configuration_supported()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 578
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 579
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    invoke-virtual {p2, v0, v9}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->native_configuration_update(Ljava/lang/String;)V

    .line 581
    const-string/jumbo v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "final config = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string/jumbo v10, "SUPL_ES"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 592
    .local v7, "suplESProperty":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 594
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_5

    :goto_2
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 546
    :cond_3
    :goto_3
    return-void

    .line 570
    .end local v7    # "suplESProperty":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to parse C2K_PORT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 583
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v9, "GpsLocationProvider"

    const-string/jumbo v10, "failed to dump properties contents"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 586
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_4
    const-string/jumbo v9, "GpsLocationProvider"

    const-string/jumbo v10, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 594
    .restart local v7    # "suplESProperty":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 595
    :catch_2
    move-exception v1

    .line 596
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unable to parse SUPL_ES: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private reportAGpsStatus(II[B)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipaddr"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1533
    packed-switch p2, :pswitch_data_0

    .line 1597
    const-string/jumbo v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received Unknown AGPS status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1535
    :pswitch_0
    const-string/jumbo v2, "GpsLocationProvider"

    const-string/jumbo v3, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const-string/jumbo v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received SUPL IP addr[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1540
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 1541
    const-string/jumbo v3, "enableSUPL"

    .line 1540
    invoke-static {v2, v5, v3}, Lcom/mediatek/location/LocationExt;->doStartUsingNetwork(Landroid/net/ConnectivityManager;ILjava/lang/String;)I

    move-result v1

    .line 1542
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 1543
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 1544
    const-string/jumbo v3, "enableSUPL"

    .line 1543
    invoke-virtual {v2, v5, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 1546
    :cond_1
    if-eqz p3, :cond_2

    .line 1548
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1549
    const-string/jumbo v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IP address converted to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 1557
    const-string/jumbo v2, "GpsLocationProvider"

    const-string/jumbo v3, "PhoneConstants.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1559
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setRouting()V

    .line 1560
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 1561
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_0

    .line 1550
    :catch_0
    move-exception v0

    .line 1551
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad IP Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1552
    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    goto :goto_1

    .line 1563
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_3
    const-string/jumbo v2, "GpsLocationProvider"

    const-string/jumbo v3, "mAGpsApn not set when receiving PhoneConstants.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1565
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto/16 :goto_0

    .line 1567
    :cond_4
    if-ne v1, v7, :cond_5

    .line 1568
    const-string/jumbo v2, "GpsLocationProvider"

    const-string/jumbo v3, "PhoneConstants.APN_REQUEST_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1571
    :cond_5
    const-string/jumbo v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUsingNetworkFeature failed, value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1574
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto/16 :goto_0

    .line 1578
    .end local v1    # "result":I
    :pswitch_1
    const-string/jumbo v2, "GpsLocationProvider"

    const-string/jumbo v3, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v2, :cond_0

    .line 1580
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 1581
    const-string/jumbo v3, "enableSUPL"

    .line 1580
    invoke-virtual {v2, v5, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1582
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed()V

    .line 1583
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1584
    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    goto/16 :goto_0

    .line 1588
    :pswitch_2
    const-string/jumbo v2, "GpsLocationProvider"

    const-string/jumbo v3, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1591
    :pswitch_3
    const-string/jumbo v2, "GpsLocationProvider"

    const-string/jumbo v3, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1594
    :pswitch_4
    const-string/jumbo v2, "GpsLocationProvider"

    const-string/jumbo v3, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportGeofenceAddStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 1765
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 1787
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1789
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 1785
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1779
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 1775
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 1795
    return-void
.end method

.method private reportGeofenceStatus(IIDDDFFFJ)V
    .locals 17
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 1739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v2, :cond_0

    .line 1740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    move-object/from16 v2, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 1742
    invoke-direct/range {v2 .. v14}, Lcom/android/server/location/GpsLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v15

    .line 1751
    .local v15, "location":Landroid/location/Location;
    const/16 v16, 0x1

    .line 1752
    .local v16, "monitorStatus":I
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 1753
    const/16 v16, 0x0

    .line 1755
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1759
    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    .line 1756
    const/4 v4, 0x0

    .line 1755
    move/from16 v0, v16

    invoke-virtual {v2, v4, v0, v15, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 1738
    return-void
.end method

.method private reportGeofenceTransition(IIDDDFFFJIJ)V
    .locals 13
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    move-object v0, p0

    move v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-wide/from16 v11, p12

    .line 1715
    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/GpsLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v2

    .line 1724
    .local v2, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1730
    sget v7, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    .line 1729
    const/4 v6, 0x0

    move v1, p1

    move/from16 v3, p14

    move-wide/from16 v4, p15

    .line 1724
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 1711
    return-void
.end method

.method private reportGnssSvStatus()V
    .locals 12

    .prologue
    .line 2230
    invoke-static {}, Lcom/mediatek/location/LocationExt;->getGnssSvStatusHolder()Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;

    move-result-object v10

    .line 2231
    .local v10, "h":Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;
    if-nez v10, :cond_0

    return-void

    .line 2232
    :cond_0
    iget-object v1, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvs:[I

    iget-object v2, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSnrs:[F

    iget-object v3, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvElevations:[F

    .line 2233
    iget-object v4, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvAzimuths:[F

    iget-object v5, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvEphemeris:[Z

    iget-object v6, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvAlmanac:[Z

    iget-object v7, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvInFix:[Z

    move-object v0, p0

    .line 2232
    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/GpsLocationProvider;->native_read_gnss_sv_status([I[F[F[F[Z[Z[Z)I

    move-result v1

    .line 2234
    .local v1, "svCount":I
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget-object v2, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvs:[I

    iget-object v3, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSnrs:[F

    iget-object v4, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvElevations:[F

    .line 2235
    iget-object v5, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvAzimuths:[F

    iget-object v6, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvEphemeris:[Z

    iget-object v7, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvAlmanac:[Z

    iget-object v8, v10, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvInFix:[Z

    .line 2234
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/GpsStatusListenerHelper;->onGnssSvStatusChanged(I[I[F[F[F[Z[Z[Z)V

    .line 2236
    invoke-virtual {v10, v1}, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->reportGnssSvStatusStep2(I)I

    move-result v11

    .line 2237
    .local v11, "svFixCount":I
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    invoke-direct {p0, v0, v11}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2238
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v8, 0x2710

    move-object v3, v10

    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->reportGnssSvStatusStep3(ZIJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2239
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2229
    :cond_1
    return-void
.end method

.method private reportLocation(IDDDFFFJ)V
    .locals 8
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 1374
    const-string/jumbo v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportLocation lat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1375
    const-string/jumbo v6, " timestamp: "

    .line 1374
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p11

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v5

    .line 1378
    :try_start_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1379
    and-int/lit8 v4, p1, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 1380
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1381
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1382
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1385
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1387
    :cond_0
    and-int/lit8 v4, p1, 0x2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    .line 1388
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 1392
    :goto_0
    and-int/lit8 v4, p1, 0x4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_7

    .line 1393
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1397
    :goto_1
    and-int/lit8 v4, p1, 0x8

    const/16 v6, 0x8

    if-ne v4, v6, :cond_8

    .line 1398
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1402
    :goto_2
    and-int/lit8 v4, p1, 0x10

    const/16 v6, 0x10

    if-ne v4, v6, :cond_9

    .line 1403
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1407
    :goto_3
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1410
    :try_start_1
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    monitor-exit v5

    .line 1416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1418
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    if-nez v4, :cond_1

    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1419
    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1420
    const-string/jumbo v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TTFF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v4, v5}, Lcom/android/server/location/GpsStatusListenerHelper;->onFirstFix(I)V

    .line 1425
    :cond_1
    move-wide/from16 v0, p11

    invoke-static {p1, v0, v1}, Lcom/mediatek/location/LocationExt;->doSystemTimeSyncByGps(IJ)V

    .line 1427
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    if-eqz v4, :cond_2

    .line 1428
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1431
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 1434
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v5, 0xea60

    if-ge v4, v5, :cond_3

    .line 1435
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1439
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "enabled"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1441
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1442
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    const/4 v5, 0x2

    invoke-direct {p0, v5, v4}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1445
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v4, :cond_5

    .line 1446
    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v5, 0x2710

    if-le v4, v5, :cond_5

    .line 1447
    const-string/jumbo v4, "GpsLocationProvider"

    const-string/jumbo v5, "got fix, hibernating"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    .line 1373
    :cond_5
    return-void

    .line 1390
    :cond_6
    :try_start_2
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeAltitude()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1377
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1395
    :cond_7
    :try_start_3
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_1

    .line 1400
    :cond_8
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_2

    .line 1405
    :cond_9
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_3

    .line 1411
    :catch_0
    move-exception v2

    .line 1412
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "GpsLocationProvider"

    const-string/jumbo v6, "RemoteException calling reportLocation"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method

.method private reportMeasurementData(Landroid/location/GpsMeasurementsEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GpsMeasurementsEvent;

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GpsMeasurementsEvent;)V

    .line 1613
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GpsNavigationMessageEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GpsNavigationMessageEvent;

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GpsNavigationMessageEvent;)V

    .line 1620
    return-void
.end method

.method private reportNmea(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .prologue
    .line 1605
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 1606
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1607
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GpsStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 1604
    return-void
.end method

.method private reportStatus(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1456
    const-string/jumbo v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportStatus status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1459
    .local v1, "wasNavigating":Z
    packed-switch p1, :pswitch_data_0

    .line 1476
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eq v1, v2, :cond_0

    .line 1477
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v3}, Lcom/android/server/location/GpsStatusListenerHelper;->onStatusChanged(Z)V

    .line 1480
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1481
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "enabled"

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1482
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1455
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1461
    :pswitch_0
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1462
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 1465
    :pswitch_1
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_0

    .line 1468
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 1471
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 1472
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_0

    .line 1459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportSvStatus()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1490
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v1

    .line 1491
    .local v1, "svCount":I
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    .line 1493
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    .line 1494
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    .line 1495
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    .line 1496
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 1497
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v6, v6, v11

    .line 1498
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v7, v7, v12

    .line 1499
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v8, v8, v13

    .line 1491
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/GpsStatusListenerHelper;->onSvStatusChanged(I[I[F[F[FIII)V

    .line 1502
    const-string/jumbo v0, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SV count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1503
    const-string/jumbo v3, " ephemerisMask: "

    .line 1502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1503
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v3, v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1504
    const-string/jumbo v3, " almanacMask: "

    .line 1502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1504
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v1, :cond_3

    .line 1506
    const-string/jumbo v2, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sv: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v3, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1507
    const-string/jumbo v3, " snr: "

    .line 1506
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1507
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    aget v3, v3, v9

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    .line 1506
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1508
    const-string/jumbo v3, " elev: "

    .line 1506
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1508
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    aget v3, v3, v9

    .line 1506
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1509
    const-string/jumbo v3, " azimuth: "

    .line 1506
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1509
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    aget v3, v3, v9

    .line 1506
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1510
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v11

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v9

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v12, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_0

    const-string/jumbo v0, "  "

    .line 1506
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1511
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v12

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v9

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v12, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_1

    const-string/jumbo v0, "  "

    .line 1506
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1512
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v13

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v9

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v12, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .line 1506
    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1510
    :cond_0
    const-string/jumbo v0, " E"

    goto :goto_1

    .line 1511
    :cond_1
    const-string/jumbo v0, " A"

    goto :goto_2

    .line 1512
    :cond_2
    const-string/jumbo v0, "U"

    goto :goto_3

    .line 1517
    :cond_3
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v2, v2, v13

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1519
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne v0, v13, :cond_4

    iget-wide v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 1520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 1522
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1523
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "enabled"

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1524
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v10, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1525
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v12, v0}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1489
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_4
    return-void
.end method

.method private requestRefLocation(I)V
    .locals 10
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x3

    .line 1937
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1936
    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 1938
    .local v8, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 1939
    .local v9, "phoneType":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_4

    .line 1940
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 1941
    .local v6, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_3

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1942
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_3

    .line 1944
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1945
    .local v2, "mcc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1946
    .local v3, "mnc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 1947
    .local v7, "networkType":I
    if-eq v7, v5, :cond_0

    .line 1948
    const/16 v0, 0x8

    if-ne v7, v0, :cond_2

    .line 1952
    :cond_0
    const/4 v1, 0x2

    .line 1957
    .local v1, "type":I
    :goto_0
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    .line 1956
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 1935
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v7    # "networkType":I
    :cond_1
    :goto_1
    return-void

    .line 1949
    .restart local v2    # "mcc":I
    .restart local v3    # "mnc":I
    .restart local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7    # "networkType":I
    :cond_2
    const/16 v0, 0x9

    if-eq v7, v0, :cond_0

    .line 1950
    const/16 v0, 0xa

    if-eq v7, v0, :cond_0

    .line 1951
    const/16 v0, 0xf

    if-eq v7, v0, :cond_0

    .line 1954
    const/4 v1, 0x1

    .restart local v1    # "type":I
    goto :goto_0

    .line 1959
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v7    # "networkType":I
    :cond_3
    const-string/jumbo v0, "GpsLocationProvider"

    const-string/jumbo v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1961
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    const/4 v0, 0x2

    if-ne v9, v0, :cond_1

    .line 1962
    const-string/jumbo v0, "GpsLocationProvider"

    const-string/jumbo v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private requestSetID(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 1896
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1895
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1897
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 1898
    .local v3, "type":I
    const-string/jumbo v0, ""

    .line 1900
    .local v0, "data":Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1901
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1902
    .local v1, "data_temp":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1920
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 1894
    return-void

    .line 1906
    .restart local v1    # "data_temp":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 1907
    const/4 v3, 0x1

    goto :goto_0

    .line 1910
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1911
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1912
    .restart local v1    # "data_temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1916
    move-object v0, v1

    .line 1917
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 3

    .prologue
    .line 1928
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1927
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1971
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1966
    return-void
.end method

.method private setEngineCapabilities(I)V
    .locals 5
    .param p1, "capabilities"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1628
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    .line 1630
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-eqz v0, :cond_1

    .line 1635
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    .line 1636
    and-int/lit8 v0, p1, 0x40

    const/16 v4, 0x40

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 1635
    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/server/location/GpsMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    .line 1637
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    .line 1638
    and-int/lit16 v3, p1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_3

    .line 1637
    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    .line 1627
    return-void

    .line 1631
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    .line 1632
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->requestUtcTime()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1636
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1638
    goto :goto_2
.end method

.method private setRouting()V
    .locals 4

    .prologue
    .line 2197
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 2198
    return-void

    .line 2201
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 2202
    invoke-static {}, Lcom/mediatek/location/LocationExt;->getRouteNetworkType()I

    move-result v2

    .line 2203
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 2201
    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 2205
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 2206
    const-string/jumbo v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    :goto_0
    return-void

    .line 2208
    :cond_1
    const-string/jumbo v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "hostString"    # Ljava/lang/String;
    .param p2, "portString"    # Ljava/lang/String;

    .prologue
    .line 947
    if-eqz p1, :cond_0

    .line 948
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 950
    :cond_0
    if-eqz p2, :cond_1

    .line 952
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 958
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    if-lez v1, :cond_2

    .line 959
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    const v2, 0xffff

    if-gt v1, v2, :cond_2

    .line 960
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 946
    :cond_2
    return-void

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse SUPL_PORT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startNavigating(Z)V
    .locals 10
    .param p1, "singleShot"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1279
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_4

    .line 1280
    const-string/jumbo v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNavigating, singleShot is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1282
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1283
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1284
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1285
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1286
    invoke-static {p1}, Lcom/mediatek/location/LocationExt;->startNavigating(Z)V

    .line 1289
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1290
    const-string/jumbo v1, "assisted_gps_enabled"

    .line 1289
    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    .line 1291
    .local v6, "agpsEnabled":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v0, v6, p1}, Lcom/android/server/location/GpsLocationProvider;->getSuplMode(Ljava/util/Properties;ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1296
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    packed-switch v0, :pswitch_data_0

    .line 1307
    const-string/jumbo v7, "unknown"

    .line 1310
    .local v7, "mode":Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting position_mode to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1314
    .local v3, "interval":I
    :goto_2
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1316
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1317
    const-string/jumbo v0, "GpsLocationProvider"

    const-string/jumbo v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return-void

    .line 1289
    .end local v3    # "interval":I
    .end local v6    # "agpsEnabled":Z
    .end local v7    # "mode":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "agpsEnabled":Z
    goto :goto_0

    .line 1298
    :pswitch_0
    const-string/jumbo v7, "standalone"

    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 1301
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v7, "MS_ASSISTED"

    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 1304
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v7, "MS_BASED"

    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 1313
    :cond_1
    const/16 v3, 0x3e8

    .restart local v3    # "interval":I
    goto :goto_2

    .line 1320
    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1321
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1322
    const-string/jumbo v0, "GpsLocationProvider"

    const-string/jumbo v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    return-void

    .line 1327
    :cond_3
    invoke-direct {p0, v8, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 1329
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1332
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_4

    .line 1333
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v8, 0xea60

    add-long/2addr v4, v8

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1333
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1278
    .end local v3    # "interval":I
    .end local v6    # "agpsEnabled":Z
    .end local v7    # "mode":Ljava/lang/String;
    :cond_4
    return-void

    .line 1296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1341
    const-string/jumbo v0, "GpsLocationProvider"

    const-string/jumbo v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_0

    .line 1343
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1344
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1345
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 1346
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1347
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1348
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1351
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1340
    :cond_0
    return-void
.end method

.method private subscriptionOrSimChanged(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 497
    const-string/jumbo v2, "GpsLocationProvider"

    const-string/jumbo v3, "received SIM related action: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 498
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 500
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    const-string/jumbo v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SIM MCC/MNC is available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 504
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v2}, Lcom/android/server/location/GpsLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 505
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v2, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 496
    :goto_0
    return-void

    .line 503
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 508
    :cond_0
    const-string/jumbo v2, "GpsLocationProvider"

    const-string/jumbo v3, "SIM MCC/MNC is still not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2180
    const-string/jumbo v1, "IP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2181
    return v4

    .line 2183
    :cond_0
    const-string/jumbo v1, "IPV6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2184
    return v2

    .line 2186
    :cond_1
    const-string/jumbo v1, "IPV4V6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2187
    const/4 v1, 0x3

    return v1

    .line 2191
    :cond_2
    const-string/jumbo v1, "Unknown IP Protocol: %s, for APN: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2192
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "GpsLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    return v3
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .locals 11
    .param p1, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1155
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v7, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v0

    .line 1156
    .local v0, "changes":[Landroid/os/WorkSource;
    if-nez v0, :cond_0

    .line 1157
    return-void

    .line 1159
    :cond_0
    const/4 v7, 0x0

    aget-object v5, v0, v7

    .line 1160
    .local v5, "newWork":Landroid/os/WorkSource;
    const/4 v7, 0x1

    aget-object v2, v0, v7

    .line 1163
    .local v2, "goneWork":Landroid/os/WorkSource;
    if-eqz v5, :cond_2

    .line 1164
    const/4 v4, -0x1

    .line 1165
    .local v4, "lastuid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 1167
    :try_start_0
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1168
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    .line 1169
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 1168
    invoke-interface {v7, v8, v10, v6, v9}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    .line 1170
    if-eq v6, v4, :cond_1

    .line 1171
    move v4, v6

    .line 1172
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    .end local v6    # "uid":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1174
    :catch_0
    move-exception v1

    .line 1175
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GpsLocationProvider"

    const-string/jumbo v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1181
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_2
    if-eqz v2, :cond_4

    .line 1182
    const/4 v4, -0x1

    .line 1183
    .restart local v4    # "lastuid":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 1185
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1186
    .restart local v6    # "uid":I
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    .line 1187
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 1186
    invoke-interface {v7, v8, v10, v6, v9}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1188
    if-eq v6, v4, :cond_3

    .line 1189
    move v4, v6

    .line 1190
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1183
    .end local v6    # "uid":I
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1192
    :catch_1
    move-exception v1

    .line 1193
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GpsLocationProvider"

    const-string/jumbo v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1153
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_4
    return-void
.end method

.method private updateLowPowerMode()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 528
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 529
    .local v0, "disableGps":Z
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "batterySaverGpsMode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 536
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    if-eq v0, v1, :cond_0

    .line 537
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    .line 538
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateRequirements()V

    .line 526
    :cond_0
    return-void

    .line 533
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_1
    or-int/2addr v0, v1

    .line 534
    goto :goto_0

    :cond_2
    move v1, v2

    .line 533
    goto :goto_1

    .line 529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRequirements()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1100
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_1

    .line 1101
    :cond_0
    return-void

    .line 1104
    :cond_1
    const/4 v8, 0x0

    .line 1107
    .local v8, "singleShot":Z
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1108
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1111
    const/4 v8, 0x1

    .line 1113
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "lr$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationRequest;

    .line 1114
    .local v6, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v0

    if-eq v0, v9, :cond_2

    .line 1115
    const/4 v8, 0x0

    goto :goto_0

    .line 1120
    .end local v6    # "lr":Landroid/location/LocationRequest;
    .end local v7    # "lr$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRequest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    if-eqz v0, :cond_6

    .line 1145
    :cond_4
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1147
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1148
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1149
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1099
    :cond_5
    :goto_1
    return-void

    .line 1123
    :cond_6
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1125
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1128
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v0, v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    .line 1129
    const-string/jumbo v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interval overflow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1134
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1136
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1137
    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    .line 1136
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1138
    const-string/jumbo v0, "GpsLocationProvider"

    const-string/jumbo v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1140
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_5

    .line 1142
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    goto :goto_1
.end method

.method private updateStatus(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "svCount"    # I

    .prologue
    .line 1074
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 1075
    :cond_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 1076
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    .line 1077
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1078
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 1073
    :cond_1
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    .prologue
    .line 1645
    const-string/jumbo v0, "GpsLocationProvider"

    const-string/jumbo v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1644
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1035
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1036
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    .line 1037
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1040
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1034
    return-void

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2247
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "  mFixInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2248
    const-string/jumbo v1, "  mDisableGps (battery saver mode)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    const-string/jumbo v1, "  mEngineCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SCHED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    :cond_3
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    :cond_4
    const-string/jumbo v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2258
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2245
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 938
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 939
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    .line 940
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 943
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 937
    return-void

    .line 938
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    return-object v0
.end method

.method public getGpsMeasurementsProvider()Lcom/android/server/location/GpsMeasurementsProvider;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    return-object v0
.end method

.method public getGpsNavigationMessageProvider()Lcom/android/server/location/GpsNavigationMessageProvider;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    return-object v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 743
    const-string/jumbo v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    .prologue
    .line 748
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1067
    if-eqz p1, :cond_0

    .line 1068
    const-string/jumbo v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1070
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 1084
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public initLocationExt()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2217
    const-string/jumbo v1, "ro.mtk_gps_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2219
    .local v0, "mtkGpsSupport":Z
    if-eqz v0, :cond_0

    .line 2220
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    .line 2221
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/location/LocationExt;->getInstance(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/net/ConnectivityManager;)Lcom/mediatek/location/LocationExt;

    .line 2222
    const-string/jumbo v1, "GpsLocationProvider"

    const-string/jumbo v2, "LocationExt is created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    :cond_0
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1061
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1060
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I
    .param p10, "extras"    # Ljava/lang/String;

    .prologue
    .line 1837
    const-string/jumbo v7, "GpsLocationProvider"

    const-string/jumbo v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const-string/jumbo v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1839
    const-string/jumbo v9, ", niType: "

    .line 1838
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1840
    const-string/jumbo v9, ", notifyFlags: "

    .line 1838
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1841
    const-string/jumbo v9, ", timeout: "

    .line 1838
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1842
    const-string/jumbo v9, ", defaultResponse: "

    .line 1838
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const-string/jumbo v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1845
    const-string/jumbo v9, ", text: "

    .line 1844
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1846
    const-string/jumbo v9, ", requestorIdEncoding: "

    .line 1844
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1847
    const-string/jumbo v9, ", textEncoding: "

    .line 1844
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 1851
    .local v6, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 1852
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 1853
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 1854
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 1855
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 1856
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 1857
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 1858
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 1859
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 1860
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 1861
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 1865
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1867
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez p10, :cond_0

    const-string/jumbo p10, ""

    .line 1868
    :cond_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 1871
    .local v5, "extraProp":Ljava/util/Properties;
    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1878
    :goto_3
    invoke-virtual {v5}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ent$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1880
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1853
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "ent$iterator":Ljava/util/Iterator;
    .end local v5    # "extraProp":Ljava/util/Properties;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1854
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 1855
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 1874
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "extraProp":Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 1875
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1883
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "ent$iterator":Ljava/util/Iterator;
    :cond_4
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 1885
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 1835
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1203
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 1205
    .local v2, "result":Z
    const-string/jumbo v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1206
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v2

    .line 1219
    .end local v2    # "result":Z
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1220
    return v2

    .line 1207
    .restart local v2    # "result":Z
    :cond_1
    const-string/jumbo v3, "force_time_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1208
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1209
    const/4 v2, 0x1

    goto :goto_0

    .line 1210
    :cond_2
    const-string/jumbo v3, "force_xtra_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1211
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_0

    .line 1212
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1213
    const/4 v2, 0x1

    goto :goto_0

    .line 1216
    :cond_3
    const-string/jumbo v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendExtraCommand: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1089
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1088
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 752
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 751
    return-void
.end method
