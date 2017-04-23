.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$Constants;,
        Lcom/android/server/AlarmManagerService$PriorityClass;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$DMReceiver;,
        Lcom/android/server/AlarmManagerService$1;,
        Lcom/android/server/AlarmManagerService$2;
    }
.end annotation


# static fields
.field static final ALARM_EVENT:I = 0x1

.field static final ClockReceiver_TAG:Ljava/lang/String; = "ClockReceiver"

.field static final DEBUG_ALARM_CLOCK:Z

.field static DEBUG_BATCH:Z = false

.field static DEBUG_VALIDATE:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field static final IS_WAKEUP_MASK:I = 0x5

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field static final RECORD_ALARMS_IN_HISTORY:Z = true

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field static final WAKEUP_STATS:Z

.field static localLOGV:Z

.field private static mAlarmMode:I

.field static final mBackgroundIntent:Landroid/content/Intent;

.field private static mSupportAlarmGrouping:Z

.field static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field final RECENT_WAKEUP_PERIOD:J

.field private dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

.field final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmIconPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAllowWhileIdleMinTime:J

.field private mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field final mConstants:Lcom/android/server/AlarmManagerService$Constants;

.field mCurrentSeq:I

.field private mDMEnable:Z

.field private mDMLock:Ljava/lang/Object;

.field private mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

.field mDateChangeSender:Landroid/app/PendingIntent;

.field private mDmFreeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mDmResendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIPOShutdown:Z

.field mIdleOptions:Landroid/os/Bundle;

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field mInteractive:Z

.field mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

.field mLastAlarmDeliveryTime:J

.field final mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

.field mLastTimeChangeClockTime:J

.field mLastTimeChangeRealtime:J

.field mLastWakeLockUnimportantForLogging:Z

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field private mMinimumPeriod_BlockSocket:J

.field mNativeData:J

.field private mNeedGrouping:Z

.field private mNeedToSetBlockSocket:Z

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPPLEnable:Z

.field mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field mPendingNonWakeupAlarmsTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field mPendingWhileIdleAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerOffAlarmLock:Ljava/lang/Object;

.field private final mPoweroffAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousTime_SetBlockSocket:J

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field mRandom:Ljava/util/Random;

.field final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field mTimeTickSender:Landroid/app/PendingIntent;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private mWaitThreadlock:Ljava/lang/Object;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/AlarmManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/AlarmManagerService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/server/AlarmManagerService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    return-wide p1
.end method

.method static synthetic -set5(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/AlarmManagerService;JJ)I
    .locals 1
    .param p1, "nativeData"    # J
    .param p3, "millis"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/AlarmManagerService;JI)I
    .locals 1
    .param p1, "nativeData"    # J
    .param p3, "minuteswest"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/AlarmManagerService;J)I
    .locals 1
    .param p1, "nativeData"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/AlarmManagerService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap5(Lcom/android/server/AlarmManagerService;J)V
    .locals 1
    .param p1, "nativeData"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->close(J)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->shutdownCheckPoweroffAlarm()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 120
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 121
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    .line 122
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 128
    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 131
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 135
    new-instance v0, Landroid/content/Intent;

    .line 136
    const-string/jumbo v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 135
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 144
    const/4 v0, 0x2

    sput v0, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 145
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    .line 648
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    .line 106
    return-void

    :cond_1
    move v0, v1

    .line 120
    goto :goto_0

    :cond_2
    move v0, v1

    .line 121
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 658
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string/jumbo v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 148
    iput v3, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarmsTemp:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 160
    new-instance v0, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 164
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 166
    iput-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    .line 167
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    .line 168
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mPreviousTime_SetBlockSocket:J

    .line 184
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    .line 192
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 191
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 194
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 193
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 196
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 195
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 201
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 200
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 329
    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 330
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    .line 331
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    .line 332
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    .line 333
    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 334
    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 335
    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 340
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    .line 362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 363
    iput v3, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 377
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 378
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 587
    new-instance v0, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 653
    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 654
    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 818
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    .line 819
    iput-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    .line 820
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 885
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 884
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 887
    iput v3, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 888
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 889
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1334
    new-instance v0, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 659
    new-instance v0, Lcom/android/server/AlarmManagerService$Constants;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/AlarmManagerService$Constants;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    .line 657
    return-void
.end method

.method private FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    .locals 17
    .param p3, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3273
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, "mDmFreeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "resendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3274
    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v15, 0x0

    .line 3275
    .local v15, "isFreeIntent":Z
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3276
    const/4 v15, 0x0

    .line 3277
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3279
    .local v10, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_5

    .line 3280
    iget-object v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3281
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v3, :cond_1

    .line 3282
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sending alarm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    :cond_1
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3284
    sget-object v4, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 3285
    const-string/jumbo v5, "android.intent.extra.ALARM_COUNT"

    iget v6, v10, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3284
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 3286
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 3283
    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 3288
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v3, :cond_2

    .line 3289
    iget-object v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v4, v10, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 3290
    iget v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v6, v10, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v2, p0

    .line 3289
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 3291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3294
    :cond_2
    new-instance v2, Lcom/android/server/AlarmManagerService$InFlight;

    .line 3295
    iget-object v4, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v6, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v7, v10, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    .line 3294
    invoke-direct/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;J)V

    .line 3297
    .local v2, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3298
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 3299
    iget-object v11, v2, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3300
    .local v11, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 3301
    iget v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v3, :cond_6

    .line 3302
    const/4 v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 3303
    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 3307
    :goto_2
    iget-object v13, v2, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 3308
    .local v13, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 3309
    iget v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v3, :cond_7

    .line 3310
    const/4 v3, 0x1

    iput v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 3311
    move-wide/from16 v0, p3

    iput-wide v0, v13, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 3315
    :goto_3
    iget v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 3316
    iget v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v3, :cond_4

    .line 3317
    :cond_3
    iget v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 3318
    iget v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 3322
    :cond_4
    const/4 v15, 0x1

    .line 3327
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v11    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_5
    if-nez v15, :cond_0

    .line 3328
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3329
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3305
    .restart local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v11    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_6
    iget v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3331
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v11    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_0
    move-exception v12

    .line 3332
    .local v12, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v4, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    goto/16 :goto_0

    .line 3313
    .end local v12    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v11    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v13    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_7
    :try_start_1
    iget v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 3279
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v11    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 3272
    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v14    # "i":I
    :cond_9
    return-void
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 3
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    const/4 v1, 0x0

    .line 688
    sget-object v2, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 689
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 690
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 692
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 693
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private addPoweroffAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 10
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 3445
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 3447
    .local v2, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    sget-object v7, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v2, p1, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 3448
    .local v3, "index":I
    if-gez v3, :cond_0

    .line 3449
    rsub-int/lit8 v7, v3, 0x0

    add-int/lit8 v3, v7, -0x1

    .line 3451
    :cond_0
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Adding alarm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    :cond_1
    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3454
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_2

    .line 3456
    const-string/jumbo v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "alarms: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    const/4 v4, 0x0

    .line 3458
    .local v4, "position":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "a$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3459
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 3460
    .local v5, "time":Landroid/text/format/Time;
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v5, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 3461
    const-string/jumbo v7, "%b %d %I:%M:%S %p"

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3462
    .local v6, "timeStr":Ljava/lang/String;
    const-string/jumbo v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3463
    const-string/jumbo v9, " "

    .line 3462
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3463
    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    .line 3462
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3468
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "a$iterator":Ljava/util/Iterator;
    .end local v4    # "position":I
    .end local v5    # "time":Landroid/text/format/Time;
    .end local v6    # "timeStr":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private native bootFromAlarm(I)Z
.end method

.method private native close(J)V
.end method

.method static convertToElapsed(JI)J
    .locals 6
    .param p0, "when"    # J
    .param p2, "type"    # I

    .prologue
    .line 663
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 664
    .local v0, "isRtc":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr p0, v2

    .line 667
    :cond_1
    return-wide p0

    .line 663
    .end local v0    # "isRtc":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isRtc":Z
    goto :goto_0
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2246
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2247
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2248
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v9

    .line 2249
    .local v9, "label":Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2250
    const-string/jumbo v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide/from16 v4, p5

    move-wide v6, p3

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2246
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2245
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9    # "label":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "nowRTC"    # J
    .param p6, "nowELAPSED"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2224
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2225
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2226
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2227
    const-string/jumbo v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2224
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2223
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 4

    .prologue
    .line 1854
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1855
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1856
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1857
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1858
    return-object v1

    .line 1855
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1861
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    .prologue
    .line 1995
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "EHm"

    .line 1996
    .local v1, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1997
    .local v0, "pattern":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string/jumbo v2, ""

    :goto_1
    return-object v2

    .line 1995
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "Ehma"

    .restart local v1    # "skeleton":Ljava/lang/String;
    goto :goto_0

    .line 1998
    .restart local v0    # "pattern":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static fuzzForDuration(J)I
    .locals 2
    .param p0, "duration"    # J

    .prologue
    .line 2529
    const-wide/32 v0, 0xdbba0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 2532
    long-to-int v0, p0

    return v0

    .line 2533
    :cond_0
    const-wide/32 v0, 0x5265c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 2535
    const v0, 0xdbba0

    return v0

    .line 2538
    :cond_1
    const v0, 0x1b7740

    return v0
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 3118
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    .line 3119
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    .line 3120
    .local v2, "uid":I
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 3121
    .local v3, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v3, :cond_0

    .line 3122
    new-instance v3, Landroid/util/ArrayMap;

    .end local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 3123
    .restart local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3125
    :cond_0
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3126
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_1

    .line 3127
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, v2, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    .line 3128
    .restart local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-virtual {v3, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3130
    :cond_1
    return-object v0
.end method

.method private native init()J
.end method

.method private isBootFromAlarm(I)Z
    .locals 1
    .param p1, "fd"    # I

    .prologue
    .line 3403
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->bootFromAlarm(I)Z

    move-result v0

    return v0
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 2233
    packed-switch p0, :pswitch_data_0

    .line 2241
    const-string/jumbo v0, "--unknown--"

    return-object v0

    .line 2234
    :pswitch_0
    const-string/jumbo v0, "RTC"

    return-object v0

    .line 2235
    :pswitch_1
    const-string/jumbo v0, "RTC_WAKEUP"

    return-object v0

    .line 2236
    :pswitch_2
    const-string/jumbo v0, "ELAPSED"

    return-object v0

    .line 2237
    :pswitch_3
    const-string/jumbo v0, "ELAPSED_WAKEUP"

    return-object v0

    .line 2233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .locals 12
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 1818
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v9, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1819
    .local v9, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1820
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1821
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1822
    .local v4, "nowELAPSED":J
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1823
    .local v0, "NZ":I
    const/4 v11, 0x0

    .local v11, "iz":I
    :goto_0
    if-ge v11, v0, :cond_0

    .line 1824
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Batch;

    .line 1825
    .local v10, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string/jumbo v2, "Batch "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1826
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string/jumbo v3, "  "

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1827
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1828
    const-string/jumbo v2, "AlarmManager"

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1823
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1817
    .end local v10    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .locals 6
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .prologue
    .line 677
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 678
    sub-long v0, p2, p0

    .line 680
    .local v0, "futurity":J
    :goto_0
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 681
    const-wide/16 v0, 0x0

    .line 683
    :cond_0
    long-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p2

    return-wide v2

    .line 679
    .end local v0    # "futurity":J
    :cond_1
    move-wide v0, p4

    .restart local v0    # "futurity":J
    goto :goto_0
.end method

.method private removeLocked(Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v7, 0x0

    .line 2038
    const/4 v1, 0x0

    .line 2039
    .local v1, "didRemove":Z
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .end local v1    # "didRemove":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2040
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2041
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 2042
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 2043
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2039
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2046
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "didRemove":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 2047
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2049
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2046
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2053
    :cond_3
    if-eqz v1, :cond_7

    .line 2055
    const-string/jumbo v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove(operation) changed bounds; rebatching operation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    const/4 v3, 0x0

    .line 2058
    .local v3, "restorePending":Z
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2059
    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2060
    const/4 v3, 0x1

    .line 2062
    :cond_4
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2063
    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2066
    :cond_5
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_8

    .line 2067
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2072
    :goto_2
    if-eqz v3, :cond_6

    .line 2073
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 2075
    :cond_6
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2037
    .end local v3    # "restorePending":Z
    :cond_7
    return-void

    .line 2069
    .restart local v3    # "restorePending":Z
    :cond_8
    const-string/jumbo v4, "AlarmManager"

    const-string/jumbo v5, "mAlarmBatches.size() is larger than 300 , do not rebatch"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private removePoweroffAlarmLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3472
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 3473
    .local v1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 3474
    return-void

    .line 3478
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3480
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3481
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3482
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3483
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3471
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    return-void
.end method

.method private resendDmPendingList(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3345
    .local p1, "DmResendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 3346
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3347
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3349
    .local v8, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v1, :cond_1

    .line 3350
    const-string/jumbo v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending alarm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    :cond_1
    iget-object v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3352
    sget-object v2, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 3353
    const-string/jumbo v3, "android.intent.extra.ALARM_COUNT"

    iget v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3352
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 3354
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 3351
    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 3357
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v1, :cond_2

    .line 3358
    iget-object v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 3359
    iget v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    .line 3358
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 3360
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3362
    :cond_2
    new-instance v0, Lcom/android/server/AlarmManagerService$InFlight;

    .line 3363
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v5, v8, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object v1, p0

    .line 3362
    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;J)V

    .line 3364
    .local v0, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3365
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 3366
    iget-object v9, v0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3367
    .local v9, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 3368
    iget v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v1, :cond_4

    .line 3369
    const/4 v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 3370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 3374
    :goto_1
    iget-object v11, v0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 3375
    .local v11, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 3376
    iget v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v1, :cond_5

    .line 3377
    const/4 v1, 0x1

    iput v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 3378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 3382
    :goto_2
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 3383
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v1, :cond_0

    .line 3384
    :cond_3
    iget v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 3385
    iget v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3389
    .end local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :catch_0
    move-exception v10

    .line 3390
    .local v10, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    goto/16 :goto_0

    .line 3372
    .end local v10    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_4
    :try_start_1
    iget v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    goto :goto_1

    .line 3380
    .restart local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_5
    iget v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3344
    .end local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_6
    return-void
.end method

.method private resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 14
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v3, 0x7

    const-wide/16 v12, 0x3e8

    .line 3494
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    .line 3495
    .local v10, "setPackageName":Ljava/lang/String;
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3498
    .local v8, "latestTime":J
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 3500
    const-string/jumbo v0, "com.android.deskclock"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.lenovo.deskclock"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3502
    :cond_0
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " set Prop 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    const-string/jumbo v0, "persist.sys.bootpackage"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3505
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    div-long v4, v8, v12

    rem-long v6, v8, v12

    mul-long/2addr v6, v12

    mul-long/2addr v6, v12

    const/4 v3, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 3522
    :goto_0
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetPoweroffAlarm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v2, v8, v12

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    const-string/jumbo v0, "sys.power_off_alarm"

    div-long v2, v8, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3492
    :goto_1
    return-void

    .line 3506
    :cond_1
    const-string/jumbo v0, "com.mediatek.schpwronoff"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3507
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " set Prop 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    const-string/jumbo v0, "persist.sys.bootpackage"

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3510
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    div-long v4, v8, v12

    rem-long v6, v8, v12

    mul-long/2addr v6, v12

    mul-long/2addr v6, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    goto :goto_0

    .line 3512
    :cond_2
    const-string/jumbo v0, "com.mediatek.poweronofftest"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3513
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " set Prop 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    const-string/jumbo v0, "persist.sys.bootpackage"

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    div-long v4, v8, v12

    rem-long v6, v8, v12

    mul-long/2addr v6, v12

    mul-long/2addr v6, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    goto/16 :goto_0

    .line 3518
    :cond_3
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown package ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") to set power off alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3525
    :cond_4
    const-string/jumbo v0, "AlarmManager"

    const-string/jumbo v1, " do not set alarm to RTC when fd close "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private sendNextAlarmClockChanged()V
    .locals 8

    .prologue
    .line 1962
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1963
    .local v3, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1965
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v6, "sendNextAlarmClockChanged begin"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1967
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 1968
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1969
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 1970
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1968
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1972
    .end local v4    # "userId":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1975
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1976
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 1977
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1978
    .restart local v4    # "userId":I
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1979
    .local v1, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1980
    const-string/jumbo v6, "next_alarm_formatted"

    .line 1981
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v4}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v7

    .line 1979
    invoke-static {v5, v6, v7, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1984
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 1985
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 1984
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1976
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1966
    .end local v0    # "N":I
    .end local v1    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v2    # "i":I
    .end local v4    # "userId":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1987
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v6, "sendNextAlarmClockChanged end"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    return-void
.end method

.method private native set(JIJJ)V
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V
    .locals 20
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "flags"    # I
    .param p14, "doValidate"    # Z
    .param p15, "workSource"    # Landroid/os/WorkSource;
    .param p16, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p17, "uid"    # I
    .param p18, "mNeedGrouping"    # Z

    .prologue
    .line 1219
    new-instance v2, Lcom/android/server/AlarmManagerService$Alarm;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move-object/from16 v15, p15

    move/from16 v16, p13

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    invoke-direct/range {v2 .. v19}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 1221
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 1222
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1218
    return-void
.end method

.method private setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .locals 12
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rebatching"    # Z
    .param p3, "doValidate"    # Z

    .prologue
    .line 1226
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_a

    .line 1231
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_0

    .line 1232
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1235
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1236
    .local v4, "nowElapsed":J
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->fuzzForDuration(J)I

    move-result v2

    .line 1237
    .local v2, "fuzz":I
    if-lez v2, :cond_2

    .line 1238
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    if-nez v7, :cond_1

    .line 1239
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    .line 1241
    :cond_1
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 1242
    .local v1, "delta":I
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1250
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1264
    .end local v1    # "delta":I
    .end local v2    # "fuzz":I
    .end local v4    # "nowElapsed":J
    :cond_2
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v7, :cond_3

    .line 1265
    const-string/jumbo v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "a.whenElapsed ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1266
    const-string/jumbo v9, " a.needGrouping= "

    .line 1265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1266
    iget-boolean v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    .line 1265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1267
    const-string/jumbo v9, "  a.flags= "

    .line 1265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1267
    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    .line 1265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_3
    iget-boolean v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    if-nez v7, :cond_b

    .line 1273
    const/4 v6, -0x1

    .line 1274
    .local v6, "whichBatch":I
    :goto_0
    const-string/jumbo v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " whichBatch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    if-gez v6, :cond_c

    .line 1276
    new-instance v0, Lcom/android/server/AlarmManagerService$Batch;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1277
    .local v0, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v7, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 1289
    :cond_4
    :goto_1
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v7, :cond_5

    .line 1290
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1293
    :cond_5
    const/4 v3, 0x0

    .line 1295
    .local v3, "needRebatch":Z
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_d

    .line 1296
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1297
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    .line 1298
    const/4 v3, 0x1

    .line 1311
    :cond_6
    :goto_2
    if-nez p2, :cond_9

    .line 1312
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v7, :cond_7

    .line 1313
    if-eqz p3, :cond_7

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->validateConsistencyLocked()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1325
    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 1326
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1329
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1330
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1225
    :cond_9
    return-void

    .line 1253
    .end local v0    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "needRebatch":Z
    .end local v6    # "whichBatch":I
    :cond_a
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_2

    .line 1256
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0xe

    if-nez v7, :cond_2

    .line 1260
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    return-void

    .line 1273
    :cond_b
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v6

    .restart local v6    # "whichBatch":I
    goto :goto_0

    .line 1279
    :cond_c
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1280
    .restart local v0    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    const-string/jumbo v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " alarm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " add to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1284
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1285
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v7, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto/16 :goto_1

    .line 1299
    .restart local v3    # "needRebatch":Z
    :cond_d
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    .line 1300
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    .line 1301
    :cond_e
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1305
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_6

    .line 1306
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1314
    :cond_f
    const-string/jumbo v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Tipping-point operation: type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " when="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1315
    const-string/jumbo v9, " when(hex)="

    .line 1314
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1315
    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    .line 1314
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1316
    const-string/jumbo v9, " whenElapsed="

    .line 1314
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1316
    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1314
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1317
    const-string/jumbo v9, " maxWhenElapsed="

    .line 1314
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1317
    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1314
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1318
    const-string/jumbo v9, " interval="

    .line 1314
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1318
    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1314
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1318
    const-string/jumbo v9, " op="

    .line 1314
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1318
    iget-object v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 1314
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1319
    const-string/jumbo v9, " flags=0x"

    .line 1314
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1319
    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 1314
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1321
    const/4 v3, 0x0

    goto/16 :goto_3
.end method

.method private native setKernelTime(JJ)I
.end method

.method private native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "when"    # J

    .prologue
    .line 2199
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2203
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 2204
    const-wide/16 v4, 0x0

    .line 2205
    .local v4, "alarmSeconds":J
    const-wide/16 v6, 0x0

    .line 2210
    .local v6, "alarmNanoseconds":J
    :goto_0
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set alarm to RTC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 2198
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :goto_1
    return-void

    .line 2207
    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v4, p2, v0

    .line 2208
    .restart local v4    # "alarmSeconds":J
    const-wide/16 v0, 0x3e8

    rem-long v0, p2, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v6, v0, v2

    .restart local v6    # "alarmNanoseconds":J
    goto :goto_0

    .line 2213
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :cond_1
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the mNativeData from RTC is abnormal,  mNativeData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 2215
    .local v8, "msg":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v8, Landroid/os/Message;->what:I

    .line 2217
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 2218
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v8, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private shutdownCheckPoweroffAlarm()V
    .locals 22

    .prologue
    .line 3563
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v3, "into shutdownCheckPoweroffAlarm()!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    const/4 v15, 0x0

    .line 3566
    .local v15, "setPackageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3567
    .local v16, "nowTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3568
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 3569
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3570
    .end local v15    # "setPackageName":Ljava/lang/String;
    .local v14, "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3571
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3572
    .local v10, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3573
    .local v12, "latestTime":J
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v15

    .line 3575
    .local v15, "setPackageName":Ljava/lang/String;
    const-wide/16 v2, 0x7530

    sub-long v2, v12, v2

    cmp-long v2, v2, v16

    if-gtz v2, :cond_0

    .line 3576
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v3, "get target latestTime < 30S!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3567
    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v12    # "latestTime":J
    .end local v14    # "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v15    # "setPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v19

    throw v2

    .line 3580
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v14    # "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 3581
    .local v18, "tempIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3582
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3583
    .restart local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3585
    .restart local v12    # "latestTime":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 3586
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    iget v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const-wide/16 v6, 0x3e8

    div-long v6, v12, v6

    const-wide/16 v8, 0x3e8

    rem-long v8, v12, v8

    const-wide/16 v20, 0x3e8

    mul-long v8, v8, v20

    const-wide/16 v20, 0x3e8

    mul-long v8, v8, v20

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v12    # "latestTime":J
    :cond_3
    monitor-exit v19

    .line 3590
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v3, "away shutdownCheckPoweroffAlarm()!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    return-void
.end method

.method private updateNextAlarmClockLocked()V
    .locals 17

    .prologue
    .line 1880
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v13, :cond_0

    .line 1881
    return-void

    .line 1883
    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1885
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1886
    .local v11, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    .line 1888
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1889
    .local v2, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_4

    .line 1890
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 1891
    .local v6, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1893
    .local v1, "M":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v1, :cond_3

    .line 1894
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1895
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v13, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v13, :cond_2

    .line 1896
    iget v13, v5, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1898
    .local v12, "userId":I
    sget-boolean v13, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v13, :cond_1

    .line 1899
    const-string/jumbo v13, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Found AlarmClockInfo at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1900
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v15

    iget-object v0, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v0, v12}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v15

    .line 1899
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1901
    const-string/jumbo v15, " for user "

    .line 1899
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_1
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_2

    .line 1906
    iget-object v13, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1893
    .end local v12    # "userId":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1889
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1913
    .end local v1    # "M":I
    .end local v6    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v9    # "j":I
    :cond_4
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1914
    .local v3, "NN":I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_6

    .line 1915
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1916
    .local v10, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1917
    .restart local v12    # "userId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1918
    .local v7, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v10, v7}, Landroid/app/AlarmManager$AlarmClockInfo;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1919
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1914
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1924
    .end local v7    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v10    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v12    # "userId":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1925
    .local v4, "NNN":I
    add-int/lit8 v8, v4, -0x1

    :goto_3
    if-ltz v8, :cond_8

    .line 1926
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1927
    .restart local v12    # "userId":I
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_7

    .line 1928
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1925
    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 1879
    .end local v12    # "userId":I
    :cond_8
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v3, 0x4

    .line 1935
    if-eqz p2, :cond_1

    .line 1936
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v0, :cond_0

    .line 1937
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Next AlarmClockInfoForUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1938
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, p1}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v2

    .line 1937
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1948
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1949
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 1950
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 1934
    return-void

    .line 1942
    :cond_1
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v0, :cond_2

    .line 1943
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Next AlarmClockInfoForUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): None"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private updatePoweroffAlarm(J)V
    .locals 7
    .param p1, "nowRTC"    # J

    .prologue
    .line 3411
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3413
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    .line 3415
    return-void

    .line 3418
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v4, p1

    if-lez v2, :cond_1

    monitor-exit v3

    .line 3420
    return-void

    .line 3423
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3425
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3427
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3429
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v2, v4, p1

    if-lez v2, :cond_4

    .line 3438
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 3439
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit v3

    .line 3409
    return-void

    .line 3433
    .restart local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    :try_start_3
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v4, "power off alarm update deleted"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3411
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private validateConsistencyLocked()Z
    .locals 9

    .prologue
    .line 1834
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v6, :cond_1

    .line 1835
    const-wide/high16 v4, -0x8000000000000000L

    .line 1836
    .local v4, "lastTime":J
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1837
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1838
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1839
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v6, v6, v4

    if-ltz v6, :cond_0

    .line 1841
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 1837
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1843
    :cond_0
    const-string/jumbo v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CONSISTENCY FAILURE: Batch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is out of order"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1845
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService;->logBatchesLocked(Ljava/text/SimpleDateFormat;)V

    .line 1846
    const/4 v6, 0x0

    return v6

    .line 1850
    .end local v0    # "N":I
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "lastTime":J
    :cond_1
    const/4 v6, 0x1

    return v6
.end method

.method private native waitForAlarm(J)I
.end method


# virtual methods
.method attemptCoalesceLocked(JJ)I
    .locals 5
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 698
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 699
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 700
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 703
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 704
    return v2

    .line 699
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 707
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v3, -0x2

    return v3
.end method

.method public bootFromPoweroffAlarm()Z
    .locals 3

    .prologue
    .line 1025
    const-string/jumbo v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1027
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 1026
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 610
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 611
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 612
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 615
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-string/jumbo v5, "android.intent.action.TIME_TICK"

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 616
    const/4 v2, 0x0

    .line 623
    .local v2, "alarmPrio":I
    :goto_1
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 624
    .local v4, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    check-cast v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 625
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_0
    if-nez v4, :cond_1

    .line 626
    new-instance v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 627
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_1
    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 631
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    iget v6, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    if-eq v5, v6, :cond_5

    .line 633
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 634
    iget v5, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    iput v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    .line 611
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 617
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_3
    iget-boolean v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v5, :cond_4

    .line 618
    const/4 v2, 0x1

    .restart local v2    # "alarmPrio":I
    goto :goto_1

    .line 620
    .end local v2    # "alarmPrio":I
    :cond_4
    const/4 v2, 0x2

    .restart local v2    # "alarmPrio":I
    goto :goto_1

    .line 639
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_5
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v2, v5, :cond_2

    .line 640
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    goto :goto_2

    .line 609
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_6
    return-void
.end method

.method public cancelPoweroffAlarmImpl(Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 3534
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove power off alarm pacakge name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3537
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removePoweroffAlarmLocked(Ljava/lang/String;)V

    .line 3540
    const-string/jumbo v0, "persist.sys.bootpackage"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3541
    .local v8, "bootReason":Ljava/lang/String;
    if-eqz v8, :cond_1

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3543
    const-string/jumbo v0, "1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "com.android.deskclock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.lenovo.deskclock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3545
    :cond_0
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 3546
    const-string/jumbo v0, "sys.power_off_alarm"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3554
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v9

    .line 3533
    return-void

    .line 3547
    :cond_3
    :try_start_1
    const-string/jumbo v0, "2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "com.mediatek.schpwronoff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3548
    const-string/jumbo v0, "com.mediatek.poweronofftest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3547
    if-eqz v0, :cond_1

    .line 3549
    :cond_4
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 3550
    const-string/jumbo v0, "sys.power_off_alarm"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3536
    .end local v8    # "bootReason":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .locals 9
    .param p1, "nowELAPSED"    # J

    .prologue
    const/4 v2, 0x0

    .line 2543
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eqz v3, :cond_0

    .line 2544
    return v2

    .line 2546
    :cond_0
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 2547
    return v2

    .line 2549
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v3, v4, p1

    if-gez v3, :cond_2

    .line 2553
    return v2

    .line 2555
    :cond_2
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v0, p1, v4

    .line 2556
    .local v0, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gtz v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method protected configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1493
    array-length v3, p2

    if-lt p3, v3, :cond_0

    .line 1494
    const-string/jumbo v3, "  Invalid argument!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    :goto_0
    add-int/lit8 v2, p3, 0x1

    .line 1519
    .local v2, "optiSocketPeriod":I
    array-length v3, p2

    if-lt v2, v3, :cond_6

    .line 1520
    const-string/jumbo v3, "  Invalid minimum socket block period index!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    :goto_1
    return-void

    .line 1496
    .end local v2    # "optiSocketPeriod":I
    :cond_0
    const-string/jumbo v3, "on"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1497
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 1498
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 1499
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    goto :goto_0

    .line 1500
    :cond_1
    const-string/jumbo v3, "off"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1501
    sput-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 1502
    sput-boolean v5, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 1503
    sput-boolean v5, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    goto :goto_0

    .line 1504
    :cond_2
    const-string/jumbo v3, "0"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1505
    sput v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 1506
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAlarmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1507
    :cond_3
    const-string/jumbo v3, "1"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1508
    sput v6, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 1509
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAlarmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1510
    :cond_4
    const-string/jumbo v3, "2"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1511
    const/4 v3, 0x2

    sput v3, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 1512
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAlarmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1514
    :cond_5
    const-string/jumbo v3, "  Invalid argument!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1523
    .restart local v2    # "optiSocketPeriod":I
    :cond_6
    :try_start_0
    aget-object v1, p2, v2

    .line 1524
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 1525
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    .line 1526
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMinimumPeriod_BlockSocket(secs) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1527
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 1526
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1532
    .end local v1    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1533
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1534
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "socket block period exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1530
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string/jumbo v3, "  Invalid minimum socket block period!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method currentNonWakeupFuzzLocked(J)J
    .locals 5
    .param p1, "nowELAPSED"    # J

    .prologue
    .line 2512
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v2

    .line 2513
    .local v0, "timeSinceOn":J
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 34
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2560
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 2561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 2562
    .local v28, "nowRTC":J
    const/16 v26, 0x0

    .line 2564
    .local v26, "needRebatch":Z
    const/16 v27, 0x0

    .line 2566
    .local v27, "openLteGateSuccess":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    if-nez v5, :cond_0

    .line 2567
    const-string/jumbo v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    .line 2568
    .local v15, "b":Landroid/os/IBinder;
    invoke-static {v15}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    .line 2570
    const-string/jumbo v5, "data_shaping"

    .line 2569
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/mediatek/datashaping/IDataShapingManager;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    .line 2573
    .end local v15    # "b":Landroid/os/IBinder;
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    if-eqz v5, :cond_1

    .line 2575
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/mediatek/datashaping/IDataShapingManager;->openLteDataUpLinkGate(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v27

    .line 2581
    .end local v27    # "openLteGateSuccess":Z
    :cond_1
    :goto_0
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "openLteGateSuccess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    if-eqz v5, :cond_3

    .line 2585
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2586
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mPreviousTime_SetBlockSocket:J

    .line 2585
    sub-long v32, v6, v8

    .line 2587
    .local v32, "socktUnblockingTimeElapsed":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    cmp-long v5, v32, v6

    if-ltz v5, :cond_7

    .line 2591
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    if-nez v5, :cond_2

    .line 2592
    const-string/jumbo v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    .line 2593
    .local v16, "b1":Landroid/os/IBinder;
    invoke-static/range {v16 .. v16}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    .line 2596
    .end local v16    # "b1":Landroid/os/IBinder;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mPreviousTime_SetBlockSocket:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2605
    .end local v32    # "socktUnblockingTimeElapsed":J
    :cond_3
    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    .line 2608
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v22

    if-ge v0, v5, :cond_5

    .line 2609
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2610
    .local v12, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_8

    const/4 v14, 0x1

    .line 2612
    .local v14, "allowWhileIdle":Z
    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->updatePoweroffAlarm(J)V

    .line 2615
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2616
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    if-nez v5, :cond_9

    .line 2617
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/AlarmManagerService;->FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    .line 2738
    .end local v12    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v14    # "allowWhileIdle":Z
    :cond_5
    if-eqz v26, :cond_6

    .line 2739
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v6, " deliverAlarmsLocked removeInvalidAlarmLocked then rebatch "

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2741
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2742
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2559
    :cond_6
    return-void

    .line 2576
    .end local v22    # "i":I
    .restart local v27    # "openLteGateSuccess":Z
    :catch_0
    move-exception v19

    .line 2577
    .local v19, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error openLteDataUpLinkGate false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2597
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v27    # "openLteGateSuccess":Z
    .restart local v32    # "socktUnblockingTimeElapsed":J
    :catch_1
    move-exception v19

    .line 2598
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error setBlockUplinkSocket false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2601
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_7
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "socktUnblockingTimeElapsed(ms): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2602
    const-string/jumbo v7, " < mMinimumPeriod_BlockSocket: "

    .line 2601
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2602
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    .line 2601
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2610
    .end local v32    # "socktUnblockingTimeElapsed":J
    .restart local v12    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v22    # "i":I
    :cond_8
    const/4 v14, 0x0

    .restart local v14    # "allowWhileIdle":Z
    goto/16 :goto_3

    :cond_9
    monitor-exit v11

    .line 2624
    const-string/jumbo v5, "ro.mtk_ipo_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2625
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v5, :cond_b

    .line 2608
    :cond_a
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 2615
    :catchall_0
    move-exception v5

    monitor-exit v11

    throw v5

    .line 2632
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v5, :cond_f

    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_c

    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_f

    .line 2633
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2634
    .local v13, "alarmString":Ljava/lang/String;
    const/16 v23, 0x1

    .line 2635
    .local v23, "isAddAlarms":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarmsTemp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 2636
    .local v30, "sizeAlarmsTemp":I
    const/16 v24, 0x0

    .line 2638
    .local v24, "j":I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    if-eqz v23, :cond_e

    .line 2639
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarmsTemp:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2640
    .local v25, "mAlarmString":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2641
    const/16 v23, 0x0

    .line 2643
    :cond_d
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 2646
    .end local v25    # "mAlarmString":Ljava/lang/String;
    :cond_e
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPendingNonWakeupAlarmsTemp.isAddAlarms = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    if-eqz v23, :cond_a

    .line 2648
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarmsTemp:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2658
    .end local v13    # "alarmString":Ljava/lang/String;
    .end local v23    # "isAddAlarms":Z
    .end local v24    # "j":I
    .end local v30    # "sizeAlarmsTemp":I
    :cond_f
    :try_start_3
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sending alarm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v5, :cond_10

    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_11

    .line 2661
    :cond_10
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wakeup alarm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; package = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2662
    const-string/jumbo v7, "needGrouping = "

    .line 2661
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2662
    iget-boolean v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    .line 2661
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_11
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_12

    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_12

    .line 2666
    const/16 v31, 0x0

    .local v31, "wi":I
    :goto_6
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    move/from16 v0, v31

    if-ge v0, v5, :cond_13

    .line 2668
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    iget-object v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    .line 2667
    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2666
    add-int/lit8 v31, v31, 0x1

    goto :goto_6

    .line 2672
    .end local v31    # "wi":I
    :cond_12
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v7, -0x1

    .line 2671
    invoke-static {v5, v7, v6}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2675
    :cond_13
    iget-object v4, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 2676
    sget-object v6, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 2677
    const-string/jumbo v7, "android.intent.extra.ALARM_COUNT"

    iget v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2676
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 2678
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    .line 2675
    :goto_7
    const/4 v6, 0x0

    .line 2678
    const/4 v10, 0x0

    .line 2675
    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2680
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sending alarm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " success"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v5, :cond_14

    .line 2683
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 2684
    iget v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v4, p0

    .line 2683
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 2685
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2687
    :cond_14
    new-instance v4, Lcom/android/server/AlarmManagerService$InFlight;

    .line 2688
    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v9, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    move-object/from16 v5, p0

    move-wide/from16 v10, p2

    .line 2687
    invoke-direct/range {v4 .. v11}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;J)V

    .line 2689
    .local v4, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2690
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2692
    if-eqz v14, :cond_15

    .line 2694
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    iget v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move-wide/from16 v0, p2

    invoke-virtual {v5, v6, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2697
    :cond_15
    iget-object v0, v4, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-object/from16 v17, v0

    .line 2698
    .local v17, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v17

    iput v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 2699
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v5, :cond_18

    .line 2700
    const/4 v5, 0x1

    move-object/from16 v0, v17

    iput v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2701
    move-wide/from16 v0, p2

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 2705
    :goto_8
    iget-object v0, v4, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v21, v0

    .line 2706
    .local v21, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v21

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2707
    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v5, :cond_19

    .line 2708
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2709
    move-wide/from16 v0, p2

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 2713
    :goto_9
    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_16

    .line 2714
    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v5, :cond_a

    .line 2715
    :cond_16
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v17

    iput v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2716
    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v21

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 2717
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_1a

    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_1a

    .line 2718
    const/16 v31, 0x0

    .restart local v31    # "wi":I
    :goto_a
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    move/from16 v0, v31

    if-ge v0, v5, :cond_a

    .line 2720
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 2721
    iget-object v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    .line 2719
    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    .line 2718
    add-int/lit8 v31, v31, 0x1

    goto :goto_a

    .line 2678
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v17    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v21    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v31    # "wi":I
    :cond_17
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 2703
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v17    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_18
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v17

    iput v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    .line 2728
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v17    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_2
    move-exception v18

    .line 2729
    .local v18, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_a

    .line 2732
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/AlarmManagerService;->removeInvalidAlarmLocked(Landroid/app/PendingIntent;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v26, 0x1

    goto/16 :goto_4

    .line 2711
    .end local v18    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v17    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v21    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_19
    :try_start_4
    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v21

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    .line 2734
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v17    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v21    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :catch_3
    move-exception v20

    .line 2735
    .local v20, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v6, "Failure sending alarm."

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 2725
    .end local v20    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v17    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v21    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1a
    :try_start_5
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 2724
    invoke-static {v5, v7, v8, v6}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_4
.end method

.method dumpImpl(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 50
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1544
    const/16 v38, 0x0

    .line 1545
    .local v38, "opti":I
    :goto_0
    move-object/from16 v0, p2

    array-length v5, v0

    move/from16 v0, v38

    if-ge v0, v5, :cond_0

    .line 1546
    aget-object v33, p2, v38

    .line 1547
    .local v33, "opt":Ljava/lang/String;
    if-eqz v33, :cond_0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 1563
    .end local v33    # "opt":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    array-length v5, v0

    move/from16 v0, v38

    if-ge v0, v5, :cond_3

    .line 1564
    aget-object v23, p2, v38

    .line 1565
    .local v23, "cmd":Ljava/lang/String;
    add-int/lit8 v38, v38, 0x1

    .line 1566
    const-string/jumbo v5, "log"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1567
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 1568
    return-void

    .line 1547
    .end local v23    # "cmd":Ljava/lang/String;
    .restart local v33    # "opt":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    .line 1550
    add-int/lit8 v38, v38, 0x1

    .line 1551
    const-string/jumbo v5, "-h"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1552
    const-string/jumbo v5, "alarm manager dump options:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1553
    const-string/jumbo v5, "  log  [on/off]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1554
    const-string/jumbo v5, "  Example:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1555
    const-string/jumbo v5, "  $adb shell dumpsys alarm log on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1556
    const-string/jumbo v5, "  $adb shell dumpsys alarm log off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    return-void

    .line 1559
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; use -h for help"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1572
    .end local v33    # "opt":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v49, v0

    monitor-enter v49

    .line 1573
    :try_start_0
    const-string/jumbo v5, "Current Alarm Manager state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/AlarmManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 1575
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1578
    .local v10, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1579
    .local v8, "nowELAPSED":J
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v12, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v5, "  nowRTC="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1582
    const-string/jumbo v5, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1583
    const-string/jumbo v5, " nowELAPSED="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1584
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1585
    const-string/jumbo v5, "  mLastTimeChangeClockTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1586
    const-string/jumbo v5, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    const-string/jumbo v5, "  mLastTimeChangeRealtime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1588
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1589
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1590
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v5, :cond_4

    .line 1591
    const-string/jumbo v5, "  Time since non-interactive: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1592
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1593
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1594
    const-string/jumbo v5, "  Max wakeup delay: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1595
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1596
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1597
    const-string/jumbo v5, "  Time since last dispatch: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1598
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1599
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1600
    const-string/jumbo v5, "  Next non-wakeup delivery time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1601
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1602
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1605
    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v14, v10, v8

    add-long v36, v6, v14

    .line 1606
    .local v36, "nextWakeupRTC":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v14, v10, v8

    add-long v34, v6, v14

    .line 1607
    .local v34, "nextNonWakeupRTC":J
    const-string/jumbo v5, "  Next non-wakeup alarm: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1608
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1609
    const-string/jumbo v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v34

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1610
    const-string/jumbo v5, "  Next wakeup: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1611
    const-string/jumbo v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v36

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    const-string/jumbo v5, "  Num time change events: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1614
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1615
    const-string/jumbo v5, "  Next alarm clock information: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1616
    new-instance v48, Ljava/util/TreeSet;

    invoke-direct/range {v48 .. v48}, Ljava/util/TreeSet;-><init>()V

    .line 1617
    .local v48, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_5

    .line 1618
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1617
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 1620
    :cond_5
    const/16 v27, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_6

    .line 1621
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1620
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 1623
    :cond_6
    invoke-interface/range {v48 .. v48}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .local v47, "user$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v46

    .line 1624
    .local v46, "user":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1625
    .local v32, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v32, :cond_8

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v42

    .line 1626
    .local v42, "time":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v39

    .line 1627
    .local v39, "pendingSend":Z
    const-string/jumbo v5, "    user:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1628
    const-string/jumbo v5, " pendingSend:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1629
    const-string/jumbo v5, " time:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1630
    const-wide/16 v6, 0x0

    cmp-long v5, v42, v6

    if-lez v5, :cond_7

    .line 1631
    const-string/jumbo v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v42

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1632
    const-string/jumbo v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    invoke-static {v0, v1, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1634
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 1572
    .end local v8    # "nowELAPSED":J
    .end local v10    # "nowRTC":J
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v27    # "i":I
    .end local v32    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v34    # "nextNonWakeupRTC":J
    .end local v36    # "nextWakeupRTC":J
    .end local v39    # "pendingSend":Z
    .end local v42    # "time":J
    .end local v46    # "user":I
    .end local v47    # "user$iterator":Ljava/util/Iterator;
    .end local v48    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v49

    throw v5

    .line 1625
    .restart local v8    # "nowELAPSED":J
    .restart local v10    # "nowRTC":J
    .restart local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v27    # "i":I
    .restart local v32    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local v34    # "nextNonWakeupRTC":J
    .restart local v36    # "nextWakeupRTC":J
    .restart local v46    # "user":I
    .restart local v47    # "user$iterator":Ljava/util/Iterator;
    .restart local v48    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_8
    const-wide/16 v42, 0x0

    .restart local v42    # "time":J
    goto :goto_4

    .line 1636
    .end local v32    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v42    # "time":J
    .end local v46    # "user":I
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1637
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1638
    const-string/jumbo v5, "  Pending alarm batches: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "b$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 1641
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v5, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 1642
    iget-object v6, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string/jumbo v7, "    "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_5

    .line 1645
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v21    # "b$iterator":Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 1646
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1647
    const-string/jumbo v5, "    Idle mode state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1648
    const-string/jumbo v5, "      Idling until: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1649
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v5, :cond_e

    .line 1650
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-string/jumbo v15, "    "

    move-object/from16 v14, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1655
    :goto_6
    const-string/jumbo v5, "      Pending alarms:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    const-string/jumbo v7, "      "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1658
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v5, :cond_d

    .line 1659
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1660
    const-string/jumbo v5, "  Next wake from idle: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1661
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-string/jumbo v15, "    "

    move-object/from16 v14, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1664
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1665
    const-string/jumbo v5, "  Past-due non-wakeup alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 1667
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const-string/jumbo v7, "    "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1672
    :goto_7
    const-string/jumbo v5, "    Number of delayed alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1673
    const-string/jumbo v5, ", total delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1674
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1675
    const-string/jumbo v5, "    Max delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1676
    const-string/jumbo v5, ", max non-interactive time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1677
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1678
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1680
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1681
    const-string/jumbo v5, "  Broadcast ref count: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1682
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1684
    const-string/jumbo v5, "  mAllowWhileIdleMinTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1685
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1686
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1687
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 1688
    const-string/jumbo v5, "  Last allow while idle dispatch times:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    const/16 v27, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_10

    .line 1690
    const-string/jumbo v5, "  UID "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1692
    const-string/jumbo v5, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1695
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1689
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 1653
    :cond_e
    const-string/jumbo v5, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1670
    :cond_f
    const-string/jumbo v5, "(none)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1698
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1700
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string/jumbo v6, "  Recent problems"

    const-string/jumbo v7, "    "

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1701
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1704
    :cond_11
    const/16 v5, 0xa

    new-array v0, v5, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v44, v0

    .line 1705
    .local v44, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v24, Lcom/android/server/AlarmManagerService$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$4;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1716
    .local v24, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v31, 0x0

    .line 1717
    .local v31, "len":I
    const/16 v30, 0x0

    .local v30, "iu":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v30

    if-ge v0, v5, :cond_18

    .line 1718
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/util/ArrayMap;

    .line 1719
    .local v45, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v28, 0x0

    .local v28, "ip":I
    :goto_a
    invoke-virtual/range {v45 .. v45}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_17

    .line 1720
    move-object/from16 v0, v45

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1721
    .local v22, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/16 v29, 0x0

    .local v29, "is":I
    :goto_b
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_16

    .line 1722
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1723
    .local v26, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v31, :cond_15

    .line 1724
    const/4 v5, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v31

    move-object/from16 v2, v26

    move-object/from16 v3, v24

    invoke-static {v0, v5, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v40

    .line 1725
    .local v40, "pos":I
    :goto_c
    if-gez v40, :cond_12

    .line 1726
    move/from16 v0, v40

    neg-int v5, v0

    add-int/lit8 v40, v5, -0x1

    .line 1728
    :cond_12
    move-object/from16 v0, v44

    array-length v5, v0

    move/from16 v0, v40

    if-ge v0, v5, :cond_14

    .line 1729
    move-object/from16 v0, v44

    array-length v5, v0

    sub-int v5, v5, v40

    add-int/lit8 v25, v5, -0x1

    .line 1730
    .local v25, "copylen":I
    if-lez v25, :cond_13

    .line 1731
    add-int/lit8 v5, v40, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v40

    move-object/from16 v2, v44

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1733
    :cond_13
    aput-object v26, v44, v40

    .line 1734
    move-object/from16 v0, v44

    array-length v5, v0

    move/from16 v0, v31

    if-ge v0, v5, :cond_14

    .line 1735
    add-int/lit8 v31, v31, 0x1

    .line 1721
    .end local v25    # "copylen":I
    :cond_14
    add-int/lit8 v29, v29, 0x1

    goto :goto_b

    .line 1724
    .end local v40    # "pos":I
    :cond_15
    const/16 v40, 0x0

    .restart local v40    # "pos":I
    goto :goto_c

    .line 1719
    .end local v26    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v40    # "pos":I
    :cond_16
    add-int/lit8 v28, v28, 0x1

    goto :goto_a

    .line 1717
    .end local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v29    # "is":I
    :cond_17
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_9

    .line 1741
    .end local v28    # "ip":I
    .end local v45    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_18
    if-lez v31, :cond_1a

    .line 1742
    const-string/jumbo v5, "  Top Alarms:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    const/16 v27, 0x0

    :goto_d
    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_1a

    .line 1744
    aget-object v26, v44, v27

    .line 1745
    .restart local v26    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string/jumbo v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1746
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_19

    const-string/jumbo v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1747
    :cond_19
    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1748
    const-string/jumbo v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1749
    const-string/jumbo v5, " wakeups, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1750
    const-string/jumbo v5, " alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1751
    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1752
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1753
    const-string/jumbo v5, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1754
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1743
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_d

    .line 1758
    .end local v26    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1a
    const-string/jumbo v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1759
    const-string/jumbo v5, "  Alarm Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1760
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 1761
    .local v41, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v30, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v30

    if-ge v0, v5, :cond_20

    .line 1762
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/util/ArrayMap;

    .line 1763
    .restart local v45    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v28, 0x0

    .restart local v28    # "ip":I
    :goto_f
    invoke-virtual/range {v45 .. v45}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_1f

    .line 1764
    move-object/from16 v0, v45

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1765
    .restart local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string/jumbo v5, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1766
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v5, :cond_1b

    const-string/jumbo v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1767
    :cond_1b
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1768
    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1769
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1770
    const-string/jumbo v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1771
    const-string/jumbo v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1772
    const-string/jumbo v5, " wakeups:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    .line 1774
    const/16 v29, 0x0

    .restart local v29    # "is":I
    :goto_10
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_1c

    .line 1775
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1774
    add-int/lit8 v29, v29, 0x1

    goto :goto_10

    .line 1777
    :cond_1c
    move-object/from16 v0, v41

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1778
    const/16 v27, 0x0

    :goto_11
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_1e

    .line 1779
    move-object/from16 v0, v41

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1780
    .restart local v26    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string/jumbo v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1781
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_1d

    const-string/jumbo v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1782
    :cond_1d
    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1783
    const-string/jumbo v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1784
    const-string/jumbo v5, " wakes "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1785
    const-string/jumbo v5, " alarms, last "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1786
    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1787
    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1788
    const-string/jumbo v5, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1789
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1790
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1778
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_11

    .line 1763
    .end local v26    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1e
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_f

    .line 1761
    .end local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v29    # "is":I
    :cond_1f
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_e

    .end local v28    # "ip":I
    .end local v45    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_20
    monitor-exit v49

    .line 1542
    return-void
.end method

.method public enableDm()I
    .locals 2

    .prologue
    .line 3233
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3234
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    if-eqz v0, :cond_0

    .line 3247
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->resendDmPendingList(Ljava/util/ArrayList;)V

    .line 3248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 3249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 3252
    const/4 v0, -0x1

    return v0

    .line 3233
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1040
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->close(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    .line 1038
    return-void

    .line 1041
    :catchall_0
    move-exception v0

    .line 1042
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    .line 1041
    throw v0
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1871
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1872
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1871
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getNextWakeFromIdleTimeImpl()J
    .locals 3

    .prologue
    .line 1865
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1866
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 1865
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method interactiveStateChangedLocked(Z)V
    .locals 10
    .param p1, "interactive"    # Z

    .prologue
    .line 2150
    iget-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eq v6, p1, :cond_3

    .line 2151
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 2152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2153
    .local v2, "nowELAPSED":J
    if-eqz p1, :cond_4

    .line 2154
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 2155
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v2, v6

    .line 2156
    .local v4, "thisDelayTime":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 2157
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 2158
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 2160
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 2161
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2163
    .end local v4    # "thisDelayTime":J
    :cond_1
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 2164
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, v2, v6

    .line 2165
    .local v0, "dur":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 2166
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    .line 2171
    .end local v0    # "dur":J
    :cond_2
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarmsTemp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 2172
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarmsTemp:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 2173
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarmsTemp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2149
    .end local v2    # "nowELAPSED":J
    :cond_3
    :goto_0
    return-void

    .line 2178
    .restart local v2    # "nowELAPSED":J
    :cond_4
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    goto :goto_0
.end method

.method public lookForPackageFromAmsImpl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3609
    if-nez p1, :cond_0

    .line 3610
    const/4 v0, 0x0

    return v0

    .line 3612
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3613
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 3612
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2185
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2186
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2187
    return v3

    .line 2184
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2190
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2191
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2192
    return v3

    .line 2190
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2195
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 1032
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 1031
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 15

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    .line 894
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 896
    const-string/jumbo v10, "ro.mtk_bg_power_saving_support"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 898
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    .line 902
    :cond_0
    const-string/jumbo v10, "persist.sys.timezone"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 906
    sget-boolean v10, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    if-nez v10, :cond_1

    .line 908
    :try_start_0
    new-instance v10, Lcom/mediatek/amplus/AlarmManagerPlus;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/mediatek/amplus/AlarmManagerPlus;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "power"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 916
    .local v8, "pm":Landroid/os/PowerManager;
    const-string/jumbo v10, "*alarm*"

    const/4 v11, 0x1

    invoke-virtual {v8, v11, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 918
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 919
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.TIME_TICK"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    const/high16 v12, 0x50000000

    .line 919
    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    .line 922
    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 918
    const/4 v13, 0x0

    .line 921
    const/4 v14, 0x0

    .line 918
    invoke-static {v10, v13, v11, v14, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 923
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.DATE_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 924
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 925
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 926
    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 925
    const/4 v12, 0x0

    .line 926
    const/high16 v13, 0x4000000

    .line 925
    invoke-static {v10, v12, v6, v13, v11}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 929
    new-instance v10, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 930
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v10}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 931
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v10}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 932
    new-instance v10, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    .line 933
    new-instance v10, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 935
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 936
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    const-string/jumbo v11, "com.android.deskclock"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    const-string/jumbo v11, "com.lenovo.deskclock"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    :try_start_1
    const-string/jumbo v10, "DmAgent"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 943
    .local v2, "binder":Landroid/os/IBinder;
    if-eqz v2, :cond_4

    .line 944
    invoke-static {v2}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 945
    .local v0, "agent":Lcom/mediatek/common/dm/DmAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v7

    .line 946
    .local v7, "locked":Z
    const-string/jumbo v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "dm state lock is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    if-eqz v7, :cond_3

    const/4 v10, 0x0

    :goto_1
    iput-boolean v10, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 954
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v7    # "locked":Z
    :goto_2
    new-instance v10, Lcom/android/server/AlarmManagerService$DMReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$DMReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 955
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 956
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 962
    iget-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    .line 963
    new-instance v9, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 964
    .local v9, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 970
    .end local v9    # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    :goto_3
    const-string/jumbo v10, "ro.mtk_ipo_support"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 971
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 972
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v10, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 973
    const-string/jumbo v10, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 974
    const-string/jumbo v10, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Lcom/android/server/AlarmManagerService$3;

    invoke-direct {v11, p0}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-virtual {v10, v11, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1013
    .end local v5    # "filter":Landroid/content/IntentFilter;
    :cond_2
    const-string/jumbo v10, "network_management"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1014
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    .line 1016
    const-string/jumbo v10, "data_shaping"

    .line 1015
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    check-cast v10, Lcom/mediatek/datashaping/IDataShapingManager;

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    .line 1018
    const-string/jumbo v10, "alarm"

    iget-object v11, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v10, v11}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 892
    return-void

    .line 909
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v4

    .line 910
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 947
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .restart local v2    # "binder":Landroid/os/IBinder;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "locked":Z
    .restart local v8    # "pm":Landroid/os/PowerManager;
    :cond_3
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 949
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v7    # "locked":Z
    :cond_4
    :try_start_2
    const-string/jumbo v10, "AlarmManager"

    const-string/jumbo v11, "dm binder is null!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 951
    .end local v2    # "binder":Landroid/os/IBinder;
    :catch_1
    move-exception v3

    .line 952
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "AlarmManager"

    const-string/jumbo v11, "remote error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 966
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string/jumbo v10, "AlarmManager"

    const-string/jumbo v11, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .locals 18
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowElapsed"    # J
    .param p4, "doValidate"    # Z

    .prologue
    .line 745
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 746
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v4, v5, v8}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v6

    .line 749
    .local v6, "whenElapsed":J
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    if-eqz v4, :cond_2

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 752
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    sget v13, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    const/4 v14, 0x1

    .line 751
    invoke-virtual/range {v4 .. v14}, Lcom/mediatek/amplus/AlarmManagerPlus;->getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J

    move-result-wide v16

    .line 753
    .local v16, "maxElapsed":J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-gez v4, :cond_1

    .line 754
    const-wide/16 v4, 0x0

    sub-long v16, v4, v16

    .line 755
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    .line 781
    :goto_0
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 782
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 783
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v4, :cond_0

    .line 784
    const-string/jumbo v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reAddAlarmLocked a.whenElapsed  = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 785
    const-string/jumbo v8, " a.maxWhenElapsed = "

    .line 784
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 785
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 784
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 744
    return-void

    .line 757
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    goto :goto_0

    .line 759
    .end local v16    # "maxElapsed":J
    :cond_2
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    .line 760
    move-wide/from16 v16, v6

    .restart local v16    # "maxElapsed":J
    goto :goto_0

    .line 761
    .end local v16    # "maxElapsed":J
    :cond_3
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_4

    .line 762
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v4, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v16

    .line 764
    .restart local v16    # "maxElapsed":J
    sub-long v4, v16, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    goto :goto_0

    .line 766
    .end local v16    # "maxElapsed":J
    :cond_4
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long v16, v6, v4

    .restart local v16    # "maxElapsed":J
    goto :goto_0
.end method

.method rebatchAllAlarms()V
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 711
    return-void

    .line 712
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method rebatchAllAlarmsLocked(Z)V
    .locals 12
    .param p1, "doValidate"    # Z

    .prologue
    .line 718
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 719
    .local v8, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 720
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 721
    .local v7, "oldPendingIdleUntil":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 722
    .local v4, "nowElapsed":J
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 723
    .local v6, "oldBatches":I
    const-string/jumbo v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "rebatchAllAlarmsLocked begin oldBatches count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v2, 0x0

    .local v2, "batchNum":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 725
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 726
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v0

    .line 727
    .local v0, "N":I
    const-string/jumbo v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "rebatchAllAlarmsLocked  batch.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 729
    invoke-virtual {v1, v3}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v9

    invoke-virtual {p0, v9, v4, v5, p1}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 728
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 724
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 732
    .end local v0    # "N":I
    .end local v1    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "i":I
    :cond_1
    if-eqz v7, :cond_2

    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v7, v9, :cond_2

    .line 733
    const-string/jumbo v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Rebatching: idle until changed from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 734
    const-string/jumbo v11, " to "

    .line 733
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 734
    iget-object v11, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 733
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v9, :cond_2

    .line 737
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 740
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 741
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 717
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .locals 10
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 2493
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2494
    .local v6, "numBatches":I
    const/4 v4, 0x0

    .local v4, "nextBatch":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 2495
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 2496
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v8, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v7, v8, p2

    if-lez v7, :cond_1

    .line 2492
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void

    .line 2500
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2501
    .local v5, "numAlarms":I
    const/4 v3, 0x0

    .local v3, "nextAlarm":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 2502
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2503
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v2, Lcom/android/server/AlarmManagerService$WakeupEvent;

    .line 2504
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v7

    .line 2505
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 2503
    invoke-direct {v2, p4, p5, v7, v8}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(JILjava/lang/String;)V

    .line 2506
    .local v2, "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2501
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2494
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public removeFromAmsImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3597
    if-nez p1, :cond_0

    .line 3598
    return-void

    .line 3600
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3601
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3596
    return-void

    .line 3600
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method removeImpl(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1082
    if-nez p1, :cond_0

    .line 1083
    return-void

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1086
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1081
    return-void

    .line 1085
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method removeInvalidAlarmLocked(Landroid/app/PendingIntent;)Z
    .locals 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 2106
    const/4 v1, 0x0

    .line 2107
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .end local v1    # "didRemove":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2108
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2109
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 2110
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2111
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2107
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2114
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "didRemove":Z
    :cond_1
    return v1
.end method

.method removeLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2080
    const/4 v1, 0x0

    .line 2081
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .end local v1    # "didRemove":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2082
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2083
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 2084
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2085
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2081
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2088
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "didRemove":Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 2089
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2091
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2088
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2095
    :cond_3
    if-eqz v1, :cond_4

    .line 2097
    const-string/jumbo v3, "AlarmManager"

    const-string/jumbo v4, "remove(package) changed bounds; rebatching"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2100
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2101
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2079
    :cond_4
    return-void
.end method

.method removeUserLocked(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 2118
    const/4 v1, 0x0

    .line 2119
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .end local v1    # "didRemove":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2120
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2121
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 2122
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2123
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2119
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2126
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "didRemove":Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 2127
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 2130
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2126
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2133
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 2134
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 2135
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 2133
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 2139
    :cond_5
    if-eqz v1, :cond_7

    .line 2140
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v3, :cond_6

    .line 2141
    const-string/jumbo v3, "AlarmManager"

    const-string/jumbo v4, "remove(user) changed bounds; rebatching"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    :cond_6
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2144
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2145
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2117
    :cond_7
    return-void
.end method

.method rescheduleKernelAlarmsLocked()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 2006
    iget-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 2007
    const-string/jumbo v4, "AlarmManager"

    const-string/jumbo v5, "IPO Shutdown so drop the repeating alarm"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    return-void

    .line 2012
    :cond_0
    const-wide/16 v2, 0x0

    .line 2013
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 2014
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v1

    .line 2015
    .local v1, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2017
    .local v0, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 2018
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 2019
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    const/4 v6, 0x2

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 2021
    :cond_1
    if-eq v0, v1, :cond_2

    .line 2022
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 2025
    .end local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 2026
    cmp-long v4, v2, v10

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_4

    .line 2027
    :cond_3
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 2031
    :cond_4
    cmp-long v4, v2, v10

    if-eqz v4, :cond_5

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_5

    .line 2032
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 2033
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 2001
    :cond_5
    return-void
.end method

.method restorePendingWhileIdleAlarmsLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 792
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 793
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 794
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 795
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 796
    .local v4, "nowElapsed":J
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 797
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 798
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, v0, v4, v5, v7}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 796
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 803
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v3    # "i":I
    .end local v4    # "nowElapsed":J
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    .line 806
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 807
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 811
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_1
    return-void

    .line 812
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V
    .locals 54
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "flags"    # I
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p12, "callingUid"    # I

    .prologue
    .line 1093
    if-nez p8, :cond_0

    .line 1094
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v10, "set/setRepeating ignored because there is no intent"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void

    .line 1103
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_1

    .line 1104
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v10, "IPO Shutdown so drop the alarm"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return-void

    .line 1111
    :cond_1
    const-wide/32 v10, 0x2932e00

    cmp-long v5, p4, v10

    if-lez v5, :cond_2

    .line 1112
    const-string/jumbo v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Window length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p4

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1113
    const-string/jumbo v11, "ms suspiciously long; limiting to 1 hour"

    .line 1112
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-wide/32 p4, 0x36ee80

    .line 1119
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v0, v5, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    move-wide/from16 v42, v0

    .line 1120
    .local v42, "minInterval":J
    const-wide/16 v10, 0x0

    cmp-long v5, p6, v10

    if-lez v5, :cond_3

    cmp-long v5, p6, v42

    if-gez v5, :cond_3

    .line 1121
    const-string/jumbo v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Suspiciously short interval "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p6

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1122
    const-string/jumbo v11, " millis; expanding to "

    .line 1121
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1122
    const-wide/16 v12, 0x3e8

    div-long v12, v42, v12

    .line 1121
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1123
    const-string/jumbo v11, " seconds"

    .line 1121
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    move-wide/from16 p6, v42

    .line 1127
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v5, p2, v10

    if-gez v5, :cond_4

    .line 1128
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v52, v0

    .line 1129
    .local v52, "what":J
    const-string/jumbo v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid alarm trigger time! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " from uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p12

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1130
    const-string/jumbo v11, " pid="

    .line 1129
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v52

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const-wide/16 p2, 0x0

    .line 1136
    .end local v52    # "what":J
    :cond_4
    const/4 v5, 0x7

    move/from16 v0, p1

    if-eq v0, v5, :cond_5

    const/16 v5, 0x8

    move/from16 v0, p1

    if-ne v0, v5, :cond_a

    .line 1137
    :cond_5
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_6

    .line 1138
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v10, "alarm driver not open ,return!"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    return-void

    .line 1142
    :cond_6
    const-string/jumbo v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "alarm set type 7 8, package name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v41

    .line 1146
    .local v41, "packageName":Ljava/lang/String;
    const/4 v5, 0x7

    move/from16 v0, p1

    if-ne v0, v5, :cond_7

    const-wide/16 v10, 0x0

    cmp-long v5, p2, v10

    if-nez v5, :cond_7

    .line 1147
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->cancelPoweroffAlarmImpl(Ljava/lang/String;)V

    .line 1148
    return-void

    .line 1152
    :cond_7
    const/16 v50, 0x0

    .line 1153
    .local v50, "setPackageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    .line 1154
    .local v48, "nowTime":J
    cmp-long v5, p2, v48

    if-gez v5, :cond_8

    .line 1155
    const-string/jumbo v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "power off alarm set time is wrong! nowTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v48

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ; triggerAtTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    return-void

    .line 1159
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1160
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;->removePoweroffAlarmLocked(Ljava/lang/String;)V

    .line 1161
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    .line 1162
    .local v20, "poweroffAlarmUserId":I
    new-instance v4, Lcom/android/server/AlarmManagerService$Alarm;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    .line 1163
    const/16 v18, 0x0

    .line 1164
    const/16 v21, 0x1

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v14, p6

    move-object/from16 v16, p8

    move-object/from16 v17, p10

    move-object/from16 v19, p11

    .line 1162
    invoke-direct/range {v4 .. v21}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 1165
    .local v4, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/AlarmManagerService;->addPoweroffAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    .line 1166
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 1167
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v22

    .line 1170
    const/16 p1, 0x0

    .line 1175
    .end local v4    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v20    # "poweroffAlarmUserId":I
    .end local v41    # "packageName":Ljava/lang/String;
    .end local v48    # "nowTime":J
    .end local v50    # "setPackageName":Ljava/lang/String;
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1176
    .local v6, "nowElapsed":J
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v46

    .line 1178
    .local v46, "nominalTrigger":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v10, v5, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    add-long v44, v6, v10

    .line 1179
    .local v44, "minTrigger":J
    cmp-long v5, v46, v44

    if-lez v5, :cond_b

    move-wide/from16 v8, v46

    .line 1182
    .local v8, "triggerElapsed":J
    :goto_0
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    if-eqz v5, :cond_d

    .line 1184
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    .end local v6    # "nowElapsed":J
    sget v15, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    const/16 v16, 0x1

    move/from16 v7, p1

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-object/from16 v14, p8

    invoke-virtual/range {v6 .. v16}, Lcom/mediatek/amplus/AlarmManagerPlus;->getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J

    move-result-wide v30

    .line 1185
    .local v30, "maxElapsed":J
    const-wide/16 v10, 0x0

    cmp-long v5, v30, v10

    if-gez v5, :cond_c

    .line 1186
    const-wide/16 v10, 0x0

    sub-long v30, v10, v30

    .line 1187
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    .line 1202
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1204
    :try_start_1
    const-string/jumbo v5, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "APP set("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") : type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1205
    const-string/jumbo v12, " triggerAtTime="

    .line 1204
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1205
    const-string/jumbo v12, " win="

    .line 1204
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1206
    const-string/jumbo v12, " tElapsed="

    .line 1204
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1206
    const-string/jumbo v12, " maxElapsed="

    .line 1204
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v30

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1207
    const-string/jumbo v12, " interval="

    .line 1204
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1207
    const-string/jumbo v12, " flags=0x"

    .line 1204
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1207
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    .line 1204
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    move/from16 v40, v0

    .line 1210
    const/16 v36, 0x1

    move-object/from16 v22, p0

    move/from16 v23, p1

    move-wide/from16 v24, p2

    move-wide/from16 v26, v8

    move-wide/from16 v28, p4

    move-wide/from16 v32, p6

    move-object/from16 v34, p8

    move/from16 v35, p9

    move-object/from16 v37, p10

    move-object/from16 v38, p11

    move/from16 v39, p12

    .line 1209
    invoke-direct/range {v22 .. v40}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v10

    .line 1092
    return-void

    .line 1159
    .end local v8    # "triggerElapsed":J
    .end local v30    # "maxElapsed":J
    .end local v44    # "minTrigger":J
    .end local v46    # "nominalTrigger":J
    .restart local v41    # "packageName":Ljava/lang/String;
    .restart local v48    # "nowTime":J
    .restart local v50    # "setPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v22

    throw v5

    .line 1179
    .end local v41    # "packageName":Ljava/lang/String;
    .end local v48    # "nowTime":J
    .end local v50    # "setPackageName":Ljava/lang/String;
    .restart local v6    # "nowElapsed":J
    .restart local v44    # "minTrigger":J
    .restart local v46    # "nominalTrigger":J
    :cond_b
    move-wide/from16 v8, v44

    .restart local v8    # "triggerElapsed":J
    goto/16 :goto_0

    .line 1189
    .end local v6    # "nowElapsed":J
    .restart local v30    # "maxElapsed":J
    :cond_c
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    goto/16 :goto_1

    .line 1192
    .end local v30    # "maxElapsed":J
    .restart local v6    # "nowElapsed":J
    :cond_d
    const-wide/16 v10, 0x0

    cmp-long v5, p4, v10

    if-nez v5, :cond_e

    .line 1193
    move-wide/from16 v30, v8

    .restart local v30    # "maxElapsed":J
    goto/16 :goto_1

    .line 1194
    .end local v30    # "maxElapsed":J
    :cond_e
    const-wide/16 v10, 0x0

    cmp-long v5, p4, v10

    if-gez v5, :cond_f

    move-wide/from16 v10, p6

    .line 1195
    invoke-static/range {v6 .. v11}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v30

    .line 1197
    .restart local v30    # "maxElapsed":J
    sub-long p4, v30, v8

    goto/16 :goto_1

    .line 1199
    .end local v30    # "maxElapsed":J
    :cond_f
    add-long v30, v8, p4

    .restart local v30    # "maxElapsed":J
    goto/16 :goto_1

    .line 1202
    .end local v6    # "nowElapsed":J
    :catchall_1
    move-exception v5

    monitor-exit v10

    throw v5
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .locals 9
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1047
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1048
    return-void

    .line 1051
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 1054
    .local v4, "zone":Ljava/util/TimeZone;
    const/4 v3, 0x0

    .line 1055
    .local v3, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 1056
    :try_start_0
    const-string/jumbo v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1067
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 1068
    .local v1, "gmtOffset":I
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const v5, 0xea60

    div-int v5, v1, v5

    neg-int v5, v5

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1071
    invoke-static {v8}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1073
    if-eqz v3, :cond_1

    .line 1074
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1076
    const-string/jumbo v5, "time-zone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1046
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 1058
    .end local v1    # "gmtOffset":I
    :cond_2
    :try_start_1
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_3

    .line 1059
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "timezone changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_3
    const/4 v3, 0x1

    .line 1062
    const-string/jumbo v5, "persist.sys.timezone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1055
    .end local v0    # "current":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .locals 6
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "type"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "first"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2894
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    .line 2895
    .local v2, "unimportant":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setUnimportantForLogging(Z)V

    .line 2896
    if-nez p5, :cond_0

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    if-eqz v3, :cond_2

    .line 2897
    :cond_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, p4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 2901
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    .line 2902
    if-eqz p2, :cond_4

    .line 2903
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2904
    return-void

    .line 2894
    .end local v2    # "unimportant":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "unimportant":Z
    goto :goto_0

    .line 2899
    :cond_2
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2913
    .end local v2    # "unimportant":Z
    :catch_0
    move-exception v0

    .line 2917
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2892
    return-void

    .line 2907
    .restart local v2    # "unimportant":Z
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2908
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    .line 2907
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v1

    .line 2909
    .local v1, "uid":I
    if-ltz v1, :cond_3

    .line 2910
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4, v1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2911
    return-void
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z
    .locals 38
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JJ)Z"
        }
    .end annotation

    .prologue
    .line 2269
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/16 v32, 0x0

    .line 2273
    .local v32, "hasWakeup":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/AlarmManagerService$Batch;

    .line 2275
    .local v29, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v29

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, p2

    if-lez v4, :cond_2

    .line 2364
    .end local v29    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 2365
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 2366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2368
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v4, :cond_f

    .line 2369
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v33

    if-ge v0, v4, :cond_f

    .line 2370
    const-string/jumbo v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Triggering alarm #"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    add-int/lit8 v33, v33, 0x1

    goto :goto_0

    .line 2281
    .end local v33    # "i":I
    .restart local v29    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2283
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v27

    .line 2284
    .local v27, "N":I
    const/16 v33, 0x0

    .restart local v33    # "i":I
    :goto_1
    move/from16 v0, v33

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 2285
    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v28

    .line 2287
    .local v28, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    .line 2290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v5, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v34

    .line 2291
    .local v34, "lastTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    add-long v36, v34, v4

    .line 2292
    .local v36, "minTime":J
    cmp-long v4, p2, v36

    if-gez v4, :cond_5

    .line 2296
    move-wide/from16 v0, v36

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2297
    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v4, v4, v36

    if-gez v4, :cond_3

    .line 2298
    move-wide/from16 v0, v36

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2300
    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 2284
    .end local v34    # "lastTime":J
    .end local v36    # "minTime":J
    :cond_4
    :goto_2
    add-int/lit8 v33, v33, 0x1

    goto :goto_1

    .line 2305
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2307
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v4, :cond_6

    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 2308
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    .line 2311
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2312
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    .line 2313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    .line 2314
    :goto_3
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    .line 2313
    invoke-static {v4, v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 2316
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_9

    .line 2317
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2318
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2319
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 2321
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_a

    .line 2322
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2323
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2328
    :cond_a
    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_b

    .line 2331
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v4, v4

    move-object/from16 v0, v28

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v8, p2, v8

    move-object/from16 v0, v28

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    long-to-int v4, v4

    move-object/from16 v0, v28

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2334
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v4, v4

    move-object/from16 v0, v28

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v30, v4, v8

    .line 2335
    .local v30, "delta":J
    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long v6, v4, v30

    .line 2337
    .local v6, "nextElapsed":J
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    if-eqz v4, :cond_e

    .line 2339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v28

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 2340
    move-object/from16 v0, v28

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v28

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    sget v13, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    const/4 v14, 0x1

    .line 2339
    invoke-virtual/range {v4 .. v14}, Lcom/mediatek/amplus/AlarmManagerPlus;->getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J

    move-result-wide v16

    .line 2344
    .local v16, "maxElapsed":J
    :goto_4
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    .line 2345
    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v10, v4, v30

    move-object/from16 v0, v28

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 2347
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move/from16 v21, v0

    .line 2348
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v23, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v25, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    move/from16 v26, v0

    .line 2347
    const/16 v22, 0x1

    move-object/from16 v8, p0

    move-wide v12, v6

    .line 2345
    invoke-direct/range {v8 .. v26}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 2351
    .end local v6    # "nextElapsed":J
    .end local v16    # "maxElapsed":J
    .end local v30    # "delta":J
    :cond_b
    move-object/from16 v0, v28

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v4, :cond_c

    .line 2352
    const/16 v32, 0x1

    .line 2356
    :cond_c
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_4

    .line 2357
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    goto/16 :goto_2

    .line 2313
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 2342
    .restart local v6    # "nextElapsed":J
    .restart local v30    # "delta":J
    :cond_e
    move-object/from16 v0, v28

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v4, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v16

    .restart local v16    # "maxElapsed":J
    goto :goto_4

    .line 2374
    .end local v6    # "nextElapsed":J
    .end local v16    # "maxElapsed":J
    .end local v27    # "N":I
    .end local v28    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v29    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v30    # "delta":J
    .end local v33    # "i":I
    :cond_f
    return v32
.end method

.method protected writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/io/File;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 3619
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/AlarmManagerService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3617
    :goto_0
    return-void

    .line 3620
    :catch_0
    move-exception v0

    .line 3621
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File path retriving failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 3626
    if-nez p1, :cond_0

    .line 3627
    return-void

    .line 3628
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3629
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 3631
    .local v4, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 3632
    .local v3, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 3635
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3636
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 3637
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3641
    if-eqz v5, :cond_1

    .line 3643
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v4, v5

    .line 3625
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 3644
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 3645
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "AlarmManager"

    const-string/jumbo v7, "FAIL to writeStringToFile "

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3638
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 3639
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeStringToFile error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3641
    if-eqz v4, :cond_2

    .line 3643
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 3644
    :catch_2
    move-exception v0

    .line 3645
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "AlarmManager"

    const-string/jumbo v7, "FAIL to writeStringToFile "

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3640
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 3641
    :goto_3
    if-eqz v4, :cond_3

    .line 3643
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3640
    :cond_3
    :goto_4
    throw v6

    .line 3644
    :catch_3
    move-exception v0

    .line 3645
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "AlarmManager"

    const-string/jumbo v8, "FAIL to writeStringToFile "

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3640
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 3638
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
