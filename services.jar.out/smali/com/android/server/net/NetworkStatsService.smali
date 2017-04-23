.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;,
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$1;,
        Lcom/android/server/net/NetworkStatsService$2;,
        Lcom/android/server/net/NetworkStatsService$3;,
        Lcom/android/server/net/NetworkStatsService$4;,
        Lcom/android/server/net/NetworkStatsService$5;,
        Lcom/android/server/net/NetworkStatsService$6;,
        Lcom/android/server/net/NetworkStatsService$7;,
        Lcom/android/server/net/NetworkStatsService$8;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field private static final LOGV:Z = true

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_REGISTER_GLOBAL_ALERT:I = 0x3

.field private static final MSG_UPDATE_IFACES:I = 0x2

.field private static final PREFIX_DEV:Ljava/lang/String; = "dev"

.field private static final PREFIX_UID:Ljava/lang/String; = "uid"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "xt"

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field public static USE_TRUESTED_TIME:Z


# instance fields
.field private mActiveIface:Ljava/lang/String;

.field private final mActiveIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUidCounterSet:Landroid/util/SparseIntArray;

.field private final mActiveUidIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mBaseDir:Ljava/io/File;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mGlobalAlertBytes:J

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mIgnoreAlert:Z

.field private mIgnoreAlertReceiver:Landroid/content/BroadcastReceiver;

.field private mMobileIfaces:[Ljava/lang/String;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

.field private mPersistThreshold:J

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsLock:Ljava/lang/Object;

.field private final mSystemDir:Ljava/io/File;

.field private mSystemReady:Z

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private final mTime:Landroid/util/TrustedTime;

.field private mUidOperations:Landroid/net/NetworkStats;

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method static synthetic -get0(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/net/NetworkStatsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlert:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/net/NetworkStatsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlert:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->enforcePermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/net/NetworkStatsService;[I)V
    .locals 0
    .param p1, "uids"    # [I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUserLocked(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "alarmManager"    # Landroid/app/IAlarmManager;

    .prologue
    .line 270
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v4

    .line 271
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    invoke-direct {v6, p1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 270
    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "alarmManager"    # Landroid/app/IAlarmManager;
    .param p4, "time"    # Landroid/util/TrustedTime;
    .param p5, "systemDir"    # Ljava/io/File;
    .param p6, "settings"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .prologue
    const/4 v6, 0x0

    .line 278
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    .line 231
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    .line 234
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    .line 236
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    .line 240
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    .line 243
    new-instance v2, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;)V

    .line 242
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    .line 254
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    .line 257
    new-instance v2, Landroid/net/NetworkStats;

    const-wide/16 v4, 0x0

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    .line 262
    const-wide/32 v2, 0x200000

    iput-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 266
    iput-boolean v6, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlert:Z

    .line 882
    new-instance v2, Lcom/android/server/net/NetworkStatsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 891
    new-instance v2, Lcom/android/server/net/NetworkStatsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    .line 903
    new-instance v2, Lcom/android/server/net/NetworkStatsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 923
    new-instance v2, Lcom/android/server/net/NetworkStatsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 944
    new-instance v2, Lcom/android/server/net/NetworkStatsService$5;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlertReceiver:Landroid/content/BroadcastReceiver;

    .line 952
    new-instance v2, Lcom/android/server/net/NetworkStatsService$6;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 965
    new-instance v2, Lcom/android/server/net/NetworkStatsService$7;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1414
    new-instance v2, Lcom/android/server/net/NetworkStatsService$8;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$8;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 281
    const-string/jumbo v2, "missing Context"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 282
    const-string/jumbo v2, "missing INetworkManagementService"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 283
    const-string/jumbo v2, "missing TrustedTime"

    invoke-static {p4, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/TrustedTime;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    .line 284
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const-string/jumbo v3, "missing TelephonyManager"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 285
    const-string/jumbo v2, "missing NetworkStatsSettings"

    invoke-static {p6, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 286
    const-string/jumbo v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 289
    const-string/jumbo v2, "power"

    .line 288
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 290
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v2, "NetworkStats"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 292
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "NetworkStats"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 294
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    .line 296
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    .line 297
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "netstats"

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    .line 298
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 300
    iput-boolean v6, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlert:Z

    .line 280
    return-void
.end method

.method private assertBandwidthControlEnabled()V
    .locals 2

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Bandwidth module disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1438
    :cond_0
    return-void
.end method

.method private bootstrapStatsLocked()V
    .locals 7

    .prologue
    .line 1114
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v4}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v4}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 1118
    .local v0, "currentTime":J
    :goto_0
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    :goto_1
    return-void

    .line 1115
    .end local v0    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .restart local v0    # "currentTime":J
    goto :goto_0

    .line 1121
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1119
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1120
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "NetworkStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "problem reading network stats: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .param p3, "includeTags"    # Z

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 376
    const-string/jumbo v1, "dropbox"

    .line 375
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/DropBoxManager;

    .line 377
    .local v8, "dropBox":Landroid/os/DropBoxManager;
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder;

    new-instance v1, Lcom/android/internal/util/FileRotator;

    .line 378
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    iget-wide v4, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    iget-wide v6, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    move-object v3, p1

    .line 377
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    .line 379
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    iget-wide v5, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    move-object v3, v8

    move-object v4, p1

    move v7, p3

    .line 377
    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    return-object v0
.end method

.method private createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "pollOnCreate"    # Z

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 496
    if-eqz p2, :cond_0

    .line 497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 499
    .local v0, "ident":J
    const/4 v2, 0x3

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    .end local v0    # "ident":J
    :cond_0
    new-instance v2, Lcom/android/server/net/NetworkStatsService$9;

    invoke-direct {v2, p0, p1}, Lcom/android/server/net/NetworkStatsService$9;-><init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    return-object v2

    .line 500
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v2

    .line 501
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 500
    throw v2
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->hasAppOpsPermission(Ljava/lang/String;)Z

    move-result v0

    .line 700
    .local v0, "appOpsAllow":Z
    if-nez v0, :cond_0

    .line 701
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string/jumbo v3, "NetworkStats"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_0
    return-void
.end method

.method private enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->hasAppOpsPermission(Ljava/lang/String;)Z

    move-result v2

    .line 681
    .local v2, "hasPermission":Z
    if-nez v2, :cond_0

    .line 683
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 685
    .local v0, "callingUid":I
    const-class v3, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 684
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 688
    .local v1, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v1, :cond_0

    .line 689
    const/4 v3, -0x1

    .line 688
    invoke-virtual {v1, v0, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    return-void

    .line 693
    .end local v0    # "callingUid":I
    .end local v1    # "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    :cond_0
    if-nez v2, :cond_1

    .line 694
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string/jumbo v5, "NetworkStats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_1
    return-void
.end method

.method private static findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArrayMap",
            "<TK;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;TK;)",
            "Lcom/android/server/net/NetworkIdentitySet;"
        }
    .end annotation

    .prologue
    .line 1086
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;Lcom/android/server/net/NetworkIdentitySet;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkIdentitySet;

    .line 1087
    .local v0, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v0, :cond_0

    .line 1088
    new-instance v0, Lcom/android/server/net/NetworkIdentitySet;

    .end local v0    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    .line 1089
    .restart local v0    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    :cond_0
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 275
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkStatsTethering()Landroid/net/NetworkStats;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1402
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering()Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1403
    :catch_0
    move-exception v0

    .line 1409
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem reading network stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method private getNetworkStatsUidDetail()Landroid/net/NetworkStats;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1386
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1389
    .local v1, "uidSnapshot":Landroid/net/NetworkStats;
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v0

    .line 1390
    .local v0, "tetherSnapshot":Landroid/net/NetworkStats;
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1391
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1393
    return-object v1
.end method

.method private hasAppOpsPermission(Ljava/lang/String;)Z
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 659
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 660
    .local v2, "callingUid":I
    const/4 v1, 0x0

    .line 661
    .local v1, "appOpsAllow":Z
    if-eqz p1, :cond_1

    .line 662
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 663
    const-string/jumbo v6, "appops"

    .line 662
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 665
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v5, 0x2b

    invoke-virtual {v0, v5, v2, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    .line 667
    .local v3, "mode":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 670
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 671
    const-string/jumbo v6, "android.permission.PACKAGE_USAGE_STATS"

    .line 670
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    .line 672
    .local v4, "permissionCheck":I
    if-nez v4, :cond_2

    const/4 v1, 0x1

    .line 674
    .end local v4    # "permissionCheck":I
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 676
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v3    # "mode":I
    :cond_1
    :goto_1
    return v1

    .line 672
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    .restart local v3    # "mode":I
    .restart local v4    # "permissionCheck":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 674
    .end local v4    # "permissionCheck":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    const/4 v2, -0x1

    .line 724
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    const/4 v4, 0x0

    move-object v1, p1

    move v3, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1445
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1447
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1452
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1447
    return v1

    .line 1448
    :catch_0
    move-exception v0

    .line 1450
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1452
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1450
    return v1

    .line 1451
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1452
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1451
    throw v1
.end method

.method public static isValidSubscriptionId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 655
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeUpgradeLegacyStatsLocked()V
    .locals 5

    .prologue
    .line 426
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyNetworkLocked(Ljava/io/File;)V

    .line 429
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 432
    :cond_0
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats_xt.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 433
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 437
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats_uid.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 438
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 439
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 440
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 441
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "NetworkStats"

    const-string/jumbo v4, "problem during legacy upgrade"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 443
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 445
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "NetworkStats"

    const-string/jumbo v4, "problem during legacy upgrade"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private performPoll(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getTimeCacheMaxAge()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 1133
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1134
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1137
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1139
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1126
    return-void

    .line 1138
    :catchall_0
    move-exception v0

    .line 1139
    :try_start_3
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1138
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1133
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private performPollLocked(I)V
    .locals 17
    .param p1, "flags"    # I

    .prologue
    .line 1149
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v14, :cond_0

    return-void

    .line 1150
    :cond_0
    const-string/jumbo v14, "NetworkStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "performPollLocked(flags=0x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1154
    .local v12, "startRealtime":J
    and-int/lit8 v14, p1, 0x1

    if-eqz v14, :cond_3

    const/4 v9, 0x1

    .line 1155
    .local v9, "persistNetwork":Z
    :goto_0
    and-int/lit8 v14, p1, 0x2

    if-eqz v14, :cond_4

    const/4 v10, 0x1

    .line 1156
    .local v10, "persistUid":Z
    :goto_1
    move/from16 v0, p1

    and-int/lit16 v14, v0, 0x100

    if-eqz v14, :cond_5

    const/4 v8, 0x1

    .line 1160
    .local v8, "persistForce":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v14}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v14

    if-eqz v14, :cond_6

    sget-boolean v14, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v14, :cond_6

    .line 1161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v14}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v2

    .line 1164
    .local v2, "currentTime":J
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    if-eqz v8, :cond_7

    .line 1175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1191
    :cond_1
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v4, v14, v12

    .line 1192
    .local v4, "duration":J
    const-string/jumbo v14, "NetworkStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "performPollLocked() took "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v14}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getSampleEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1197
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->performSampleLocked()V

    .line 1201
    :cond_2
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v14, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v11, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    .local v11, "updatedIntent":Landroid/content/Intent;
    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v11, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1204
    const-string/jumbo v16, "android.permission.READ_NETWORK_USAGE_HISTORY"

    .line 1203
    move-object/from16 v0, v16

    invoke-virtual {v14, v11, v15, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1148
    return-void

    .line 1154
    .end local v2    # "currentTime":J
    .end local v4    # "duration":J
    .end local v8    # "persistForce":Z
    .end local v9    # "persistNetwork":Z
    .end local v10    # "persistUid":Z
    .end local v11    # "updatedIntent":Landroid/content/Intent;
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "persistNetwork":Z
    goto/16 :goto_0

    .line 1155
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "persistUid":Z
    goto/16 :goto_1

    .line 1156
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "persistForce":Z
    goto/16 :goto_2

    .line 1161
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .restart local v2    # "currentTime":J
    goto :goto_3

    .line 1168
    :catch_0
    move-exception v6

    .line 1170
    .local v6, "e":Landroid/os/RemoteException;
    return-void

    .line 1165
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 1166
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v14, "NetworkStats"

    const-string/jumbo v15, "problem reading network stats"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    return-void

    .line 1180
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_7
    if-eqz v9, :cond_8

    .line 1181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1184
    :cond_8
    if-eqz v10, :cond_1

    .line 1185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    goto/16 :goto_4
.end method

.method private performSampleLocked()V
    .locals 32

    .prologue
    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v2, :cond_0

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v26

    .line 1222
    .local v26, "trustedTime":J
    :goto_0
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v29

    .line 1223
    .local v29, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v28

    .line 1224
    .local v28, "devTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v31

    .line 1225
    .local v31, "xtTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v30

    .line 1228
    .local v30, "uidTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1229
    move-object/from16 v0, v31

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v0

    .line 1230
    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    .line 1227
    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJ)V

    .line 1234
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v29

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v28

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v31

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v30

    .line 1240
    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1241
    move-object/from16 v0, v31

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v0

    .line 1242
    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    .line 1239
    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsWifiSample(JJJJJJJJJJJJJ)V

    .line 1210
    return-void

    .line 1214
    .end local v26    # "trustedTime":J
    .end local v28    # "devTotal":Landroid/net/NetworkStats$Entry;
    .end local v29    # "template":Landroid/net/NetworkTemplate;
    .end local v30    # "uidTotal":Landroid/net/NetworkStats$Entry;
    .end local v31    # "xtTotal":Landroid/net/NetworkStats$Entry;
    :cond_0
    const-wide/16 v26, -0x1

    .restart local v26    # "trustedTime":J
    goto/16 :goto_0
.end method

.method private recordSnapshotLocked(J)V
    .locals 13
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1097
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail()Landroid/net/NetworkStats;

    move-result-object v10

    .line 1098
    .local v10, "uidSnapshot":Landroid/net/NetworkStats;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v12

    .line 1099
    .local v12, "xtSnapshot":Landroid/net/NetworkStats;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v1

    .line 1101
    .local v1, "devSnapshot":Landroid/net/NetworkStats;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v11

    .line 1102
    .local v11, "vpnArray":[Lcom/android/internal/net/VpnInfo;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1103
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object v5, v12

    move-object v7, v3

    move-wide v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1104
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object v3, v10

    move-object v5, v11

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1105
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object v3, v10

    move-object v5, v11

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1094
    return-void
.end method

.method private registerGlobalAlert()V
    .locals 6

    .prologue
    .line 475
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    invoke-interface {v2, v4, v5}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 473
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem registering for global alert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private registerPollAlarmLocked()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 456
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-static {v0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 463
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 464
    .local v2, "currentRealtime":J
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 465
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 464
    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 455
    return-void
.end method

.method private varargs removeUidsLocked([I)V
    .locals 4
    .param p1, "uids"    # [I

    .prologue
    .line 1250
    const-string/jumbo v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeUidsLocked() for UIDs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1255
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1256
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1259
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 1260
    .local v0, "uid":I
    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 1259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1249
    .end local v0    # "uid":I
    :cond_0
    return-void
.end method

.method private removeUserLocked(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 1268
    const-string/jumbo v5, "NetworkStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeUserLocked() for userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const/4 v5, 0x0

    new-array v4, v5, [I

    .line 1272
    .local v4, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1273
    const/16 v6, 0x2200

    .line 1272
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1274
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1275
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 1276
    .local v3, "uid":I
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    goto :goto_0

    .line 1279
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "uid":I
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    .line 1267
    return-void
.end method

.method private shutdownLocked()V
    .locals 3

    .prologue
    .line 397
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 401
    .local v0, "currentTime":J
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 402
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 403
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 404
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 382
    return-void

    .line 398
    .end local v0    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .restart local v0    # "currentTime":J
    goto :goto_0
.end method

.method private updateIfaces()V
    .locals 3

    .prologue
    .line 990
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 991
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 993
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 995
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 989
    return-void

    .line 994
    :catchall_0
    move-exception v0

    .line 995
    :try_start_3
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 994
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 990
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateIfacesLocked()V
    .locals 24

    .prologue
    .line 1007
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    return-void

    .line 1008
    :cond_0
    const-string/jumbo v19, "NetworkStats"

    const-string/jumbo v20, "updateIfacesLocked()"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1021
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v18

    .line 1022
    .local v18, "states":[Landroid/net/NetworkState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1028
    .local v2, "activeLink":Landroid/net/LinkProperties;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v19

    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->clear()V

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->clear()V

    .line 1034
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1035
    .local v12, "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v19, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    aget-object v17, v18, v19

    .line 1036
    .local v17, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1037
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getType()I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v11

    .line 1038
    .local v11, "isMobile":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    .line 1039
    .local v8, "ident":Landroid/net/NetworkIdentity;
    const-string/jumbo v21, "NetworkStats"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "NetworkIdentity: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 1043
    .local v3, "baseIface":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1046
    if-eqz v11, :cond_1

    .line 1047
    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1055
    :cond_1
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v16

    .line 1056
    .local v16, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "stackedLink$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/LinkProperties;

    .line 1057
    .local v14, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v14}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v13

    .line 1058
    .local v13, "stackedIface":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1060
    if-eqz v11, :cond_2

    .line 1061
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1023
    .end local v2    # "activeLink":Landroid/net/LinkProperties;
    .end local v3    # "baseIface":Ljava/lang/String;
    .end local v8    # "ident":Landroid/net/NetworkIdentity;
    .end local v11    # "isMobile":Z
    .end local v12    # "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "stackedIface":Ljava/lang/String;
    .end local v14    # "stackedLink":Landroid/net/LinkProperties;
    .end local v15    # "stackedLink$iterator":Ljava/util/Iterator;
    .end local v16    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v17    # "state":Landroid/net/NetworkState;
    .end local v18    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v4

    .line 1025
    .local v4, "e":Landroid/os/RemoteException;
    return-void

    .line 1028
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v2    # "activeLink":Landroid/net/LinkProperties;
    .restart local v18    # "states":[Landroid/net/NetworkState;
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1035
    .restart local v12    # "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "state":Landroid/net/NetworkState;
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 1068
    .end local v17    # "state":Landroid/net/NetworkState;
    :cond_5
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_7

    .line 1069
    const-string/jumbo v20, "NetworkStats"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "iface:"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/net/NetworkIdentitySet;

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "id$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkIdentity;

    .line 1071
    .local v6, "id":Landroid/net/NetworkIdentity;
    const-string/jumbo v19, "NetworkStats"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ident:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1068
    .end local v6    # "id":Landroid/net/NetworkIdentity;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1077
    .end local v7    # "id$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "iface$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1078
    .local v9, "iface":Ljava/lang/String;
    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 1079
    const-class v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    goto :goto_5

    .line 1006
    .end local v9    # "iface":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private updatePersistThresholds()V
    .locals 4

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 873
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 874
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 875
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 876
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v0, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getGlobalAlertBytes(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    .line 871
    return-void
.end method


# virtual methods
.method public advisePersistThreshold(J)V
    .locals 9
    .param p1, "thresholdBytes"    # J

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string/jumbo v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 841
    const-wide/32 v2, 0x20000

    const-wide/32 v4, 0x200000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 843
    const-string/jumbo v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "advisePersistThreshold() given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", clamped to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 844
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 843
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v6

    .line 851
    .local v6, "currentTime":J
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 852
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    .line 850
    .end local v6    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .restart local v6    # "currentTime":J
    goto :goto_0

    .line 854
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholds()V

    .line 856
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 857
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 858
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 859
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 863
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 836
    return-void

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 304
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 303
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rawWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.DUMP"

    const-string/jumbo v20, "NetworkStats"

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-wide/32 v12, 0x5265c00

    .line 1287
    .local v12, "duration":J
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1288
    .local v9, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p3

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v8, p3, v2

    .line 1289
    .local v8, "arg":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1291
    const-string/jumbo v20, "--duration="

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1293
    const/16 v20, 0xb

    :try_start_0
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 1288
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1300
    .end local v8    # "arg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "--poll"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "poll"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    .line 1301
    :goto_2
    const-string/jumbo v2, "--checkin"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 1302
    .local v10, "checkin":Z
    const-string/jumbo v2, "--full"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "full"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 1303
    :goto_3
    const-string/jumbo v2, "--uid"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "detail"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 1304
    :goto_4
    const-string/jumbo v2, "--tag"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "detail"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    .line 1306
    :goto_5
    new-instance v19, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "  "

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1308
    .local v19, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1309
    if-eqz v18, :cond_6

    .line 1310
    const/16 v2, 0x103

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1311
    const-string/jumbo v2, "Forced poll"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v20

    .line 1312
    return-void

    .line 1300
    .end local v10    # "checkin":Z
    .end local v19    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_2
    const/16 v18, 0x1

    .local v18, "poll":Z
    goto :goto_2

    .line 1302
    .end local v18    # "poll":Z
    .restart local v10    # "checkin":Z
    :cond_3
    const/4 v11, 0x1

    .local v11, "fullHistory":Z
    goto :goto_3

    .line 1303
    .end local v11    # "fullHistory":Z
    :cond_4
    const/16 v17, 0x1

    .local v17, "includeUid":Z
    goto :goto_4

    .line 1304
    .end local v17    # "includeUid":Z
    :cond_5
    const/16 v16, 0x1

    .local v16, "includeTag":Z
    goto :goto_5

    .line 1315
    .end local v16    # "includeTag":Z
    .restart local v19    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_6
    if-eqz v10, :cond_9

    .line 1316
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1317
    .local v6, "end":J
    sub-long v4, v6, v12

    .line 1319
    .local v4, "start":J
    const-string/jumbo v2, "v1,"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1320
    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    const/16 v2, 0x2c

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    .line 1321
    const-wide/16 v2, 0x3e8

    div-long v2, v6, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1323
    const-string/jumbo v2, "xt"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1326
    if-eqz v17, :cond_7

    .line 1327
    const-string/jumbo v2, "uid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1330
    :cond_7
    if-eqz v16, :cond_8

    .line 1331
    const-string/jumbo v2, "tag"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit v20

    .line 1334
    return-void

    .line 1337
    .end local v4    # "start":J
    .end local v6    # "end":J
    :cond_9
    :try_start_3
    const-string/jumbo v2, "Active interfaces:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1338
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1339
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v14, v2, :cond_a

    .line 1340
    const-string/jumbo v2, "iface"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1341
    const-string/jumbo v2, "ident"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1342
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1339
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1344
    :cond_a
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1346
    const-string/jumbo v2, "Active UID interfaces:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1348
    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v14, v2, :cond_b

    .line 1349
    const-string/jumbo v2, "iface"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1350
    const-string/jumbo v2, "ident"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1351
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1348
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 1353
    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1355
    const-string/jumbo v2, "Dev stats:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1358
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1360
    const-string/jumbo v2, "Xt stats:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1363
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1365
    if-eqz v17, :cond_c

    .line 1366
    const-string/jumbo v2, "UID stats:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1369
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1372
    :cond_c
    if-eqz v16, :cond_d

    .line 1373
    const-string/jumbo v2, "UID tag stats:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1376
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_d
    monitor-exit v20

    .line 1283
    return-void

    .line 1308
    .end local v14    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v20

    throw v2

    .line 1294
    .end local v10    # "checkin":Z
    .end local v19    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v8    # "arg":Ljava/lang/String;
    :catch_0
    move-exception v15

    .local v15, "ignored":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method public forceUpdate()V
    .locals 5

    .prologue
    .line 824
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string/jumbo v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 827
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 829
    .local v0, "token":J
    const/4 v2, 0x3

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    return-void

    .line 830
    :catchall_0
    move-exception v2

    .line 831
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 830
    throw v2
.end method

.method public forceUpdateIfaces()V
    .locals 5

    .prologue
    .line 811
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string/jumbo v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 816
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 810
    return-void

    .line 817
    :catchall_0
    move-exception v2

    .line 818
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 817
    throw v2
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .locals 9
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-eq v6, p1, :cond_0

    .line 737
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.ACCESS_NETWORK_STATE"

    const-string/jumbo v8, "NetworkStats"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 743
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 746
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v6, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 748
    .local v3, "networkLayer":Landroid/net/NetworkStats;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 752
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v3, v6}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    .line 754
    new-instance v0, Landroid/net/NetworkStats;

    .line 755
    invoke-virtual {v3}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v8

    .line 754
    invoke-direct {v0, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 757
    .local v0, "dataLayer":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 758
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 759
    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 760
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 761
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 758
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    .end local v0    # "dataLayer":Landroid/net/NetworkStats;
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "i":I
    .end local v3    # "networkLayer":Landroid/net/NetworkStats;
    :catchall_0
    move-exception v6

    .line 748
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 747
    throw v6

    .line 764
    .restart local v0    # "dataLayer":Landroid/net/NetworkStats;
    .restart local v2    # "i":I
    .restart local v3    # "networkLayer":Landroid/net/NetworkStats;
    :cond_1
    return-object v0
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string/jumbo v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 731
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementOperationCount(III)V
    .locals 19
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "operationCount"    # I

    .prologue
    .line 774
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move/from16 v0, p1

    if-eq v2, v0, :cond_0

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string/jumbo v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_0
    if-gez p3, :cond_1

    .line 779
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count can only be incremented"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 781
    :cond_1
    if-nez p2, :cond_2

    .line 782
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count must have specific tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 785
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 786
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 787
    .local v6, "set":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move/from16 v5, p1

    move/from16 v7, p2

    .line 787
    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    .line 790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move/from16 v5, p1

    .line 789
    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v18

    .line 773
    return-void

    .line 785
    .end local v6    # "set":I
    :catchall_0
    move-exception v2

    monitor-exit v18

    throw v2
.end method

.method public openSession()Landroid/net/INetworkStatsSession;
    .locals 2

    .prologue
    .line 485
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public openSessionForUsageStats(Ljava/lang/String;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 490
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkStatsService;->createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public setUidForeground(IZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .prologue
    .line 796
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string/jumbo v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 799
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 800
    .local v1, "set":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 801
    .local v0, "oldSet":I
    if-eq v0, v1, :cond_0

    .line 802
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 803
    const-string/jumbo v2, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKernelCounterSet uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " set="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-static {p1, v1}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 795
    return-void

    .line 799
    .end local v0    # "oldSet":I
    .end local v1    # "set":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "set":I
    goto :goto_0

    .line 798
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setUseTrustedTime(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1553
    sput-boolean p1, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    .line 1552
    return-void
.end method

.method public systemReady()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 308
    iput-boolean v10, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    .line 310
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 311
    const-string/jumbo v7, "NetworkStats"

    const-string/jumbo v8, "bandwidth controls disabled, unable to track stats"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 316
    :cond_0
    const-string/jumbo v7, "dev"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v8}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v8

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 317
    const-string/jumbo v7, "xt"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v8}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v8

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 318
    const-string/jumbo v7, "uid"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v8}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v8

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 319
    const-string/jumbo v7, "uid_tag"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v8}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v8

    invoke-direct {p0, v7, v8, v10}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 321
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholds()V

    .line 323
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 325
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->maybeUpgradeLegacyStatsLocked()V

    .line 329
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    .line 332
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStatsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 336
    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 337
    .local v5, "tetherFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v5, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 340
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v7, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 341
    .local v2, "pollFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v9, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v2, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 344
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.UID_REMOVED"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 345
    .local v3, "removedFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v3, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 348
    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.USER_REMOVED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 349
    .local v6, "userFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v6, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 352
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 354
    .local v4, "shutdownFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.IGNORE_DATA_USAGE_ALERT"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "ignoreAlertFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.intent.action.IGNORE_DATA_USAGE_ALERT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlertReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 364
    :try_start_1
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V

    .line 370
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 307
    return-void

    .line 323
    .end local v1    # "ignoreAlertFilter":Landroid/content/IntentFilter;
    .end local v2    # "pollFilter":Landroid/content/IntentFilter;
    .end local v3    # "removedFilter":Landroid/content/IntentFilter;
    .end local v4    # "shutdownFilter":Landroid/content/IntentFilter;
    .end local v5    # "tetherFilter":Landroid/content/IntentFilter;
    .end local v6    # "userFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 365
    .restart local v1    # "ignoreAlertFilter":Landroid/content/IntentFilter;
    .restart local v2    # "pollFilter":Landroid/content/IntentFilter;
    .restart local v3    # "removedFilter":Landroid/content/IntentFilter;
    .restart local v4    # "shutdownFilter":Landroid/content/IntentFilter;
    .restart local v5    # "tetherFilter":Landroid/content/IntentFilter;
    .restart local v6    # "userFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
