.class public final Lcom/android/internal/os/BatteryStatsImpl;
.super Landroid/os/BatteryStats;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;,
        Lcom/android/internal/os/BatteryStatsImpl$MyHandler;,
        Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;,
        Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;,
        Lcom/android/internal/os/BatteryStatsImpl$TimeBase;,
        Lcom/android/internal/os/BatteryStatsImpl$Counter;,
        Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;,
        Lcom/android/internal/os/BatteryStatsImpl$Timer;,
        Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid;,
        Lcom/android/internal/os/BatteryStatsImpl$1;
    }
.end annotation


# static fields
.field static final BATTERY_DELTA_LEVEL_FLAG:I = 0x1

.field public static final BATTERY_PLUGGED_NONE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final DEBUG_ENERGY:Z = false

.field private static final DEBUG_ENERGY_CPU:Z = false

.field private static final DEBUG_HISTORY:Z = false

.field static final DELAY_UPDATE_WAKELOCKS:J = 0x1388L

.field static final DELTA_BATTERY_LEVEL_FLAG:I = 0x80000

.field static final DELTA_EVENT_FLAG:I = 0x800000

.field static final DELTA_STATE2_FLAG:I = 0x200000

.field static final DELTA_STATE_FLAG:I = 0x100000

.field static final DELTA_STATE_MASK:I = -0x1000000

.field static final DELTA_TIME_ABS:I = 0x7fffd

.field static final DELTA_TIME_INT:I = 0x7fffe

.field static final DELTA_TIME_LONG:I = 0x7ffff

.field static final DELTA_TIME_MASK:I = 0x7ffff

.field static final DELTA_WAKELOCK_FLAG:I = 0x400000

.field private static final MAGIC:I = -0x458a8b8b

.field static final MAX_DAILY_ITEMS:I = 0xa

.field static final MAX_HISTORY_BUFFER:I = 0x40000

.field private static final MAX_HISTORY_ITEMS:I = 0x7d0

.field static final MAX_LEVEL_STEPS:I = 0xc8

.field static final MAX_MAX_HISTORY_BUFFER:I = 0x50000

.field private static final MAX_MAX_HISTORY_ITEMS:I = 0xbb8

.field private static final MAX_WAKELOCKS_PER_UID:I = 0x64

.field static final MSG_REPORT_CHARGING:I = 0x3

.field static final MSG_REPORT_POWER_CHANGE:I = 0x2

.field static final MSG_UPDATE_WAKELOCKS:I = 0x1

.field private static final NETWORK_STATS_DELTA:I = 0x2

.field private static final NETWORK_STATS_LAST:I = 0x0

.field private static final NETWORK_STATS_NEXT:I = 0x1

.field static final STATE_BATTERY_HEALTH_MASK:I = 0x7

.field static final STATE_BATTERY_HEALTH_SHIFT:I = 0x1a

.field static final STATE_BATTERY_PLUG_MASK:I = 0x3

.field static final STATE_BATTERY_PLUG_SHIFT:I = 0x18

.field static final STATE_BATTERY_STATUS_MASK:I = 0x7

.field static final STATE_BATTERY_STATUS_SHIFT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "BatteryStatsImpl"

.field private static final USE_OLD_HISTORY:Z = false

.field private static final VERSION:I = 0x82

.field private static sNumSpeedSteps:I


# instance fields
.field final mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

.field mActiveHistoryStates:I

.field mActiveHistoryStates2:I

.field mAudioOnNesting:I

.field mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mAudioTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

.field mCameraOnNesting:I

.field mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mCameraTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mChangedStates:I

.field mChangedStates2:I

.field final mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field mCharging:Z

.field public final mCheckinFile:Lcom/android/internal/os/AtomicFile;

.field final mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mCurStepCpuSystemTime:J

.field mCurStepCpuUserTime:J

.field mCurStepMode:I

.field mCurStepStatIOWaitTime:J

.field mCurStepStatIdleTime:J

.field mCurStepStatIrqTime:J

.field mCurStepStatSoftIrqTime:J

.field mCurStepStatSystemTime:J

.field mCurStepStatUserTime:J

.field mCurrentBatteryLevel:I

.field final mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field final mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field public final mDailyFile:Lcom/android/internal/os/AtomicFile;

.field final mDailyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$DailyItem;",
            ">;"
        }
    .end annotation
.end field

.field mDailyPackageChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end field

.field mDailyStartTime:J

.field mDeviceIdleModeEnabled:Z

.field mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDeviceIdling:Z

.field mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDischargeAmountScreenOff:I

.field mDischargeAmountScreenOffSinceCharge:I

.field mDischargeAmountScreenOn:I

.field mDischargeAmountScreenOnSinceCharge:I

.field mDischargeCurrentLevel:I

.field mDischargePlugLevel:I

.field mDischargeScreenOffUnplugLevel:I

.field mDischargeScreenOnUnplugLevel:I

.field mDischargeStartLevel:I

.field final mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field mDischargeUnplugLevel:I

.field mDistributeWakelockCpu:Z

.field final mDrawTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mEndPlatformVersion:Ljava/lang/String;

.field private final mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

.field private final mFile:Lcom/android/internal/util/JournaledFile;

.field mFlashlightOnNesting:I

.field mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mFlashlightTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mFullTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mFullWifiLockTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalWifiRunning:Z

.field mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mGpsNesting:I

.field public final mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

.field private mHasBluetoothEnergyReporting:Z

.field private mHasWifiEnergyReporting:Z

.field mHaveBatteryLevel:Z

.field mHighDischargeAmountSinceCharge:I

.field mHistory:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryBaseTime:J

.field final mHistoryBuffer:Landroid/os/Parcel;

.field mHistoryBufferLastPos:I

.field mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

.field private mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryOverflow:Z

.field final mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryTagPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/BatteryStats$HistoryTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mInitStepMode:I

.field private mInitialAcquireWakeName:Ljava/lang/String;

.field private mInitialAcquireWakeUid:I

.field mInteractive:Z

.field mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mIsolatedUids:Landroid/util/SparseIntArray;

.field private mIteratingHistory:Z

.field private final mKernelCpuSpeedReader:Lcom/android/internal/os/KernelCpuSpeedReader;

.field private final mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

.field private final mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mKernelWakelockStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastChargeStepLevel:I

.field mLastChargingStateLevel:I

.field mLastDischargeStepLevel:I

.field mLastHistoryElapsedRealtime:J

.field mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mLastHistoryStepLevel:B

.field final mLastPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastStepCpuSystemTime:J

.field mLastStepCpuUserTime:J

.field mLastStepStatIOWaitTime:J

.field mLastStepStatIdleTime:J

.field mLastStepStatIrqTime:J

.field mLastStepStatSoftIrqTime:J

.field mLastStepStatSystemTime:J

.field mLastStepStatUserTime:J

.field mLastWakeupReason:Ljava/lang/String;

.field mLastWakeupUptimeMs:J

.field mLastWriteTime:J

.field private mLoadedNumConnectivityChange:I

.field mLowDischargeAmountSinceCharge:I

.field mMaxChargeStepLevel:I

.field mMinDischargeStepLevel:I

.field private mMobileIfaces:[Ljava/lang/String;

.field private final mMobileNetworkStats:[Landroid/net/NetworkStats;

.field mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveStartTime:J

.field mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioPowerState:I

.field mModStepMode:I

.field final mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field mNextHistoryTagIdx:I

.field mNextMaxDailyDeadline:J

.field mNextMinDailyDeadline:J

.field mNoAutoReset:Z

.field private mNumConnectivityChange:I

.field mNumHistoryItems:I

.field mNumHistoryTagChars:I

.field mOnBattery:Z

.field mOnBatteryInternal:Z

.field final mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final mPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mPendingWrite:Landroid/os/Parcel;

.field mPhoneDataConnectionType:I

.field final mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneOn:Z

.field mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneServiceState:I

.field private mPhoneServiceStateRaw:I

.field mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneSignalStrengthBin:I

.field mPhoneSignalStrengthBinRaw:I

.field final mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneSimStateRaw:I

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mPowerSaveModeEnabled:Z

.field mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mReadHistoryChars:I

.field final mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mReadHistoryStrings:[Ljava/lang/String;

.field mReadHistoryUids:[I

.field private mReadOverflow:Z

.field mRealtime:J

.field mRealtimeStart:J

.field public mRecordAllHistory:Z

.field mRecordingHistory:Z

.field mScreenBrightnessBin:I

.field final mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mScreenState:I

.field mSensorNesting:I

.field final mSensorTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mShuttingDown:Z

.field mStartClockTime:J

.field mStartCount:I

.field mStartPlatformVersion:Ljava/lang/String;

.field mTempTotalCpuSystemTimeUs:J

.field mTempTotalCpuUserTimeUs:J

.field final mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field private final mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

.field private final mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field mTrackRunningHistoryElapsedRealtime:J

.field mTrackRunningHistoryUptime:J

.field final mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            ">;"
        }
    .end annotation
.end field

.field private mUnpluggedNumConnectivityChange:I

.field mUptime:J

.field mUptimeStart:J

.field mVideoOnNesting:I

.field mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mVideoTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLockImportant:Z

.field mWakeLockNesting:I

.field private final mWakeupReasonStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mWifiBatchedScanTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mWifiFullLockNesting:I

.field private mWifiIfaces:[Ljava/lang/String;

.field mWifiMulticastNesting:I

.field final mWifiMulticastTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiNetworkStats:[Landroid/net/NetworkStats;

.field mWifiOn:Z

.field mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiRadioPowerState:I

.field final mWifiRunningTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiScanNesting:I

.field final mWifiScanTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiSignalStrengthBin:I

.field final mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiState:I

.field final mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiSupplState:I

.field final mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWindowTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static synthetic -get0(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10057
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$1;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$1;-><init>()V

    .line 10056
    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/16 v8, 0x32

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 497
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 132
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 133
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 135
    new-instance v0, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    .line 136
    new-instance v0, Lcom/android/internal/os/KernelCpuSpeedReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReader:Lcom/android/internal/os/KernelCpuSpeedReader;

    .line 196
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    .line 202
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 201
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 232
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 240
    new-instance v0, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 243
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 244
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    .line 250
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 251
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 252
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 253
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    .line 258
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 259
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 260
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 261
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 262
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    .line 263
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    .line 264
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 265
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 266
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 268
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 276
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 277
    iput-byte v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    .line 278
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 279
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 280
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 328
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 331
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 332
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 361
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 362
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 364
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 363
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 368
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 370
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 369
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 373
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 372
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 375
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 374
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 378
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 377
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 381
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 380
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 389
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    .line 390
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 392
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    .line 393
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 395
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    .line 397
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 396
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 399
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 407
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    .line 441
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 442
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 443
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 447
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 448
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 453
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 454
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 458
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    .line 459
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    .line 460
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    .line 464
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 466
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 467
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 468
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 474
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    .line 477
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    .line 478
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    .line 483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 489
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 490
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    .line 2357
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 2358
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    .line 2762
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    .line 3909
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3939
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3981
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 7556
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    .line 7557
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    .line 7559
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 7565
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/NetworkStats;

    .line 7566
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v1, v0, v4

    .line 7567
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 7568
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7565
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileNetworkStats:[Landroid/net/NetworkStats;

    .line 7571
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/NetworkStats;

    .line 7572
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v1, v0, v4

    .line 7573
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 7574
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7571
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkStats:[Landroid/net/NetworkStats;

    .line 8840
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 8841
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 498
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 499
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 500
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    .line 501
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 502
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 497
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/16 v8, 0x32

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 6864
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 132
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 133
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 135
    new-instance v0, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    .line 136
    new-instance v0, Lcom/android/internal/os/KernelCpuSpeedReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReader:Lcom/android/internal/os/KernelCpuSpeedReader;

    .line 196
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    .line 202
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 201
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 232
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 240
    new-instance v0, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 243
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 244
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    .line 250
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 251
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 252
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 253
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    .line 258
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 259
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 260
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 261
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 262
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    .line 263
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    .line 264
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 265
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 266
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 268
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 276
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 277
    iput-byte v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    .line 278
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 279
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 280
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 328
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 331
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 332
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 361
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 362
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 364
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 363
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 368
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 370
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 369
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 373
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 372
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 375
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 374
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 378
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 377
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 381
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 380
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 389
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    .line 390
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 392
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    .line 393
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 395
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    .line 397
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 396
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 399
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 407
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    .line 441
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 442
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 443
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 447
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 448
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 453
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 454
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 458
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    .line 459
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    .line 460
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    .line 464
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 466
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 467
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 468
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 474
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    .line 477
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    .line 478
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    .line 483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 489
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 490
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    .line 2357
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 2358
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    .line 2762
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    .line 3909
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3939
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3981
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 7556
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    .line 7557
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    .line 7559
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 7565
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/NetworkStats;

    .line 7566
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v1, v0, v4

    .line 7567
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 7568
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7565
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileNetworkStats:[Landroid/net/NetworkStats;

    .line 7571
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/NetworkStats;

    .line 7572
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v1, v0, v4

    .line 7573
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 7574
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7571
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkStats:[Landroid/net/NetworkStats;

    .line 8840
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 8841
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6865
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 6866
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 6867
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    .line 6868
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 6869
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    .line 6870
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 6871
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 6864
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V
    .locals 11
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "externalSync"    # Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    .prologue
    .line 6790
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 132
    new-instance v1, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 133
    new-instance v1, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v1}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 135
    new-instance v1, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    .line 136
    new-instance v1, Lcom/android/internal/os/KernelCpuSpeedReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReader:Lcom/android/internal/os/KernelCpuSpeedReader;

    .line 196
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    .line 202
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 201
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    .line 212
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    .line 217
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    .line 228
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 232
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 240
    new-instance v1, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 243
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 244
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    .line 250
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 251
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 252
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 253
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 254
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    .line 258
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 259
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 260
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 261
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 262
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    .line 263
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    .line 264
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 265
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 266
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 268
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 276
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 277
    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    .line 278
    new-instance v1, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 279
    new-instance v1, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 280
    new-instance v1, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 328
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 331
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 332
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 361
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 362
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 364
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 363
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 368
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 370
    const/16 v1, 0x11

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 369
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 373
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 372
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 375
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 374
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 378
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 377
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 381
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 380
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 389
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    .line 390
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 392
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    .line 393
    const/16 v1, 0xd

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 395
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    .line 397
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 396
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 399
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 407
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    .line 419
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    .line 441
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 442
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 443
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 447
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v6, 0xc8

    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 448
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v6, 0x190

    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 453
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v6, 0xc8

    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 454
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v6, 0x190

    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 458
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    .line 459
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    .line 460
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    .line 464
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 466
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 467
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 468
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 474
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    .line 477
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    .line 478
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    .line 483
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    .line 489
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 490
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    .line 491
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    .line 2357
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    .line 2358
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    .line 2762
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    .line 3909
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3939
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3981
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 7556
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    .line 7557
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    .line 7559
    new-instance v1, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v1}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 7565
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/net/NetworkStats;

    .line 7566
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v7, 0x32

    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v7, 0x0

    aput-object v6, v1, v7

    .line 7567
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v7, 0x32

    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v7, 0x1

    aput-object v6, v1, v7

    .line 7568
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v7, 0x32

    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 7565
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileNetworkStats:[Landroid/net/NetworkStats;

    .line 7571
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/net/NetworkStats;

    .line 7572
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v7, 0x32

    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v7, 0x0

    aput-object v6, v1, v7

    .line 7573
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v7, 0x32

    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v7, 0x1

    aput-object v6, v1, v7

    .line 7574
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v7, 0x32

    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 7571
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkStats:[Landroid/net/NetworkStats;

    .line 8840
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 8841
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6791
    if-eqz p1, :cond_0

    .line 6792
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "batterystats.bin"

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6793
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "batterystats.bin.tmp"

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6792
    invoke-direct {v1, v6, v7}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    .line 6797
    :goto_0
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "batterystats-checkin.bin"

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 6798
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "batterystats-daily.xml"

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    .line 6799
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    .line 6800
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, p0, v6}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 6801
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 6802
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6803
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 6804
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int/lit8 v7, v0, -0x64

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6803
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6795
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    goto :goto_0

    .line 6806
    .restart local v0    # "i":I
    :cond_1
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0xa

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6807
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6808
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0xb

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6809
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0xc

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6810
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x3

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6811
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 6812
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v7, v0, -0xc8

    .line 6813
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6812
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6811
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6815
    :cond_2
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0xc7

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6816
    const/4 v0, 0x0

    :goto_3
    const/16 v1, 0x11

    if-ge v0, v1, :cond_3

    .line 6817
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v7, v0, -0x12c

    .line 6818
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6817
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6816
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6820
    :cond_3
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 6821
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6822
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6820
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6824
    :cond_4
    const/4 v0, 0x0

    :goto_5
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 6825
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6826
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6824
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 6828
    :cond_5
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0x190

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6829
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0x191

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6830
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6831
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6832
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6833
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x4

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6834
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x5

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6835
    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x8

    if-ge v0, v1, :cond_6

    .line 6836
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v7, v0, -0x258

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6835
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6838
    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/16 v1, 0xd

    if-ge v0, v1, :cond_7

    .line 6839
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v7, v0, -0x2bc

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6838
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 6841
    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x5

    if-ge v0, v1, :cond_8

    .line 6842
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v7, v0, -0x320

    .line 6843
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6842
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6841
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 6845
    :cond_8
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x7

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6846
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/4 v8, -0x8

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6847
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0x9

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6848
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v7, 0x0

    const/16 v8, -0xd

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6849
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 6850
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v4, v6, v8

    .line 6851
    .local v4, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v2, v6, v8

    .line 6852
    .local v2, "realtime":J
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->initTimes(JJ)V

    .line 6853
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    .line 6854
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 6855
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    .line 6856
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    .line 6857
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 6858
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 6859
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initDischarge()V

    .line 6860
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 6861
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateDailyDeadlineLocked()V

    .line 6790
    return-void
.end method

.method private addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cmd"    # B
    .param p6, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v4, 0x0

    .line 2338
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    if-eqz v0, :cond_0

    .line 2339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t do this while iterating history!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2341
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 2342
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2343
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p5, p6}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2344
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2345
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2346
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V

    .line 2347
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 2348
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2349
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2350
    const/4 v0, 0x0

    iput v0, p6, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2351
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2337
    return-void
.end method

.method private addPackageChange(Landroid/os/BatteryStats$PackageChange;)V
    .locals 1
    .param p1, "pc"    # Landroid/os/BatteryStats$PackageChange;

    .prologue
    .line 3287
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 3290
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3286
    return-void
.end method

.method private buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 3
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1972
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v0, v0, 0x19

    const/high16 v1, -0x2000000

    and-int/2addr v0, v1

    .line 1973
    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    shl-int/lit8 v1, v1, 0xe

    const v2, 0x1ff8000

    and-int/2addr v1, v2

    .line 1972
    or-int/2addr v0, v1

    .line 1974
    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    shl-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x7fff

    .line 1972
    or-int/2addr v0, v1

    return v0
.end method

.method private buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 4
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1978
    const/4 v0, 0x0

    .line 1979
    .local v0, "plugType":I
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1980
    const/4 v0, 0x1

    .line 1986
    :cond_0
    :goto_0
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x1d

    .line 1987
    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x1a

    .line 1986
    or-int/2addr v1, v2

    .line 1988
    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x18

    .line 1986
    or-int/2addr v1, v2

    .line 1989
    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    .line 1986
    or-int/2addr v1, v2

    return v1

    .line 1981
    :cond_1
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1982
    const/4 v0, 0x2

    goto :goto_0

    .line 1983
    :cond_2
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 1984
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private computeHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;Landroid/os/BatteryStats$HistoryStepDetails;)V
    .locals 12
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryStepDetails;
    .param p2, "last"    # Landroid/os/BatteryStats$HistoryStepDetails;

    .prologue
    .line 1994
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1998
    .local v2, "tmp":Landroid/os/BatteryStats$HistoryStepDetails;
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestImmediateCpuUpdate()V

    .line 2000
    if-nez p2, :cond_2

    .line 2003
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2004
    .local v0, "NU":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2005
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2006
    .local v6, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    .line 2007
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    .line 2004
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1994
    .end local v0    # "NU":I
    .end local v1    # "i":I
    .end local v2    # "tmp":Landroid/os/BatteryStats$HistoryStepDetails;
    .end local v6    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    move-object v2, p1

    .restart local v2    # "tmp":Landroid/os/BatteryStats$HistoryStepDetails;
    goto :goto_0

    .line 2009
    .restart local v0    # "NU":I
    .restart local v1    # "i":I
    :cond_1
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    .line 2010
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    .line 2011
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    .line 2012
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    .line 2013
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    .line 2014
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    .line 2015
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    .line 2016
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    .line 2017
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryStepDetails;->clear()V

    .line 2018
    return-void

    .line 2030
    .end local v0    # "NU":I
    .end local v1    # "i":I
    :cond_2
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 2031
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    .line 2032
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    .line 2033
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    .line 2034
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 2035
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 2036
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 2037
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    .line 2038
    const/4 v7, -0x1

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    const/4 v7, -0x1

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    const/4 v7, -0x1

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 2039
    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 2040
    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    const/4 v7, 0x0

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 2041
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2042
    .restart local v0    # "NU":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 2043
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2044
    .restart local v6    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    iget-wide v10, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    sub-long/2addr v8, v10

    long-to-int v5, v8

    .line 2045
    .local v5, "totalUTime":I
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iget-wide v10, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    sub-long/2addr v8, v10

    long-to-int v3, v8

    .line 2046
    .local v3, "totalSTime":I
    add-int v4, v5, v3

    .line 2047
    .local v4, "totalTime":I
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    .line 2048
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    .line 2049
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    add-int/2addr v7, v8

    if-gt v4, v7, :cond_3

    .line 2042
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2052
    :cond_3
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    add-int/2addr v7, v8

    if-gt v4, v7, :cond_4

    .line 2053
    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 2054
    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 2055
    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    goto :goto_3

    .line 2057
    :cond_4
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 2058
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 2059
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 2060
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    add-int/2addr v7, v8

    if-gt v4, v7, :cond_5

    .line 2061
    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 2062
    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 2063
    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    goto :goto_3

    .line 2065
    :cond_5
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 2066
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 2067
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 2068
    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 2069
    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 2070
    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    goto :goto_3

    .line 2074
    .end local v3    # "totalSTime":I
    .end local v4    # "totalTime":I
    .end local v5    # "totalUTime":I
    .end local v6    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_6
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    .line 2075
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    .line 2076
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    .line 2077
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    .line 2078
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    .line 2079
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    .line 2080
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    .line 2081
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    .line 1993
    return-void
.end method

.method private computeTimePerLevel([JI)J
    .locals 8
    .param p1, "steps"    # [J
    .param p2, "numSteps"    # I

    .prologue
    .line 8548
    if-gtz p2, :cond_0

    .line 8549
    const-wide/16 v4, -0x1

    return-wide v4

    .line 8551
    :cond_0
    const-wide/16 v2, 0x0

    .line 8552
    .local v2, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 8553
    aget-wide v4, p1, v0

    const-wide v6, 0xffffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 8552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8555
    :cond_1
    int-to-long v4, p2

    div-long v4, v2, v4

    return-wide v4
.end method

.method private static excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4078
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 4079
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 4080
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 4081
    .local v1, "newArray":[Ljava/lang/String;
    if-lez v0, :cond_0

    .line 4082
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4084
    :cond_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 4085
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4087
    :cond_1
    return-object v1

    .line 4089
    .end local v1    # "newArray":[Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method private fixPhoneServiceState(II)I
    .locals 2
    .param p1, "state"    # I
    .param p2, "signalBin"    # I

    .prologue
    const/4 v1, 0x1

    .line 3332
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    if-ne v0, v1, :cond_0

    .line 3335
    if-ne p1, v1, :cond_0

    .line 3336
    if-lez p2, :cond_0

    .line 3337
    const/4 p1, 0x0

    .line 3341
    :cond_0
    return p1
.end method

.method private getNetworkStatsDeltaLocked([Ljava/lang/String;[Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "ifaces"    # [Ljava/lang/String;
    .param p2, "networkStatsBuffer"    # [Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 7584
    const-string/jumbo v1, "net.qtaguid_enabled"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7586
    return-object v6

    .line 7589
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 7590
    aget-object v2, p2, v7

    .line 7589
    const/4 v3, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 7592
    .local v0, "stats":Landroid/net/NetworkStats;
    aget-object v1, p2, v4

    .line 7593
    aget-object v2, p2, v5

    .line 7591
    invoke-static {v0, v1, v6, v6, v2}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    aput-object v1, p2, v5

    .line 7594
    aget-object v1, p2, v4

    aput-object v1, p2, v7

    .line 7595
    aput-object v0, p2, v4

    .line 7596
    aget-object v1, p2, v5

    return-object v1
.end method

.method private static includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4068
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 4069
    return-object p0

    .line 4071
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 4072
    .local v0, "newArray":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4073
    array-length v1, p0

    aput-object p1, v0, v1

    .line 4074
    return-object v0
.end method

.method private initActiveHistoryEventsLocked(JJ)V
    .locals 13
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .prologue
    .line 7507
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v1, 0x13

    if-ge v6, v1, :cond_3

    .line 7508
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 7507
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7512
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    .line 7513
    .local v0, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_0

    .line 7516
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "ent$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 7517
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 7518
    .local v12, "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 7519
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 7520
    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    .line 7519
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 7518
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 7506
    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "ent$iterator":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_3
    return-void
.end method

.method private readDailyItemsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v13, 0x3

    const/4 v9, 0x2

    const/4 v12, 0x1

    .line 7056
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    if-eq v8, v9, :cond_1

    .line 7057
    if-ne v8, v12, :cond_0

    .line 7061
    :cond_1
    if-eq v8, v9, :cond_3

    .line 7062
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "no start tag found"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 7082
    .end local v8    # "type":I
    :catch_0
    move-exception v1

    .line 7083
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7053
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_0
    return-void

    .line 7065
    .restart local v8    # "type":I
    :cond_3
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 7066
    .local v6, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v12, :cond_2

    .line 7067
    if-ne v8, v13, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_2

    .line 7068
    :cond_5
    if-eq v8, v13, :cond_4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    .line 7072
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 7073
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 7074
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemTagLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 7084
    .end local v6    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_1
    move-exception v3

    .line 7085
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7076
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v6    # "outerDepth":I
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_6
    :try_start_2
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown element under <daily-items>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 7077
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 7076
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7078
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 7086
    .end local v6    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_2
    move-exception v4

    .line 7087
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7092
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    .line 7093
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7090
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_4
    move-exception v0

    .line 7091
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7088
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 7089
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed parsing daily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1813
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1814
    iput p1, p2, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1811
    return-void
.end method

.method private recordCurrentTimeChangeLocked(JJJ)V
    .locals 9
    .param p1, "currentTime"    # J
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "uptimeMs"    # J

    .prologue
    .line 8321
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-eqz v0, :cond_0

    .line 8322
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8324
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 8323
    const/4 v6, 0x5

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 8325
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8320
    :cond_0
    return-void
.end method

.method private recordShutdownLocked(JJ)V
    .locals 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .prologue
    .line 8330
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-eqz v0, :cond_0

    .line 8331
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8333
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 8332
    const/16 v6, 0x8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 8334
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8329
    :cond_0
    return-void
.end method

.method private requestImmediateCpuUpdate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2714
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->removeMessages(I)V

    .line 2715
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 2713
    return-void
.end method

.method private requestWakelockCpuUpdate()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2707
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2708
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2709
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2706
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private resetAllStatsLocked()V
    .locals 10

    .prologue
    .line 7420
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 7421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->initTimes(JJ)V

    .line 7422
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 7424
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7426
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7427
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7428
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7429
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7430
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7431
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7432
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7433
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7434
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7435
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 7436
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7435
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7438
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7439
    const/4 v0, 0x0

    :goto_2
    const/16 v3, 0x11

    if-ge v0, v3, :cond_2

    .line 7440
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7439
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7442
    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    .line 7443
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7444
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7442
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7446
    :cond_3
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7447
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7448
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7449
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7450
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7451
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7452
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7453
    const/4 v0, 0x0

    :goto_4
    const/16 v3, 0x8

    if-ge v0, v3, :cond_4

    .line 7454
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7453
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7456
    :cond_4
    const/4 v0, 0x0

    :goto_5
    const/16 v3, 0xd

    if-ge v0, v3, :cond_5

    .line 7457
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7456
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7459
    :cond_5
    const/4 v0, 0x0

    :goto_6
    const/4 v3, 0x5

    if-ge v0, v3, :cond_6

    .line 7460
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7459
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 7462
    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/4 v3, 0x4

    if-ge v0, v3, :cond_7

    .line 7463
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7464
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7462
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 7466
    :cond_7
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 7468
    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 7469
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reset()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7470
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 7471
    add-int/lit8 v0, v0, -0x1

    .line 7468
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 7475
    :cond_9
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 7476
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "timer$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 7477
    .local v1, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    goto :goto_9

    .line 7479
    .end local v1    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_a
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 7482
    .end local v2    # "timer$iterator":Ljava/util/Iterator;
    :cond_b
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 7483
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "timer$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 7484
    .restart local v1    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    goto :goto_a

    .line 7486
    .end local v1    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_c
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 7489
    .end local v2    # "timer$iterator":Ljava/util/Iterator;
    :cond_d
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 7490
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    .line 7491
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    .line 7492
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    .line 7493
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    .line 7494
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    .line 7495
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    .line 7496
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    .line 7497
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    .line 7498
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    .line 7499
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    .line 7501
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initDischarge()V

    .line 7503
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    .line 7419
    return-void
.end method

.method private scheduleSyncExternalStatsLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 8339
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    if-eqz v0, :cond_0

    .line 8340
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    invoke-interface {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleSync(Ljava/lang/String;)V

    .line 8338
    :cond_0
    return-void
.end method

.method private scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 8345
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    if-eqz v0, :cond_0

    .line 8346
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    invoke-interface {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleWifiSync(Ljava/lang/String;)V

    .line 8344
    :cond_0
    return-void
.end method

.method private startRecordingHistory(JJZ)V
    .locals 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "reset"    # Z

    .prologue
    .line 8308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 8309
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8311
    if-eqz p5, :cond_1

    const/4 v6, 0x7

    .line 8312
    :goto_0
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 8310
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 8313
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8314
    if-eqz p5, :cond_0

    .line 8315
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->initActiveHistoryEventsLocked(JJ)V

    .line 8307
    :cond_0
    return-void

    .line 8311
    :cond_1
    const/4 v6, 0x5

    goto :goto_0
.end method

.method private updateAllPhoneStateLocked(III)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "simState"    # I
    .param p3, "strengthBin"    # I

    .prologue
    const/4 v7, 0x1

    .line 3345
    const/4 v3, 0x0

    .line 3346
    .local v3, "scanning":Z
    const/4 v2, 0x0

    .line 3348
    .local v2, "newHistory":Z
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    .line 3349
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    .line 3350
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    .line 3352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3353
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3355
    .local v4, "uptime":J
    if-ne p2, v7, :cond_0

    .line 3358
    if-ne p1, v7, :cond_0

    .line 3359
    if-lez p3, :cond_0

    .line 3360
    const/4 p1, 0x0

    .line 3365
    :cond_0
    const/4 v6, 0x3

    if-ne p1, v6, :cond_8

    .line 3366
    const/4 p3, -0x1

    .line 3386
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 3388
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3389
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, -0x200001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3392
    const/4 v2, 0x1

    .line 3393
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3397
    :cond_2
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    if-eq v6, p1, :cond_3

    .line 3398
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v7, v7, -0x1c1

    .line 3399
    shl-int/lit8 v8, p1, 0x6

    .line 3398
    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3402
    const/4 v2, 0x1

    .line 3403
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    .line 3406
    :cond_3
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    if-eq v6, p3, :cond_6

    .line 3407
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    if-ltz v6, :cond_4

    .line 3408
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3411
    :cond_4
    if-ltz p3, :cond_9

    .line 3412
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_5

    .line 3413
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, p3

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3415
    :cond_5
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v7, v7, -0x39

    .line 3416
    shl-int/lit8 v8, p3, 0x3

    .line 3415
    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3419
    const/4 v2, 0x1

    .line 3423
    :goto_1
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    .line 3426
    :cond_6
    if-eqz v2, :cond_7

    .line 3427
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3344
    :cond_7
    return-void

    .line 3369
    :cond_8
    if-eqz p1, :cond_1

    .line 3374
    if-ne p1, v7, :cond_1

    .line 3375
    const/4 v3, 0x1

    .line 3376
    const/4 p3, 0x0

    .line 3377
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3378
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v8, 0x200000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3379
    const/4 v2, 0x1

    .line 3382
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto/16 :goto_0

    .line 3421
    :cond_9
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->stopAllPhoneSignalStrengthTimersLocked(I)V

    goto :goto_1
.end method

.method private writeDailyItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 6984
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6985
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6986
    const-string/jumbo v5, "daily-items"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6987
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 6988
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$DailyItem;

    .line 6989
    .local v0, "dit":Landroid/os/BatteryStats$DailyItem;
    const-string/jumbo v5, "item"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6990
    const-string/jumbo v5, "start"

    iget-wide v6, v0, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6991
    const-string/jumbo v5, "end"

    iget-wide v6, v0, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6992
    const-string/jumbo v5, "dis"

    iget-object v6, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V

    .line 6993
    const-string/jumbo v5, "chg"

    iget-object v6, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V

    .line 6994
    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 6995
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 6996
    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$PackageChange;

    .line 6997
    .local v3, "pc":Landroid/os/BatteryStats$PackageChange;
    iget-boolean v5, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v5, :cond_0

    .line 6998
    const-string/jumbo v5, "upd"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6999
    const-string/jumbo v5, "pkg"

    iget-object v6, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7000
    const-string/jumbo v5, "ver"

    iget v6, v3, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7001
    const-string/jumbo v5, "upd"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6995
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7003
    :cond_0
    const-string/jumbo v5, "rem"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7004
    const-string/jumbo v5, "pkg"

    iget-object v6, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7005
    const-string/jumbo v5, "rem"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 7009
    .end local v2    # "j":I
    .end local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_1
    const-string/jumbo v5, "item"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6987
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 7011
    .end local v0    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_2
    const-string/jumbo v5, "daily-items"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7012
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 6983
    return-void
.end method

.method private writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p4, "tmpBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 7017
    if-eqz p3, :cond_1

    .line 7018
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7019
    const-string/jumbo v1, "n"

    iget v2, p3, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7020
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p3, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-ge v0, v1, :cond_0

    .line 7021
    const-string/jumbo v1, "s"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7022
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7023
    invoke-virtual {p3, v0, p4}, Landroid/os/BatteryStats$LevelStepTracker;->encodeEntryAt(ILjava/lang/StringBuilder;)V

    .line 7024
    const-string/jumbo v1, "v"

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7025
    const-string/jumbo v1, "s"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7020
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7027
    :cond_0
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7016
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I
    .locals 5
    .param p1, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .prologue
    .line 1795
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1797
    .local v1, "idxObj":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 1798
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1808
    .local v0, "idx":I
    :goto_0
    return v0

    .line 1800
    .end local v0    # "idx":I
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 1801
    .restart local v0    # "idx":I
    new-instance v2, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 1802
    .local v2, "key":Landroid/os/BatteryStats$HistoryTag;
    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1803
    iput v0, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1804
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 1806
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    goto :goto_0
.end method


# virtual methods
.method addHistoryBufferLocked(JJLandroid/os/BatteryStats$HistoryItem;)V
    .locals 21
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2219
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-eqz v3, :cond_7

    .line 2223
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long v4, v4, p1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v18, v4, v6

    .line 2224
    .local v18, "timeDiff":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    and-int/2addr v4, v5

    xor-int v12, v3, v4

    .line 2225
    .local v12, "diffStates":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    and-int/2addr v4, v5

    xor-int v13, v3, v4

    .line 2226
    .local v13, "diffStates2":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v14, v3, v4

    .line 2227
    .local v14, "lastDiffStates":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v15, v3, v4

    .line 2233
    .local v15, "lastDiffStates2":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    if-ltz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v3, :cond_6

    .line 2234
    const-wide/16 v4, 0x3e8

    cmp-long v3, v18, v4

    if-gez v3, :cond_6

    and-int v3, v12, v14

    if-nez v3, :cond_6

    .line 2235
    and-int v3, v13, v15

    if-nez v3, :cond_6

    .line 2236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_0

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_6

    .line 2237
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_1

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_6

    .line 2238
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-nez v3, :cond_6

    .line 2239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_2

    .line 2240
    move-object/from16 v0, p5

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-nez v3, :cond_6

    .line 2241
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v3, v4, :cond_6

    .line 2242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v3, v4, :cond_6

    .line 2243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v3, v4, :cond_6

    .line 2244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v3, v4, :cond_6

    .line 2245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    move-object/from16 v0, p5

    iget-short v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v3, v4, :cond_6

    .line 2246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move-object/from16 v0, p5

    iget-char v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v3, v4, :cond_6

    .line 2252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2254
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 2255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    sub-long p1, v4, v6

    .line 2259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_3

    .line 2260
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2261
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2266
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_4

    .line 2267
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2268
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2273
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_5

    .line 2274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2275
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2276
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2278
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2281
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v11

    .line 2282
    .local v11, "dataSize":I
    const/high16 v3, 0x40000

    if-lt v11, v3, :cond_10

    .line 2283
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    if-nez v3, :cond_8

    .line 2284
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 2285
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2286
    const/4 v8, 0x6

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2287
    return-void

    .line 2220
    .end local v11    # "dataSize":I
    .end local v12    # "diffStates":I
    .end local v13    # "diffStates2":I
    .end local v14    # "lastDiffStates":I
    .end local v15    # "lastDiffStates2":I
    .end local v18    # "timeDiff":J
    :cond_7
    return-void

    .line 2291
    .restart local v11    # "dataSize":I
    .restart local v12    # "diffStates":I
    .restart local v13    # "diffStates2":I
    .restart local v14    # "lastDiffStates":I
    .restart local v15    # "lastDiffStates2":I
    .restart local v18    # "timeDiff":J
    :cond_8
    const/16 v17, 0x0

    .line 2292
    .local v17, "writeAnyway":Z
    move-object/from16 v0, p5

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, -0x190000

    and-int/2addr v3, v4

    .line 2293
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    .line 2292
    and-int v2, v3, v4

    .line 2294
    .local v2, "curStates":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-eq v3, v2, :cond_9

    .line 2297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    move/from16 v16, v0

    .line 2298
    .local v16, "old":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    const v4, 0x18ffff

    or-int/2addr v4, v2

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    .line 2299
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_c

    const/16 v17, 0x1

    .line 2301
    .end local v16    # "old":I
    .end local v17    # "writeAnyway":Z
    :cond_9
    :goto_0
    move-object/from16 v0, p5

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v4, 0x687f0000

    and-int/2addr v3, v4

    .line 2302
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    .line 2301
    and-int v10, v3, v4

    .line 2303
    .local v10, "curStates2":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-eq v3, v10, :cond_a

    .line 2306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    move/from16 v16, v0

    .line 2307
    .restart local v16    # "old":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    const v4, -0x687f0001

    or-int/2addr v4, v10

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    .line 2308
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_d

    const/4 v3, 0x1

    :goto_1
    or-int v17, v17, v3

    .line 2315
    .end local v16    # "old":I
    :cond_a
    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v3, v4, :cond_f

    .line 2316
    const/high16 v3, 0x50000

    if-ge v11, v3, :cond_b

    .line 2317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v3, v4

    .line 2318
    const/high16 v4, 0x180000

    .line 2317
    and-int/2addr v3, v4

    if-nez v3, :cond_e

    .line 2321
    :cond_b
    return-void

    .line 2299
    .end local v10    # "curStates2":I
    .restart local v16    # "old":I
    .restart local v17    # "writeAnyway":Z
    :cond_c
    const/16 v17, 0x0

    goto :goto_0

    .line 2308
    .end local v17    # "writeAnyway":Z
    .restart local v10    # "curStates2":I
    :cond_d
    const/4 v3, 0x0

    goto :goto_1

    .line 2319
    .end local v16    # "old":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int/2addr v3, v4

    .line 2320
    const/high16 v4, -0x68800000

    .line 2319
    and-int/2addr v3, v4

    if-eqz v3, :cond_b

    .line 2324
    :cond_f
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2325
    return-void

    .line 2328
    .end local v2    # "curStates":I
    .end local v10    # "curStates2":I
    :cond_10
    if-nez v11, :cond_11

    .line 2330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p5

    iput-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2331
    const/4 v8, 0x7

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2333
    :cond_11
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2218
    return-void
.end method

.method public addHistoryEventLocked(JJILjava/lang/String;I)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "code"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "uid"    # I

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2445
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2446
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p6, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2447
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p7, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2448
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2443
    return-void
.end method

.method addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2381
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 2384
    return-void
.end method

.method addHistoryRecordLocked(JJ)V
    .locals 21
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .prologue
    .line 2361
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 2362
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    sub-long v16, p1, v4

    .line 2363
    .local v16, "diffElapsed":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    sub-long v18, p3, v4

    .line 2364
    .local v18, "diffUptime":J
    const-wide/16 v4, 0x14

    sub-long v4, v16, v4

    cmp-long v4, v18, v4

    if-gez v4, :cond_0

    .line 2365
    sub-long v4, v16, v18

    sub-long v6, p1, v4

    .line 2366
    .local v6, "wakeElapsedTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, 0x7fffffff

    and-int/2addr v5, v8

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2371
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 2374
    .end local v6    # "wakeElapsedTime":J
    .end local v16    # "diffElapsed":J
    .end local v18    # "diffUptime":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v8, -0x80000000

    or-int/2addr v5, v8

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2375
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 2376
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 2377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 2360
    return-void
.end method

.method addHistoryRecordLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cmd"    # B
    .param p6, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2453
    .local v0, "rec":Landroid/os/BatteryStats$HistoryItem;
    if-eqz v0, :cond_0

    .line 2454
    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2458
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p5, p6}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2460
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2451
    return-void

    .line 2456
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    .end local v0    # "rec":Landroid/os/BatteryStats$HistoryItem;
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .restart local v0    # "rec":Landroid/os/BatteryStats$HistoryItem;
    goto :goto_0
.end method

.method addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 2
    .param p1, "rec"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v1, 0x0

    .line 2464
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryItems:I

    .line 2465
    iput-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2466
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    .line 2467
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_0

    .line 2468
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2469
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    .line 2463
    :goto_0
    return-void

    .line 2471
    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    goto :goto_0
.end method

.method public addIsolatedUidLocked(II)V
    .locals 1
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2521
    return-void
.end method

.method aggregateLastWakeupUptimeLocked(J)V
    .locals 7
    .param p1, "uptimeMs"    # J

    .prologue
    const/4 v6, 0x0

    .line 2893
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2894
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    sub-long v0, p1, v4

    .line 2895
    .local v0, "deltaUptime":J
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v2

    .line 2896
    .local v2, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->addCurrentReportedCount(I)V

    .line 2897
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->addCurrentReportedTotalTime(J)V

    .line 2898
    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 2892
    .end local v0    # "deltaUptime":J
    .end local v2    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_0
    return-void
.end method

.method clearHistoryLocked()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 2486
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    .line 2487
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    .line 2488
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    .line 2489
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    .line 2491
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2492
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2493
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 2494
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 2495
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 2496
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2497
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 2498
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 2499
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    .line 2500
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    .line 2501
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    .line 2502
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    .line 2475
    return-void
.end method

.method public commitCurrentHistoryBatchLocked()V
    .locals 2

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, -0x1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2214
    return-void
.end method

.method public commitPendingDataToDisk()V
    .locals 5

    .prologue
    .line 8883
    monitor-enter p0

    .line 8884
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 8885
    .local v1, "next":Landroid/os/Parcel;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8886
    if-nez v1, :cond_0

    monitor-exit p0

    .line 8887
    return-void

    .line 8890
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 8894
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8895
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 8896
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 8897
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 8898
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 8899
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8905
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8881
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 8883
    .end local v1    # "next":Landroid/os/Parcel;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 8900
    .restart local v1    # "next":Landroid/os/Parcel;
    :catch_0
    move-exception v0

    .line 8901
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v3, "BatteryStats"

    const-string/jumbo v4, "Error writing battery statistics"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8902
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8905
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 8903
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 8904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8905
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8903
    throw v3
.end method

.method public computeBatteryRealtime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8533
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryScreenOffRealtime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8543
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryScreenOffUptime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8538
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryTimeRemaining(J)J
    .locals 6
    .param p1, "curTime"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 8586
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-nez v2, :cond_0

    .line 8587
    return-wide v4

    .line 8602
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v2, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 8603
    return-wide v4

    .line 8605
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    move-result-wide v0

    .line 8606
    .local v0, "msPerLevel":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 8607
    return-wide v4

    .line 8609
    :cond_2
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public computeBatteryUptime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8528
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeChargeTimeRemaining(J)J
    .locals 6
    .param p1, "curTime"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 8624
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v2, :cond_0

    .line 8626
    return-wide v4

    .line 8641
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v2, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 8642
    return-wide v4

    .line 8644
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    move-result-wide v0

    .line 8645
    .local v0, "msPerLevel":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 8646
    return-wide v4

    .line 8648
    :cond_2
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    rsub-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public computeRealtime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8518
    packed-switch p3, :pswitch_data_0

    .line 8523
    const-wide/16 v0, 0x0

    return-wide v0

    .line 8519
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 8520
    :pswitch_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    sub-long v0, p1, v0

    return-wide v0

    .line 8521
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtimeStart()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0

    .line 8518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public computeUptime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8508
    packed-switch p3, :pswitch_data_0

    .line 8513
    const-wide/16 v0, 0x0

    return-wide v0

    .line 8509
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 8510
    :pswitch_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    sub-long v0, p1, v0

    return-wide v0

    .line 8511
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptimeStart()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0

    .line 8508
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 8957
    const/4 v0, 0x0

    return v0
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J

    .prologue
    .line 10136
    invoke-super/range {p0 .. p6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 10076
    return-void
.end method

.method ensureStartClockTime(J)Z
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    const-wide v4, 0x757b12c00L

    .line 2563
    const-wide v0, 0x757b12c00L

    .line 2564
    .local v0, "ABOUT_ONE_YEAR":J
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    sub-long v4, p1, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    sub-long v2, p1, v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    .line 2569
    const/4 v2, 0x1

    return v2

    .line 2571
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public finishAddingCpuLocked(IIIIIIII)V
    .locals 4
    .param p1, "totalUTime"    # I
    .param p2, "totalSTime"    # I
    .param p3, "statUserTime"    # I
    .param p4, "statSystemTime"    # I
    .param p5, "statIOWaitTime"    # I
    .param p6, "statIrqTime"    # I
    .param p7, "statSoftIrqTime"    # I
    .param p8, "statIdleTime"    # I

    .prologue
    .line 2928
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    .line 2929
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    .line 2930
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    .line 2931
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    .line 2932
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    int-to-long v2, p5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    .line 2933
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    .line 2934
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    int-to-long v2, p7

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    .line 2935
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    int-to-long v2, p8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    .line 2923
    return-void
.end method

.method public finishIteratingHistoryLocked()V
    .locals 2

    .prologue
    .line 7344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 7345
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    .line 7343
    return-void
.end method

.method public finishIteratingOldHistoryLocked()V
    .locals 2

    .prologue
    .line 7263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 7264
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 7262
    return-void
.end method

.method public getAwakeTimeBattery()J
    .locals 3

    .prologue
    .line 8499
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 4

    .prologue
    .line 8503
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getBatteryRealtime(J)J
    .locals 3
    .param p1, "curTime"    # J

    .prologue
    .line 8677
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryUptime(J)J
    .locals 3
    .param p1, "curTime"    # J

    .prologue
    .line 8672
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getBatteryUptimeLocked()J
    .locals 6

    .prologue
    .line 8667
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBluetoothControllerActivity(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4268
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 4269
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 4271
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCameraOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4297
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .locals 1

    .prologue
    .line 8653
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getCpuSpeedSteps()I
    .locals 1

    .prologue
    .line 8781
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    return v0
.end method

.method public getCurrentDailyStartTime()J
    .locals 2

    .prologue
    .line 7201
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    return-wide v0
.end method

.method public getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .locals 1

    .prologue
    .line 8658
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .locals 1

    .prologue
    .line 8619
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
    .locals 2
    .param p1, "daysAgo"    # I

    .prologue
    .line 7195
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 7196
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$DailyItem;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDailyPackageChanges()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8663
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeviceIdleModeEnabledCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4150
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getDeviceIdleModeEnabledTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4146
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceIdlingCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4158
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getDeviceIdlingTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4154
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDischargeAmount(I)I
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 8726
    if-nez p1, :cond_1

    .line 8727
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v0

    .line 8729
    .local v0, "dischargeAmount":I
    :goto_0
    if-gez v0, :cond_0

    .line 8730
    const/4 v0, 0x0

    .line 8732
    :cond_0
    return v0

    .line 8728
    .end local v0    # "dischargeAmount":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStartLevel()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevel()I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "dischargeAmount":I
    goto :goto_0
.end method

.method public getDischargeAmountScreenOff()I
    .locals 3

    .prologue
    .line 8758
    monitor-enter p0

    .line 8759
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 8760
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 8761
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 8762
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    .line 8764
    return v0

    .line 8758
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeAmountScreenOffSinceCharge()I
    .locals 3

    .prologue
    .line 8769
    monitor-enter p0

    .line 8770
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 8771
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 8772
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 8773
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    .line 8775
    return v0

    .line 8769
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeAmountScreenOn()I
    .locals 3

    .prologue
    .line 8736
    monitor-enter p0

    .line 8737
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 8738
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 8739
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 8740
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    .line 8742
    return v0

    .line 8736
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeAmountScreenOnSinceCharge()I
    .locals 3

    .prologue
    .line 8747
    monitor-enter p0

    .line 8748
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 8749
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 8750
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 8751
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    .line 8753
    return v0

    .line 8747
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDischargeCurrentLevel()I
    .locals 1

    .prologue
    .line 8693
    monitor-enter p0

    .line 8694
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 8693
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDischargeCurrentLevelLocked()I
    .locals 1

    .prologue
    .line 8699
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    return v0
.end method

.method public getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .locals 1

    .prologue
    .line 8614
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getDischargeStartLevel()I
    .locals 1

    .prologue
    .line 8682
    monitor-enter p0

    .line 8683
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStartLevelLocked()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 8682
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDischargeStartLevelLocked()I
    .locals 1

    .prologue
    .line 8688
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    return v0
.end method

.method public getEndPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4332
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFlashlightOnCount(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4292
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFlashlightOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4287
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGlobalWifiRunningTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4230
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHighDischargeAmountSinceCharge()I
    .locals 3

    .prologue
    .line 8715
    monitor-enter p0

    .line 8716
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 8717
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 8718
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    .line 8720
    return v0

    .line 8715
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getHistoryBaseTime()J
    .locals 2

    .prologue
    .line 7351
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    return-wide v0
.end method

.method public getHistoryStringPoolBytes()I
    .locals 2

    .prologue
    .line 7308
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getHistoryStringPoolSize()I
    .locals 1

    .prologue
    .line 7301
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getHistoryTagPoolString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7313
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getHistoryTagPoolUid(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7318
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public getHistoryTotalSize()I
    .locals 1

    .prologue
    .line 7269
    const/high16 v0, 0x40000

    return v0
.end method

.method public getHistoryUsedSize()I
    .locals 1

    .prologue
    .line 7273
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    return v0
.end method

.method public getInteractiveTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4134
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsOnBattery()Z
    .locals 1

    .prologue
    .line 4340
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    return v0
.end method

.method public getKernelWakelockStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1786
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 1787
    .local v0, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v0, :cond_0

    .line 1788
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v0    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    .line 1789
    .restart local v0    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    :cond_0
    return-object v0
.end method

.method public getLowDischargeAmountSinceCharge()I
    .locals 3

    .prologue
    .line 8704
    monitor-enter p0

    .line 8705
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 8706
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    if-ge v1, v2, :cond_0

    .line 8707
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    .line 8709
    return v0

    .line 8704
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMobileRadioActiveAdjustedTime(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4214
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4210
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getMobileRadioActiveTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4206
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRadioActiveUnknownCount(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4222
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMobileRadioActiveUnknownTime(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4218
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4302
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 4303
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 4305
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4311
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 4312
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 4314
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 8
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v7, 0x0

    .line 7323
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 7324
    .local v1, "pos":I
    if-nez v1, :cond_0

    .line 7325
    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 7327
    :cond_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    if-lt v1, v6, :cond_1

    const/4 v0, 0x1

    .line 7328
    .local v0, "end":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 7329
    return v7

    .line 7327
    .end local v0    # "end":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "end":Z
    goto :goto_0

    .line 7332
    :cond_2
    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 7333
    .local v2, "lastRealtime":J
    iget-wide v4, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 7334
    .local v4, "lastWalltime":J
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    .line 7335
    iget-byte v6, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x5

    if-eq v6, v7, :cond_3

    .line 7336
    iget-byte v6, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    .line 7337
    iget-wide v6, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v6, v2

    add-long/2addr v6, v4

    iput-wide v6, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 7339
    :cond_3
    const/4 v6, 0x1

    return v6
.end method

.method public getNextMaxDailyDeadline()J
    .locals 2

    .prologue
    .line 7211
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    return-wide v0
.end method

.method public getNextMinDailyDeadline()J
    .locals 2

    .prologue
    .line 7206
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    return-wide v0
.end method

.method public getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 10
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7230
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-lt v1, v3, :cond_2

    const/4 v8, 0x1

    .line 7231
    .local v8, "end":Z
    :goto_0
    if-nez v8, :cond_0

    .line 7232
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    .line 7233
    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v1, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v9, 0x6

    if-ne v1, v9, :cond_3

    move v1, v7

    :goto_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    .line 7235
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 7236
    .local v0, "cur":Landroid/os/BatteryStats$HistoryItem;
    if-nez v0, :cond_5

    .line 7237
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    if-nez v1, :cond_1

    if-eqz v8, :cond_4

    .line 7240
    :cond_1
    :goto_2
    return v6

    .line 7230
    .end local v0    # "cur":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "end":Z
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "end":Z
    goto :goto_0

    :cond_3
    move v1, v6

    .line 7233
    goto :goto_1

    .line 7238
    .restart local v0    # "cur":Landroid/os/BatteryStats$HistoryItem;
    :cond_4
    const-string/jumbo v1, "BatteryStatsImpl"

    const-string/jumbo v3, "Old history ends before new history!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7242
    :cond_5
    invoke-virtual {p1, v0}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 7243
    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 7244
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    if-nez v1, :cond_6

    .line 7245
    if-eqz v8, :cond_7

    .line 7246
    const-string/jumbo v1, "BatteryStatsImpl"

    const-string/jumbo v3, "New history ends before old history!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7258
    :cond_6
    :goto_3
    return v7

    .line 7247
    :cond_7
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p1, v1}, Landroid/os/BatteryStats$HistoryItem;->same(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 7248
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Landroid/util/LogWriter;

    const-string/jumbo v3, "BatteryStatsImpl"

    const/4 v9, 0x5

    invoke-direct {v1, v9, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 7249
    .local v2, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Histories differ!"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7250
    const-string/jumbo v1, "Old history:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7251
    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7252
    const-string/jumbo v1, "New history:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7253
    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7255
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_3
.end method

.method public getNumConnectivityChange(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4162
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 4163
    .local v0, "val":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4164
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    sub-int/2addr v0, v1

    .line 4168
    :cond_0
    :goto_0
    return v0

    .line 4165
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 4166
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getPackageStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 8819
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 8820
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 8821
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v1

    return-object v1
.end method

.method public getParcelVersion()I
    .locals 1

    .prologue
    .line 4336
    const/16 v0, 0x82

    return v0
.end method

.method public getPhoneDataConnectionCount(II)I
    .locals 1
    .param p1, "dataType"    # I
    .param p2, "which"    # I

    .prologue
    .line 4202
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneDataConnectionTime(IJI)J
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4197
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneOnCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4176
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4172
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneSignalScanningTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4187
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneSignalStrengthCount(II)I
    .locals 1
    .param p1, "strengthBin"    # I
    .param p2, "which"    # I

    .prologue
    .line 4192
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneSignalStrengthTime(IJI)J
    .locals 2
    .param p1, "strengthBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4181
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPowerSaveModeEnabledCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4142
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPowerSaveModeEnabledTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4138
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 8809
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 8810
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 8811
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    return-object v1
.end method

.method public getProcessWakeTime(IIJ)J
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 2947
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2948
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2949
    .local v1, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v1, :cond_1

    .line 2950
    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 2951
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_1

    .line 2952
    iget-wide v4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v6, :cond_0

    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v2, p3, v2

    :cond_0
    add-long/2addr v2, v4

    return-wide v2

    .line 2955
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-wide v2
.end method

.method public getScreenBrightnessTime(IJI)J
    .locals 2
    .param p1, "brightnessBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4129
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenOnCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4124
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getScreenOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4120
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 8829
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 8830
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 8831
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    return-object v1
.end method

.method public getStartClockTime()J
    .locals 8

    .prologue
    .line 4319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4320
    .local v2, "currentTime":J
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->ensureStartClockTime(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v1, p0

    .line 4321
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->recordCurrentTimeChangeLocked(JJJ)V

    .line 4324
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    return-wide v0
.end method

.method public getStartCount()I
    .locals 1

    .prologue
    .line 7356
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    return v0
.end method

.method public getStartPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4328
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4344
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 8788
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 8789
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-nez v0, :cond_0

    .line 8790
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 8791
    .restart local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8793
    :cond_0
    return-object v0
.end method

.method public getWakeupReasonStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1773
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 1774
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v0, :cond_0

    .line 1775
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v0    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    .line 1776
    .restart local v0    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    :cond_0
    return-object v0
.end method

.method public getWifiControllerActivity(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4279
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 4280
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 4282
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4226
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiSignalStrengthCount(II)I
    .locals 1
    .param p1, "strengthBin"    # I
    .param p2, "which"    # I

    .prologue
    .line 4260
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiSignalStrengthTime(IJI)J
    .locals 2
    .param p1, "strengthBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4255
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiStateCount(II)I
    .locals 1
    .param p1, "wifiState"    # I
    .param p2, "which"    # I

    .prologue
    .line 4240
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiStateTime(IJI)J
    .locals 2
    .param p1, "wifiState"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4235
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiSupplStateCount(II)I
    .locals 1
    .param p1, "state"    # I
    .param p2, "which"    # I

    .prologue
    .line 4250
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiSupplStateTime(IJI)J
    .locals 2
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4245
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasBluetoothActivityReporting()Z
    .locals 1

    .prologue
    .line 4264
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    return v0
.end method

.method public hasWifiActivityReporting()Z
    .locals 1

    .prologue
    .line 4275
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    return v0
.end method

.method initDischarge()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7382
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 7383
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 7384
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 7385
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 7386
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 7387
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 7388
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 7389
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 7381
    return-void
.end method

.method initTimes(JJ)V
    .locals 5
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 7372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    .line 7373
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 7374
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 7375
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    .line 7376
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    .line 7377
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    .line 7378
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    .line 7371
    return-void
.end method

.method public isCharging()Z
    .locals 1

    .prologue
    .line 7364
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    return v0
.end method

.method public isOnBattery()Z
    .locals 1

    .prologue
    .line 7360
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 2

    .prologue
    .line 7368
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mapUid(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2548
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2549
    .local v0, "isolated":I
    if-lez v0, :cond_0

    .end local v0    # "isolated":I
    :goto_0
    return v0

    .restart local v0    # "isolated":I
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public noteActivityPausedLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 3649
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3650
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteActivityPausedLocked(J)V

    .line 3648
    return-void
.end method

.method public noteActivityResumedLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 3644
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3645
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteActivityResumedLocked(J)V

    .line 3643
    return-void
.end method

.method public noteAlarmFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x400d

    .line 2694
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v0, :cond_0

    .line 2695
    return-void

    .line 2697
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2698
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2699
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2700
    .local v4, "uptime":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2701
    return-void

    :cond_1
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2703
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2693
    return-void
.end method

.method public noteAlarmStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x800d

    .line 2681
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v0, :cond_0

    .line 2682
    return-void

    .line 2684
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2685
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2686
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2687
    .local v4, "uptime":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2688
    return-void

    :cond_1
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2690
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2680
    return-void
.end method

.method public noteAudioOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3561
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v4, :cond_0

    .line 3562
    return-void

    .line 3564
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3565
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3566
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3567
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v4, :cond_1

    .line 3568
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x400001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3571
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3572
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3574
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOffLocked(J)V

    .line 3560
    return-void
.end method

.method public noteAudioOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3546
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3547
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3548
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3549
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v4, :cond_0

    .line 3550
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3553
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3554
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3556
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    .line 3557
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOnLocked(J)V

    .line 3545
    return-void
.end method

.method public noteCameraOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3709
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    if-nez v4, :cond_0

    .line 3710
    return-void

    .line 3712
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3713
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3714
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3715
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    if-nez v4, :cond_1

    .line 3716
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x400001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3719
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3720
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3722
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteCameraTurnedOffLocked(J)V

    .line 3708
    return-void
.end method

.method public noteCameraOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3695
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3696
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3697
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3698
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    if-nez v4, :cond_0

    .line 3699
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3702
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3703
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3705
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteCameraTurnedOnLocked(J)V

    .line 3694
    return-void
.end method

.method public noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 16
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    .prologue
    .line 2866
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 2867
    .local v10, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2871
    .local v12, "uptime":J
    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->size()I

    move-result v2

    .line 2872
    .local v2, "NN":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v2, :cond_0

    .line 2873
    move-object/from16 v0, p6

    invoke-virtual {v0, v15}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    move-object/from16 v3, p0

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 2872
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2876
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/WorkSource;->size()I

    move-result v14

    .line 2877
    .local v14, "NO":I
    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_1

    .line 2878
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 2877
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2865
    :cond_1
    return-void
.end method

.method public noteConnectivityChangedLocked(ILjava/lang/String;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 3155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3156
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3157
    .local v4, "uptime":J
    const/16 v6, 0x9

    move-object v1, p0

    move-object v7, p2

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3159
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 3154
    return-void
.end method

.method public noteCurrentTimeChangedLocked()V
    .locals 8

    .prologue
    .line 2575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2576
    .local v2, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2577
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .local v6, "uptime":J
    move-object v1, p0

    .line 2578
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->recordCurrentTimeChangeLocked(JJJ)V

    .line 2579
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->ensureStartClockTime(J)Z

    .line 2574
    return-void
.end method

.method public noteDeviceIdleModeLocked(ZLjava/lang/String;I)V
    .locals 10
    .param p1, "enabled"    # Z
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    .prologue
    .line 3225
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3226
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3227
    .local v4, "uptime":J
    move v0, p1

    .line 3228
    .local v0, "nowIdling":Z
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdling:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    .line 3233
    .end local v0    # "nowIdling":Z
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdling:Z

    if-eq v1, v0, :cond_1

    .line 3234
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdling:Z

    .line 3235
    if-eqz v0, :cond_4

    const/16 v9, 0x8

    .line 3236
    .local v9, "stepState":I
    :goto_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v6, v6, 0x8

    xor-int/2addr v6, v9

    or-int/2addr v1, v6

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 3237
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v1, v1, -0x9

    or-int/2addr v1, v9

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 3238
    if-eqz p1, :cond_5

    .line 3239
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3244
    .end local v9    # "stepState":I
    :cond_1
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabled:Z

    if-eq v1, p1, :cond_2

    .line 3245
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabled:Z

    .line 3247
    if-eqz p2, :cond_6

    move-object v7, p2

    .line 3246
    :goto_3
    const/16 v6, 0xa

    move-object v1, p0

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3248
    if-eqz p1, :cond_7

    .line 3249
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v7, 0x4000000

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3252
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3259
    :goto_4
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3224
    :cond_2
    return-void

    .line 3228
    .restart local v0    # "nowIdling":Z
    :cond_3
    if-nez p2, :cond_0

    .line 3231
    const/4 v0, 0x1

    .local v0, "nowIdling":Z
    goto :goto_0

    .line 3235
    .end local v0    # "nowIdling":Z
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "stepState":I
    goto :goto_1

    .line 3241
    :cond_5
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_2

    .line 3247
    .end local v9    # "stepState":I
    :cond_6
    const-string/jumbo v7, ""

    goto :goto_3

    .line 3254
    :cond_7
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v7, -0x4000001

    and-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3257
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_4
.end method

.method public noteEventLocked(ILjava/lang/String;I)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 2553
    invoke-virtual {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p3

    .line 2554
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2555
    return-void

    .line 2557
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2558
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "uptime":J
    move-object v1, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    .line 2559
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2552
    return-void
.end method

.method public noteFlashlightOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3678
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-nez v4, :cond_0

    .line 3679
    return-void

    .line 3681
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3683
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3684
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-nez v4, :cond_1

    .line 3685
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x8000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3688
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3689
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3691
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFlashlightTurnedOffLocked(J)V

    .line 3677
    return-void
.end method

.method public noteFlashlightOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3664
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3665
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3666
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3667
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-nez v4, :cond_0

    .line 3668
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3671
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3672
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3674
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFlashlightTurnedOnLocked(J)V

    .line 3663
    return-void
.end method

.method public noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4012
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4013
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4014
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 4013
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4011
    :cond_0
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3912
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3913
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3914
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3915
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    if-nez v4, :cond_0

    .line 3916
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3919
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3921
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3922
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockAcquiredLocked(J)V

    .line 3911
    return-void
.end method

.method public noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4019
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4020
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4021
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 4020
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4018
    :cond_0
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3926
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3927
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3928
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3929
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    .line 3930
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    if-nez v4, :cond_0

    .line 3931
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x10000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3934
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3936
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockReleasedLocked(J)V

    .line 3925
    return-void
.end method

.method public noteInteractiveLocked(Z)V
    .locals 3
    .param p1, "interactive"    # Z

    .prologue
    .line 3142
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    if-eq v2, p1, :cond_0

    .line 3143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3144
    .local v0, "elapsedRealtime":J
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    .line 3146
    if-eqz p1, :cond_1

    .line 3147
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3141
    .end local v0    # "elapsedRealtime":J
    :cond_0
    :goto_0
    return-void

    .line 3149
    .restart local v0    # "elapsedRealtime":J
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_0
.end method

.method public noteJobFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x4006

    .line 2670
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2671
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2672
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2673
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopJobLocked(Ljava/lang/String;J)V

    .line 2674
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2675
    return-void

    :cond_0
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2677
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2669
    return-void
.end method

.method public noteJobStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x8006

    .line 2659
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2660
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2661
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2662
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartJobLocked(Ljava/lang/String;J)V

    .line 2663
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2664
    return-void

    :cond_0
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2666
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2658
    return-void
.end method

.method public noteMobileRadioPowerState(IJ)V
    .locals 12
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    .prologue
    .line 3163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3164
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3165
    .local v8, "uptime":J
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    if-eq v1, p1, :cond_0

    .line 3168
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    if-eq p1, v1, :cond_1

    .line 3169
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 3170
    .local v0, "active":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 3171
    move-wide v6, v2

    .local v6, "realElapsedRealtimeMs":J
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveStartTime:J

    .line 3172
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v11, 0x2000000

    or-int/2addr v10, v11

    iput v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3188
    :goto_1
    invoke-virtual {p0, v2, v3, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3189
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 3190
    if-eqz v0, :cond_6

    .line 3191
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3192
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3162
    .end local v0    # "active":Z
    .end local v6    # "realElapsedRealtimeMs":J
    :cond_0
    :goto_2
    return-void

    .line 3168
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "active":Z
    goto :goto_0

    .line 3169
    .end local v0    # "active":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "active":Z
    goto :goto_0

    .line 3174
    :cond_3
    const-wide/32 v10, 0xf4240

    div-long v6, p2, v10

    .line 3175
    .restart local v6    # "realElapsedRealtimeMs":J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveStartTime:J

    .line 3176
    .local v4, "lastUpdateTimeMs":J
    cmp-long v1, v6, v4

    if-gez v1, :cond_5

    .line 3177
    const-string/jumbo v1, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Data connection inactive timestamp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3178
    const-string/jumbo v11, " is before start time "

    .line 3177
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    move-wide v6, v2

    .line 3184
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v11, -0x2000001

    and-int/2addr v10, v11

    iput v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_1

    .line 3180
    :cond_5
    cmp-long v1, v6, v2

    if-gez v1, :cond_4

    .line 3181
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    sub-long v10, v2, v6

    invoke-virtual {v1, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_3

    .line 3194
    .end local v4    # "lastUpdateTimeMs":J
    :cond_6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3195
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioStateLocked(J)V

    .line 3196
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_2
.end method

.method public noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    .line 4093
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4094
    :cond_0
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4095
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    .line 4101
    :goto_0
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4102
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    .line 4092
    :goto_1
    return-void

    .line 4098
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    goto :goto_0

    .line 4105
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    goto :goto_1
.end method

.method public noteNetworkStatsEnabledLocked()V
    .locals 3

    .prologue
    .line 4114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4115
    .local v0, "elapsedRealtimeMs":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioStateLocked(J)V

    .line 4116
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    .line 4110
    return-void
.end method

.method public notePackageInstalledLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    .line 3264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3265
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3266
    .local v4, "uptime":J
    const/16 v6, 0xb

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3268
    new-instance v0, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v0}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 3269
    .local v0, "pc":Landroid/os/BatteryStats$PackageChange;
    iput-object p1, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 3270
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 3271
    iput p2, v0, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    .line 3272
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addPackageChange(Landroid/os/BatteryStats$PackageChange;)V

    .line 3263
    return-void
.end method

.method public notePackageUninstalledLocked(Ljava/lang/String;)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3277
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3278
    .local v4, "uptime":J
    const/16 v6, 0xc

    .line 3279
    const/4 v8, 0x0

    move-object v1, p0

    move-object v7, p1

    .line 3278
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3280
    new-instance v0, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v0}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 3281
    .local v0, "pc":Landroid/os/BatteryStats$PackageChange;
    iput-object p1, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 3282
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 3283
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addPackageChange(Landroid/os/BatteryStats$PackageChange;)V

    .line 3275
    return-void
.end method

.method public notePhoneDataConnectionStateLocked(IZ)V
    .locals 8
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z

    .prologue
    .line 3446
    const/4 v0, 0x0

    .line 3447
    .local v0, "bin":I
    if-eqz p2, :cond_0

    .line 3448
    packed-switch p1, :pswitch_data_0

    .line 3495
    const/16 v0, 0x10

    .line 3500
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    if-eq v1, v0, :cond_2

    .line 3501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3502
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3503
    .local v4, "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v6, v6, -0x3e01

    .line 3504
    shl-int/lit8 v7, v0, 0x9

    .line 3503
    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3507
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3508
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    if-ltz v1, :cond_1

    .line 3509
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    aget-object v1, v1, v6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3512
    :cond_1
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    .line 3513
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3445
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_2
    return-void

    .line 3450
    :pswitch_0
    const/4 v0, 0x2

    .line 3451
    goto :goto_0

    .line 3453
    :pswitch_1
    const/4 v0, 0x1

    .line 3454
    goto :goto_0

    .line 3456
    :pswitch_2
    const/4 v0, 0x3

    .line 3457
    goto :goto_0

    .line 3459
    :pswitch_3
    const/4 v0, 0x4

    .line 3460
    goto :goto_0

    .line 3462
    :pswitch_4
    const/4 v0, 0x5

    .line 3463
    goto :goto_0

    .line 3465
    :pswitch_5
    const/4 v0, 0x6

    .line 3466
    goto :goto_0

    .line 3468
    :pswitch_6
    const/4 v0, 0x7

    .line 3469
    goto :goto_0

    .line 3471
    :pswitch_7
    const/16 v0, 0x8

    .line 3472
    goto :goto_0

    .line 3474
    :pswitch_8
    const/16 v0, 0x9

    .line 3475
    goto :goto_0

    .line 3477
    :pswitch_9
    const/16 v0, 0xa

    .line 3478
    goto :goto_0

    .line 3480
    :pswitch_a
    const/16 v0, 0xb

    .line 3481
    goto :goto_0

    .line 3483
    :pswitch_b
    const/16 v0, 0xc

    .line 3484
    goto :goto_0

    .line 3486
    :pswitch_c
    const/16 v0, 0xd

    .line 3487
    goto :goto_0

    .line 3489
    :pswitch_d
    const/16 v0, 0xe

    .line 3490
    goto :goto_0

    .line 3492
    :pswitch_e
    const/16 v0, 0xf

    .line 3493
    goto :goto_0

    .line 3448
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public notePhoneOffLocked()V
    .locals 7

    .prologue
    .line 3307
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    if-eqz v4, :cond_0

    .line 3308
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3309
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3310
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x1000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3313
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3314
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 3315
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3306
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public notePhoneOnLocked()V
    .locals 7

    .prologue
    .line 3294
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    if-nez v4, :cond_0

    .line 3295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3296
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3297
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x1000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3300
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3301
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 3302
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3293
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 3441
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .line 3442
    .local v0, "bin":I
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateAllPhoneStateLocked(III)V

    .line 3439
    return-void
.end method

.method public notePhoneStateLocked(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "simState"    # I

    .prologue
    .line 3436
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateAllPhoneStateLocked(III)V

    .line 3435
    return-void
.end method

.method public notePowerSaveMode(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    .line 3202
    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabled:Z

    if-eq v3, p1, :cond_0

    .line 3203
    if-eqz p1, :cond_1

    const/4 v2, 0x4

    .line 3204
    .local v2, "stepState":I
    :goto_0
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v6, v6, 0x4

    xor-int/2addr v6, v2

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 3205
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v3, v3, -0x5

    or-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 3206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3207
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3208
    .local v4, "uptime":J
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabled:Z

    .line 3209
    if-eqz p1, :cond_2

    .line 3210
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v7, -0x80000000

    or-int/2addr v6, v7

    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3213
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3220
    :goto_1
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3201
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "stepState":I
    .end local v4    # "uptime":J
    :cond_0
    return-void

    .line 3203
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "stepState":I
    goto :goto_0

    .line 3215
    .restart local v0    # "elapsedRealtime":J
    .restart local v4    # "uptime":J
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3218
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_1
.end method

.method public noteProcessAnrLocked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2608
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2609
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2610
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2611
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incNumAnrsLocked()V

    .line 2607
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    return-void
.end method

.method public noteProcessCrashLocked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2600
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2601
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2602
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2603
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incNumCrashesLocked()V

    .line 2599
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    return-void
.end method

.method public noteProcessDiedLocked(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 2939
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2940
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2941
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    .line 2942
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2938
    :cond_0
    return-void
.end method

.method public noteProcessFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x4001

    .line 2622
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2623
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2624
    return-void

    .line 2626
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2627
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2628
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateProcessStateLocked(Ljava/lang/String;IJ)V

    .line 2630
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v0, :cond_1

    .line 2631
    return-void

    :cond_1
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2633
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2621
    return-void
.end method

.method public noteProcessStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x8001

    .line 2583
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2584
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2585
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2586
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incStartsLocked()V

    .line 2588
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, p1, p2, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2589
    return-void

    .line 2591
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v1, :cond_2

    .line 2592
    return-void

    .line 2594
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2595
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "uptime":J
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2596
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2582
    return-void
.end method

.method public noteProcessStateLocked(Ljava/lang/String;II)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "state"    # I

    .prologue
    .line 2616
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2617
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2618
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, p1, p3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateProcessStateLocked(Ljava/lang/String;IJ)V

    .line 2615
    return-void
.end method

.method public noteResetAudioLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 3610
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    if-lez v6, :cond_0

    .line 3611
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3612
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3613
    .local v4, "uptime":J
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    .line 3614
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, -0x400001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3617
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3618
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3619
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3620
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3621
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetAudioLocked(J)V

    .line 3619
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3609
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteResetCameraLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 3726
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    if-lez v6, :cond_0

    .line 3727
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3728
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3729
    .local v4, "uptime":J
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    .line 3730
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x400001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3733
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3734
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3735
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3736
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3737
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetCameraLocked(J)V

    .line 3735
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3725
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteResetFlashlightLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 3743
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-lez v6, :cond_0

    .line 3744
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3745
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3746
    .local v4, "uptime":J
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    .line 3747
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x8000001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3750
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3751
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3752
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3753
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3754
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetFlashlightLocked(J)V

    .line 3752
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3742
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteResetVideoLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 3627
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-lez v6, :cond_0

    .line 3628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3629
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3630
    .local v4, "uptime":J
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    .line 3631
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x40000001    # -1.9999999f

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3634
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3635
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3636
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3637
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3638
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetVideoLocked(J)V

    .line 3636
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3626
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteScreenBrightnessLocked(I)V
    .locals 8
    .param p1, "brightness"    # I

    .prologue
    .line 3106
    div-int/lit8 v0, p1, 0x33

    .line 3107
    .local v0, "bin":I
    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 3109
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-eq v1, v0, :cond_3

    .line 3110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3111
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3112
    .local v4, "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v6, v6, -0x8

    .line 3113
    shl-int/lit8 v7, v0, 0x0

    .line 3112
    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3116
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3117
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 3118
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_1

    .line 3119
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3121
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3123
    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    .line 3104
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_3
    return-void

    .line 3108
    :cond_4
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method public noteScreenStateLocked(I)V
    .locals 13
    .param p1, "state"    # I

    .prologue
    .line 3035
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    if-eq v1, p1, :cond_2

    .line 3036
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsIfNeededLocked(Z)V

    .line 3037
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 3038
    .local v0, "oldState":I
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 3042
    if-eqz p1, :cond_0

    .line 3043
    add-int/lit8 v12, p1, -0x1

    .line 3044
    .local v12, "stepState":I
    const/4 v1, 0x4

    if-ge v12, v1, :cond_3

    .line 3045
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v2, v2, 0x3

    xor-int/2addr v2, v12

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 3046
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    and-int/lit8 v1, v1, -0x4

    or-int/2addr v1, v12

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    .line 3052
    .end local v12    # "stepState":I
    :cond_0
    :goto_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 3054
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3055
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3056
    .local v10, "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3059
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3060
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3061
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_1

    .line 3062
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3065
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    .line 3066
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    .line 3065
    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    .line 3070
    const-string/jumbo v4, "screen"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 3074
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v1, :cond_2

    .line 3075
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    .line 3034
    .end local v0    # "oldState":I
    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    :cond_2
    :goto_1
    return-void

    .line 3048
    .restart local v0    # "oldState":I
    .restart local v12    # "stepState":I
    :cond_3
    const-string/jumbo v1, "BatteryStatsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected screen state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3077
    .end local v12    # "stepState":I
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3079
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3080
    .restart local v8    # "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3081
    .restart local v10    # "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3084
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3085
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3086
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-ltz v1, :cond_5

    .line 3087
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3090
    :cond_5
    const-string/jumbo v5, "screen"

    const-string/jumbo v6, "screen"

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 3093
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    .line 3094
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    .line 3093
    const/4 v3, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    .line 3097
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v1, :cond_2

    .line 3098
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    goto :goto_1
.end method

.method public noteStartGpsLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3007
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3008
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3009
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3010
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    if-nez v4, :cond_0

    .line 3011
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3014
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3016
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    .line 3017
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartGps(J)V

    .line 3006
    return-void
.end method

.method public noteStartSensorLocked(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 2977
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2978
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2979
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2980
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    if-nez v4, :cond_0

    .line 2981
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2984
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2986
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    .line 2987
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSensor(IJ)V

    .line 2976
    return-void
.end method

.method public noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 13
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .prologue
    .line 2854
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2855
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2856
    .local v10, "uptime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 2857
    .local v0, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v0, :cond_0

    .line 2858
    invoke-virtual {p1, v12}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    move-object v1, p0

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 2857
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2853
    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .param p7, "elapsedRealtime"    # J
    .param p9, "uptime"    # J

    .prologue
    .line 2766
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2767
    if-nez p5, :cond_3

    .line 2770
    move-wide/from16 v0, p9

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->aggregateLastWakeupUptimeLocked(J)V

    .line 2771
    if-nez p4, :cond_0

    .line 2772
    move-object/from16 p4, p3

    .line 2774
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-eqz v4, :cond_1

    .line 2775
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const v5, 0x8005

    .line 2776
    const/4 v6, 0x0

    .line 2775
    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0, p1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2778
    const v10, 0x8005

    move-object v5, p0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-object/from16 v11, p4

    move v12, p1

    .line 2777
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2781
    :cond_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    if-nez v4, :cond_7

    .line 2782
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2785
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2786
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2787
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    iput p1, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2788
    if-eqz p6, :cond_6

    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    .line 2789
    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2802
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    .line 2804
    :cond_3
    if-ltz p1, :cond_5

    .line 2805
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2811
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestWakelockCpuUpdate()V

    .line 2813
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    move v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartWakeLocked(ILjava/lang/String;IJ)V

    .line 2765
    :cond_5
    return-void

    .line 2788
    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    .line 2790
    :cond_7
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    if-nez v4, :cond_2

    if-nez p6, :cond_2

    .line 2791
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v4, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v4, :cond_2

    .line 2792
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v4, :cond_8

    .line 2794
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2795
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2796
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2797
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    iput p1, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2798
    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2800
    :cond_8
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    goto :goto_1
.end method

.method public noteStopGpsLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3021
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3022
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3023
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3024
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    .line 3025
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    if-nez v4, :cond_0

    .line 3026
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x20000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3029
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3031
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopGps(J)V

    .line 3020
    return-void
.end method

.method public noteStopSensorLocked(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 2991
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2992
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2993
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2994
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    .line 2995
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    if-nez v4, :cond_0

    .line 2996
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x800001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2999
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3001
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSensor(IJ)V

    .line 2990
    return-void
.end method

.method public noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 2884
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2885
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2886
    .local v8, "uptime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v10

    .line 2887
    .local v10, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_0

    .line 2888
    invoke-virtual {p1, v11}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 2887
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2883
    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "uptime"    # J

    .prologue
    .line 2819
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2820
    if-nez p5, :cond_2

    .line 2821
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    .line 2822
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-eqz v4, :cond_1

    .line 2823
    if-nez p4, :cond_0

    .line 2824
    move-object/from16 p4, p3

    .line 2826
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/16 v5, 0x4005

    .line 2827
    const/4 v6, 0x0

    .line 2826
    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0, p1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2829
    const/16 v10, 0x4005

    move-object v5, p0

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v11, p4

    move v12, p1

    .line 2828
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2832
    :cond_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    if-nez v4, :cond_2

    .line 2833
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2836
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    .line 2837
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    .line 2838
    move-wide/from16 v0, p6

    move-wide/from16 v2, p8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2841
    :cond_2
    if-ltz p1, :cond_4

    .line 2842
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2846
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestWakelockCpuUpdate()V

    .line 2848
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopWakeLocked(ILjava/lang/String;IJ)V

    .line 2818
    :cond_4
    return-void
.end method

.method public noteSyncFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x4004

    .line 2648
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2649
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2650
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2651
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSyncLocked(Ljava/lang/String;J)V

    .line 2652
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2653
    return-void

    :cond_0
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2655
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2647
    return-void
.end method

.method public noteSyncStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x8004

    .line 2637
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p2

    .line 2638
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2639
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2640
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSyncLocked(Ljava/lang/String;J)V

    .line 2641
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2642
    return-void

    :cond_0
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2644
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2636
    return-void
.end method

.method public noteUserActivityLocked(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .prologue
    .line 3128
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v0, :cond_0

    .line 3129
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3130
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteUserActivityLocked(I)V

    .line 3127
    :cond_0
    return-void
.end method

.method public noteVibratorOffLocked(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 3659
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3660
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVibratorOffLocked()V

    .line 3658
    return-void
.end method

.method public noteVibratorOnLocked(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .prologue
    .line 3654
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3655
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVibratorOnLocked(J)V

    .line 3653
    return-void
.end method

.method public noteVideoOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3593
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v4, :cond_0

    .line 3594
    return-void

    .line 3596
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3597
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3598
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3599
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v4, :cond_1

    .line 3600
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3603
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3604
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3606
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOffLocked(J)V

    .line 3592
    return-void
.end method

.method public noteVideoOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3578
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3580
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3581
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v4, :cond_0

    .line 3582
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3585
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3586
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3588
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    .line 3589
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOnLocked(J)V

    .line 3577
    return-void
.end method

.method public noteWakeUpLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    .prologue
    .line 3135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3136
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3137
    .local v4, "uptime":J
    const/16 v6, 0x12

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3134
    return-void
.end method

.method public noteWakeupReasonLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2903
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2904
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2907
    .local v2, "uptime":J
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->aggregateLastWakeupUptimeLocked(J)V

    .line 2908
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2909
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p1, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2910
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2911
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    .line 2912
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    .line 2913
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 2902
    return-void
.end method

.method public noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .prologue
    .line 4040
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4041
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4042
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedLocked(II)V

    .line 4041
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4039
    :cond_0
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "csph"    # I

    .prologue
    .line 3970
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3971
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3972
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiBatchedScanStartedLocked(IJ)V

    .line 3969
    return-void
.end method

.method public noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4047
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4048
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4049
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedLocked(I)V

    .line 4048
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4046
    :cond_0
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 3976
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3977
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3978
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiBatchedScanStoppedLocked(J)V

    .line 3975
    return-void
.end method

.method public noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4061
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4062
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4063
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 4062
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4060
    :cond_0
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3998
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3999
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4000
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4001
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 4002
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    if-nez v4, :cond_0

    .line 4003
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x10001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 4006
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 4008
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastDisabledLocked(J)V

    .line 3997
    return-void
.end method

.method public noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4054
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4055
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4056
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 4055
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4053
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3984
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3985
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3986
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3987
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    if-nez v4, :cond_0

    .line 3988
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3991
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3993
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    .line 3994
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastEnabledLocked(J)V

    .line 3983
    return-void
.end method

.method public noteWifiOffLocked()V
    .locals 7

    .prologue
    .line 3532
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3533
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3534
    .local v2, "uptime":J
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    if-eqz v4, :cond_0

    .line 3535
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x10000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3538
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3539
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 3540
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3541
    const-string/jumbo v4, "wifi-on"

    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3531
    :cond_0
    return-void
.end method

.method public noteWifiOnLocked()V
    .locals 7

    .prologue
    .line 3518
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    if-nez v4, :cond_0

    .line 3519
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3520
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3521
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3524
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3525
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 3526
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3527
    const-string/jumbo v4, "wifi-off"

    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3517
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteWifiRadioPowerState(IJ)V
    .locals 8
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    .prologue
    .line 3760
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3761
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3762
    .local v4, "uptime":J
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    if-eq v1, p1, :cond_0

    .line 3764
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    if-eq p1, v1, :cond_1

    .line 3765
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 3766
    .local v0, "active":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 3767
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v7, 0x4000000

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3773
    :goto_1
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3774
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    .line 3759
    .end local v0    # "active":Z
    :cond_0
    return-void

    .line 3764
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "active":Z
    goto :goto_0

    .line 3765
    .end local v0    # "active":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "active":Z
    goto :goto_0

    .line 3769
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v7, -0x4000001

    and-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_1
.end method

.method public noteWifiRssiChangedLocked(I)V
    .locals 8
    .param p1, "newRssi"    # I

    .prologue
    .line 3883
    const/4 v3, 0x5

    invoke-static {p1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 3885
    .local v2, "strengthBin":I
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    if-eq v3, v2, :cond_2

    .line 3886
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3887
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3888
    .local v4, "uptime":J
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    if-ltz v3, :cond_0

    .line 3889
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    aget-object v3, v3, v6

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3892
    :cond_0
    if-ltz v2, :cond_3

    .line 3893
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3894
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3896
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 3897
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v6, v6, -0x71

    .line 3898
    shl-int/lit8 v7, v2, 0x4

    .line 3897
    or-int/2addr v6, v7

    .line 3896
    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3901
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3905
    :goto_0
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    .line 3882
    .end local v0    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_2
    return-void

    .line 3903
    .restart local v0    # "elapsedRealtime":J
    .restart local v4    # "uptime":J
    :cond_3
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->stopAllWifiSignalStrengthTimersLocked(I)V

    goto :goto_0
.end method

.method public noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 7
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .prologue
    .line 3800
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-eqz v5, :cond_1

    .line 3801
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3802
    .local v2, "elapsedRealtime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3803
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3804
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    .line 3805
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked(J)V

    .line 3803
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3807
    .end local v4    # "uid":I
    :cond_0
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3808
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 3809
    invoke-virtual {p2, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    .line 3810
    .restart local v4    # "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked(J)V

    .line 3808
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3813
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uid":I
    :cond_1
    const-string/jumbo v5, "BatteryStatsImpl"

    const-string/jumbo v6, "noteWifiRunningChangedLocked -- called while WIFI not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    :cond_2
    return-void
.end method

.method public noteWifiRunningLocked(Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3779
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-nez v5, :cond_1

    .line 3780
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3781
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3782
    .local v6, "uptime":J
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v9, 0x20000000

    or-int/2addr v8, v9

    iput v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3785
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3786
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 3787
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3788
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3789
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3790
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    .line 3791
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked(J)V

    .line 3789
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3793
    .end local v4    # "uid":I
    :cond_0
    const-string/jumbo v5, "wifi-running"

    invoke-direct {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3778
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    :goto_1
    return-void

    .line 3795
    :cond_1
    const-string/jumbo v5, "BatteryStatsImpl"

    const-string/jumbo v8, "noteWifiRunningLocked -- called while WIFI running"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4026
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4027
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4028
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    .line 4027
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4025
    :cond_0
    return-void
.end method

.method public noteWifiScanStartedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3942
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3943
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3944
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3945
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    if-nez v4, :cond_0

    .line 3946
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3949
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3951
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3952
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiScanStartedLocked(J)V

    .line 3941
    return-void
.end method

.method public noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4033
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4034
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4035
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    .line 4034
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4032
    :cond_0
    return-void
.end method

.method public noteWifiScanStoppedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3956
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 3957
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3958
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3959
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    .line 3960
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    if-nez v4, :cond_0

    .line 3961
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x8000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3964
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3966
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiScanStoppedLocked(J)V

    .line 3955
    return-void
.end method

.method public noteWifiStateLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .prologue
    .line 3840
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    if-eq v2, p1, :cond_1

    .line 3841
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3842
    .local v0, "elapsedRealtime":J
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    if-ltz v2, :cond_0

    .line 3843
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3845
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    .line 3846
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3847
    const-string/jumbo v2, "wifi-state"

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3838
    .end local v0    # "elapsedRealtime":J
    :cond_1
    return-void
.end method

.method public noteWifiStoppedLocked(Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3818
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    if-eqz v5, :cond_1

    .line 3819
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3820
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3821
    .local v6, "uptime":J
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v9, -0x20000001

    and-int/2addr v8, v9

    iput v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3824
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3825
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 3826
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3827
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3828
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3829
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    .line 3830
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked(J)V

    .line 3828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3832
    .end local v4    # "uid":I
    :cond_0
    const-string/jumbo v5, "wifi-stopped"

    invoke-direct {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3817
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    :goto_1
    return-void

    .line 3834
    :cond_1
    const-string/jumbo v5, "BatteryStatsImpl"

    const-string/jumbo v8, "noteWifiStoppedLocked -- called while WIFI not running"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public noteWifiSupplicantStateChangedLocked(IZ)V
    .locals 7
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    .prologue
    .line 3853
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    if-eq v4, p1, :cond_1

    .line 3854
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3855
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3856
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    if-ltz v4, :cond_0

    .line 3857
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3859
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    .line 3860
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, p1

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3861
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 3862
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v5, v5, -0x10

    .line 3863
    shl-int/lit8 v6, p1, 0x0

    .line 3862
    or-int/2addr v5, v6

    .line 3861
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3866
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 3851
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_1
    return-void
.end method

.method public prepareForDumpLocked()V
    .locals 0

    .prologue
    .line 10069
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 10073
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    .line 10067
    return-void
.end method

.method public pullPendingStateUpdatesLocked()V
    .locals 3

    .prologue
    .line 7550
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v1, :cond_0

    .line 7551
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 7552
    .local v0, "screenOn":Z
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    .line 7549
    .end local v0    # "screenOn":Z
    :cond_0
    return-void

    .line 7551
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "screenOn":Z
    goto :goto_0
.end method

.method readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "dit"    # Landroid/os/BatteryStats$DailyItem;
    .param p3, "isCharge"    # Z
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7153
    const-string/jumbo v8, "n"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7154
    .local v2, "numAttr":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 7155
    const-string/jumbo v8, "BatteryStatsImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Missing \'n\' attribute at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7156
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 7157
    return-void

    .line 7159
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 7160
    .local v1, "num":I
    new-instance v4, Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {v4, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    .line 7161
    .local v4, "steps":Landroid/os/BatteryStats$LevelStepTracker;
    if-eqz p3, :cond_3

    .line 7162
    iput-object v4, p2, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    .line 7166
    :goto_0
    const/4 v0, 0x0

    .line 7167
    .local v0, "i":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 7169
    .local v3, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_5

    .line 7170
    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_5

    .line 7171
    :cond_2
    const/4 v8, 0x3

    if-eq v6, v8, :cond_1

    const/4 v8, 0x4

    if-eq v6, v8, :cond_1

    .line 7175
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 7176
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "s"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 7177
    if-ge v0, v1, :cond_1

    .line 7178
    const-string/jumbo v8, "v"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7179
    .local v7, "valueAttr":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 7180
    invoke-virtual {v4, v0, v7}, Landroid/os/BatteryStats$LevelStepTracker;->decodeEntryAt(ILjava/lang/String;)V

    .line 7181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7164
    .end local v0    # "i":I
    .end local v3    # "outerDepth":I
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "valueAttr":Ljava/lang/String;
    :cond_3
    iput-object v4, p2, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    goto :goto_0

    .line 7185
    .restart local v0    # "i":I
    .restart local v3    # "outerDepth":I
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_4
    const-string/jumbo v8, "BatteryStatsImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown element under <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ">: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 7186
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 7185
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7187
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 7190
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_5
    iput v0, v4, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7152
    return-void
.end method

.method readDailyItemTagLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7099
    new-instance v1, Landroid/os/BatteryStats$DailyItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$DailyItem;-><init>()V

    .line 7100
    .local v1, "dit":Landroid/os/BatteryStats$DailyItem;
    const-string/jumbo v7, "start"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7101
    .local v0, "attr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 7102
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    .line 7104
    :cond_0
    const-string/jumbo v7, "end"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7105
    if-eqz v0, :cond_1

    .line 7106
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    .line 7108
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 7110
    .local v2, "outerDepth":I
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_b

    .line 7111
    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_b

    .line 7112
    :cond_3
    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    const/4 v7, 0x4

    if-eq v5, v7, :cond_2

    .line 7116
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 7117
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "dis"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7118
    const-string/jumbo v7, "dis"

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v1, v8, v7}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V

    goto :goto_0

    .line 7119
    :cond_4
    const-string/jumbo v7, "chg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7120
    const-string/jumbo v7, "chg"

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v1, v8, v7}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V

    goto :goto_0

    .line 7121
    :cond_5
    const-string/jumbo v7, "upd"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 7122
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    .line 7123
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    .line 7125
    :cond_6
    new-instance v3, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v3}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 7126
    .local v3, "pc":Landroid/os/BatteryStats$PackageChange;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 7127
    const-string/jumbo v7, "pkg"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 7128
    const-string/jumbo v7, "ver"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7129
    .local v6, "verStr":Ljava/lang/String;
    if-eqz v6, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_1
    iput v7, v3, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    .line 7130
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7131
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 7129
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 7132
    .end local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    .end local v6    # "verStr":Ljava/lang/String;
    :cond_8
    const-string/jumbo v7, "rem"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 7133
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    if-nez v7, :cond_9

    .line 7134
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    .line 7136
    :cond_9
    new-instance v3, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v3}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 7137
    .restart local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 7138
    const-string/jumbo v7, "pkg"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 7139
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7140
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 7142
    .end local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_a
    const-string/jumbo v7, "BatteryStatsImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown element under <item>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 7143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 7142
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7144
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 7147
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7098
    return-void
.end method

.method public readDailyStatsLocked()V
    .locals 8

    .prologue
    .line 7032
    const-string/jumbo v5, "BatteryStatsImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Reading daily items from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7033
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7036
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 7041
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 7042
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 7043
    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7047
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 7031
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    .line 7037
    .end local v4    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 7038
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void

    .line 7048
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 7044
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    .line 7047
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 7048
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 7045
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v5

    .line 7047
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 7045
    :goto_1
    throw v5

    .line 7048
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 9759
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 9758
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 24
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 9763
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 9764
    .local v16, "magic":I
    const v4, -0x458a8b8b

    move/from16 v0, v16

    if-eq v0, v4, :cond_0

    .line 9765
    new-instance v4, Landroid/os/ParcelFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad magic number: #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9768
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->readHistory(Landroid/os/Parcel;Z)V

    .line 9770
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 9771
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    .line 9772
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    .line 9773
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    .line 9774
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    .line 9775
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    .line 9776
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    .line 9777
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    .line 9778
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 9779
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    .line 9780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 9781
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 9783
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 9784
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9785
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/4 v4, 0x5

    if-ge v12, v4, :cond_2

    .line 9786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int/lit8 v6, v12, -0x64

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9785
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 9778
    .end local v12    # "i":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 9789
    .restart local v12    # "i":I
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    .line 9790
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0xa

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9791
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 9792
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9793
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0xb

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9794
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0xc

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9795
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/4 v6, -0x3

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9796
    const/4 v12, 0x0

    :goto_2
    const/4 v4, 0x6

    if-ge v12, v4, :cond_3

    .line 9797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v6, v12, -0xc8

    .line 9798
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9797
    const/4 v5, 0x0

    .line 9798
    const/4 v7, 0x0

    move-object/from16 v9, p1

    .line 9797
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9796
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 9800
    :cond_3
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0xc7

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9801
    const/4 v12, 0x0

    :goto_3
    const/16 v4, 0x11

    if-ge v12, v4, :cond_4

    .line 9802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v6, v12, -0x12c

    .line 9803
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9802
    const/4 v5, 0x0

    .line 9803
    const/4 v7, 0x0

    move-object/from16 v9, p1

    .line 9802
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9801
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 9805
    :cond_4
    const/4 v12, 0x0

    :goto_4
    const/4 v4, 0x4

    if-ge v12, v4, :cond_5

    .line 9806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 9807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 9805
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 9809
    :cond_5
    sget v4, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 9810
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0x190

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9811
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0x191

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9813
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9814
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9815
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9816
    sget v4, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    .line 9817
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 9818
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/4 v6, -0x4

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9819
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 9820
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/4 v6, -0x5

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9821
    const/4 v12, 0x0

    :goto_5
    const/16 v4, 0x8

    if-ge v12, v4, :cond_6

    .line 9822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v6, v12, -0x258

    .line 9823
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9822
    const/4 v5, 0x0

    .line 9823
    const/4 v7, 0x0

    move-object/from16 v9, p1

    .line 9822
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9821
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 9825
    :cond_6
    const/4 v12, 0x0

    :goto_6
    const/16 v4, 0xd

    if-ge v12, v4, :cond_7

    .line 9826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v6, v12, -0x2bc

    .line 9827
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9826
    const/4 v5, 0x0

    .line 9827
    const/4 v7, 0x0

    move-object/from16 v9, p1

    .line 9826
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9825
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 9829
    :cond_7
    const/4 v12, 0x0

    :goto_7
    const/4 v4, 0x5

    if-ge v12, v4, :cond_8

    .line 9830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    rsub-int v6, v12, -0x320

    .line 9831
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9830
    const/4 v5, 0x0

    .line 9831
    const/4 v7, 0x0

    move-object/from16 v9, p1

    .line 9830
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9829
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 9833
    :cond_8
    const/4 v12, 0x0

    :goto_8
    const/4 v4, 0x4

    if-ge v12, v4, :cond_9

    .line 9834
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 9833
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 9836
    :cond_9
    const/4 v12, 0x0

    :goto_9
    const/4 v4, 0x4

    if-ge v12, v4, :cond_a

    .line 9837
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 9836
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 9840
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    .line 9841
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    .line 9842
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 9843
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    .line 9844
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    .line 9845
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    .line 9846
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v7, -0x7

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9847
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    .line 9848
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x0

    const/4 v7, -0x8

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9849
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    .line 9850
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0x9

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9851
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    .line 9852
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    const/16 v6, -0xd

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9853
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    .line 9854
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    .line 9855
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 9856
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 9857
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 9858
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 9859
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 9860
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 9861
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 9862
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 9863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9865
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 9867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 9868
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 9869
    .local v10, "NKW":I
    const/4 v13, 0x0

    .local v13, "ikw":I
    :goto_c
    if-ge v13, v10, :cond_e

    .line 9870
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 9871
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 9872
    .local v22, "wakelockName":Ljava/lang/String;
    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v15, v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 9873
    .local v15, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9869
    .end local v15    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v22    # "wakelockName":Ljava/lang/String;
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 9840
    .end local v10    # "NKW":I
    .end local v13    # "ikw":I
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 9841
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 9877
    .restart local v10    # "NKW":I
    .restart local v13    # "ikw":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 9878
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 9879
    .local v11, "NWR":I
    const/4 v14, 0x0

    .local v14, "iwr":I
    :goto_d
    if-ge v14, v11, :cond_10

    .line 9880
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 9881
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9882
    .local v18, "reasonName":Ljava/lang/String;
    new-instance v19, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 9883
    .local v19, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9879
    .end local v18    # "reasonName":Ljava/lang/String;
    .end local v19    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 9887
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 9888
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 9889
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 9890
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 9891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 9892
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 9893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 9894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 9895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 9896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 9897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 9898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 9900
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sput v4, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    .line 9902
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 9903
    .local v17, "numUids":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 9904
    const/4 v12, 0x0

    :goto_e
    move/from16 v0, v17

    if-ge v12, v0, :cond_11

    .line 9905
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 9906
    .local v21, "uid":I
    new-instance v20, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 9907
    .local v20, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 9908
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 9904
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 9762
    .end local v20    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v21    # "uid":I
    :cond_11
    return-void
.end method

.method readHistory(Landroid/os/Parcel;Z)V
    .locals 18
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "andOldHistory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    .prologue
    .line 8961
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 8963
    .local v4, "historyBaseTime":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->setDataSize(I)V

    .line 8964
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 8965
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 8966
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 8967
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 8969
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 8970
    .local v8, "numTags":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_2

    .line 8971
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 8972
    .local v7, "idx":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8973
    .local v9, "str":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 8974
    new-instance v14, Landroid/os/ParcelFormatException;

    const-string/jumbo v15, "null history tag string"

    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 8976
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 8977
    .local v13, "uid":I
    new-instance v12, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v12}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 8978
    .local v12, "tag":Landroid/os/BatteryStats$HistoryTag;
    iput-object v9, v12, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 8979
    iput v13, v12, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 8980
    iput v7, v12, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 8981
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8982
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    if-lt v7, v14, :cond_1

    .line 8983
    add-int/lit8 v14, v7, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    .line 8985
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    iget-object v15, v12, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    .line 8970
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8988
    .end local v7    # "idx":I
    .end local v9    # "str":Ljava/lang/String;
    .end local v12    # "tag":Landroid/os/BatteryStats$HistoryTag;
    .end local v13    # "uid":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8989
    .local v2, "bufSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 8990
    .local v3, "curPos":I
    const/high16 v14, 0xf0000

    if-lt v2, v14, :cond_3

    .line 8991
    new-instance v14, Landroid/os/ParcelFormatException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "File corrupt: history data buffer too large "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 8993
    :cond_3
    and-int/lit8 v14, v2, -0x4

    if-eq v14, v2, :cond_4

    .line 8994
    new-instance v14, Landroid/os/ParcelFormatException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "File corrupt: history data buffer not aligned "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 8999
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 9000
    add-int v14, v3, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9003
    if-eqz p2, :cond_5

    .line 9004
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->readOldHistory(Landroid/os/Parcel;)V

    .line 9013
    :cond_5
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    .line 9023
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_6

    .line 9024
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 9025
    .local v10, "oldnow":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    sub-long/2addr v14, v10

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    .line 8960
    .end local v10    # "oldnow":J
    :cond_6
    return-void
.end method

.method public readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 18
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2085
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2086
    .local v8, "firstToken":I
    const v14, 0x7ffff

    and-int v5, v8, v14

    .line 2087
    .local v5, "deltaTimeToken":I
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2088
    const/4 v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2092
    const v14, 0x7fffd

    if-ge v5, v14, :cond_1

    .line 2093
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2113
    :goto_0
    const/high16 v14, 0x80000

    and-int/2addr v14, v8

    if-eqz v14, :cond_4

    .line 2114
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2115
    .local v2, "batteryLevelInt":I
    shr-int/lit8 v14, v2, 0x19

    and-int/lit8 v14, v14, 0x7f

    int-to-byte v14, v14

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2116
    shl-int/lit8 v14, v2, 0x7

    shr-int/lit8 v14, v14, 0x15

    int-to-short v14, v14

    move-object/from16 v0, p2

    iput-short v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2117
    and-int/lit16 v14, v2, 0x3fff

    int-to-char v14, v14

    move-object/from16 v0, p2

    iput-char v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 2118
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2128
    :goto_1
    const/high16 v14, 0x100000

    and-int/2addr v14, v8

    if-eqz v14, :cond_5

    .line 2129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2130
    .local v11, "stateInt":I
    const/high16 v14, -0x1000000

    and-int/2addr v14, v8

    const v15, 0xffffff

    and-int/2addr v15, v11

    or-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2131
    shr-int/lit8 v14, v11, 0x1d

    and-int/lit8 v14, v14, 0x7

    int-to-byte v14, v14

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2133
    shr-int/lit8 v14, v11, 0x1a

    and-int/lit8 v14, v14, 0x7

    int-to-byte v14, v14

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2135
    shr-int/lit8 v14, v11, 0x18

    and-int/lit8 v14, v14, 0x3

    int-to-byte v14, v14

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2137
    move-object/from16 v0, p2

    iget-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    packed-switch v14, :pswitch_data_0

    .line 2148
    :goto_2
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2159
    .end local v11    # "stateInt":I
    :goto_3
    const/high16 v14, 0x200000

    and-int/2addr v14, v8

    if-eqz v14, :cond_0

    .line 2160
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2165
    :cond_0
    const/high16 v14, 0x400000

    and-int/2addr v14, v8

    if-eqz v14, :cond_8

    .line 2166
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2167
    .local v10, "indexes":I
    const v14, 0xffff

    and-int v12, v10, v14

    .line 2168
    .local v12, "wakeLockIndex":I
    shr-int/lit8 v14, v10, 0x10

    const v15, 0xffff

    and-int v13, v14, v15

    .line 2169
    .local v13, "wakeReasonIndex":I
    const v14, 0xffff

    if-eq v12, v14, :cond_6

    .line 2170
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2171
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 2177
    :goto_4
    const v14, 0xffff

    if-eq v13, v14, :cond_7

    .line 2178
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2179
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 2185
    :goto_5
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2191
    .end local v10    # "indexes":I
    .end local v12    # "wakeLockIndex":I
    .end local v13    # "wakeReasonIndex":I
    :goto_6
    const/high16 v14, 0x800000

    and-int/2addr v14, v8

    if-eqz v14, :cond_9

    .line 2192
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2193
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2194
    .local v3, "codeAndIndex":I
    const v14, 0xffff

    and-int/2addr v14, v3

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2195
    shr-int/lit8 v14, v3, 0x10

    const v15, 0xffff

    and-int v9, v14, v15

    .line 2196
    .local v9, "index":I
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 2197
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2205
    .end local v3    # "codeAndIndex":I
    .end local v9    # "index":I
    :goto_7
    and-int/lit8 v14, v2, 0x1

    if-eqz v14, :cond_a

    .line 2206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 2207
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/os/BatteryStats$HistoryStepDetails;->readFromParcel(Landroid/os/Parcel;)V

    .line 2084
    :goto_8
    return-void

    .line 2094
    .end local v2    # "batteryLevelInt":I
    :cond_1
    const v14, 0x7fffd

    if-ne v5, v14, :cond_2

    .line 2095
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2096
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2098
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 2099
    return-void

    .line 2100
    :cond_2
    const v14, 0x7fffe

    if-ne v5, v14, :cond_3

    .line 2101
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2102
    .local v4, "delta":I
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2103
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto/16 :goto_0

    .line 2106
    .end local v4    # "delta":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 2108
    .local v6, "delta":J
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v14, v6

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2109
    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto/16 :goto_0

    .line 2125
    .end local v6    # "delta":J
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "batteryLevelInt":I
    goto/16 :goto_1

    .line 2139
    .restart local v11    # "stateInt":I
    :pswitch_0
    const/4 v14, 0x1

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_2

    .line 2142
    :pswitch_1
    const/4 v14, 0x2

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_2

    .line 2145
    :pswitch_2
    const/4 v14, 0x4

    move-object/from16 v0, p2

    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_2

    .line 2156
    .end local v11    # "stateInt":I
    :cond_5
    const/high16 v14, -0x1000000

    and-int/2addr v14, v8

    move-object/from16 v0, p2

    iget v15, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v16, 0xffffff

    and-int v15, v15, v16

    or-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto/16 :goto_3

    .line 2175
    .restart local v10    # "indexes":I
    .restart local v12    # "wakeLockIndex":I
    .restart local v13    # "wakeReasonIndex":I
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_4

    .line 2183
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_5

    .line 2187
    .end local v10    # "indexes":I
    .end local v12    # "wakeLockIndex":I
    .end local v13    # "wakeReasonIndex":I
    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2188
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_6

    .line 2202
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    goto/16 :goto_7

    .line 2209
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    goto/16 :goto_8

    .line 2137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public readLocked()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 8910
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    if-eqz v1, :cond_0

    .line 8911
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 8914
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v1, :cond_1

    .line 8915
    const-string/jumbo v1, "BatteryStats"

    const-string/jumbo v6, "readLocked: no file associated with this instance"

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8916
    return-void

    .line 8919
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 8922
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v8

    .line 8923
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8924
    return-void

    .line 8926
    :cond_2
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8928
    .local v11, "stream":Ljava/io/FileInputStream;
    invoke-static {v11}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v10

    .line 8929
    .local v10, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 8930
    .local v9, "in":Landroid/os/Parcel;
    array-length v1, v10

    const/4 v6, 0x0

    invoke-virtual {v9, v10, v6, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 8931
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 8932
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 8934
    invoke-virtual {p0, v9}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8940
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "in":Landroid/os/Parcel;
    .end local v10    # "raw":[B
    .end local v11    # "stream":Ljava/io/FileInputStream;
    :goto_0
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    .line 8942
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 8943
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 8944
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 8945
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 8949
    .local v4, "uptime":J
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/4 v6, 0x4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    move-object v1, p0

    move v6, v12

    .line 8950
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    .line 8953
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_3
    invoke-virtual {p0, v12}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsIfNeededLocked(Z)V

    .line 8909
    return-void

    .line 8935
    :catch_0
    move-exception v0

    .line 8936
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BatteryStats"

    const-string/jumbo v6, "Error reading battery statistics"

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8937
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    goto :goto_0
.end method

.method readOldHistory(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 9037
    return-void
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 43
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    .prologue
    .line 9092
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 9093
    .local v38, "version":I
    const/16 v40, 0x82

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_0

    .line 9094
    const-string/jumbo v40, "BatteryStats"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "readFromParcel: version got "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 9095
    const-string/jumbo v42, ", expected "

    .line 9094
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 9095
    const/16 v42, 0x82

    .line 9094
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 9095
    const-string/jumbo v42, "; erasing old stats"

    .line 9094
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9096
    return-void

    .line 9099
    :cond_0
    const/16 v40, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->readHistory(Landroid/os/Parcel;Z)V

    .line 9101
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 9102
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    .line 9103
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    .line 9104
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    .line 9105
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    .line 9106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    .line 9107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 9108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 9109
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    .line 9110
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    .line 9111
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 9112
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 9113
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 9114
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 9115
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 9116
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    .line 9117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9121
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 9122
    .local v7, "NPKG":I
    if-lez v7, :cond_2

    .line 9123
    new-instance v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 9124
    :goto_0
    if-lez v7, :cond_3

    .line 9125
    add-int/lit8 v7, v7, -0x1

    .line 9126
    new-instance v28, Landroid/os/BatteryStats$PackageChange;

    invoke-direct/range {v28 .. v28}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 9127
    .local v28, "pc":Landroid/os/BatteryStats$PackageChange;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 9128
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_1

    const/16 v40, 0x1

    :goto_1
    move/from16 v0, v40

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 9129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v28

    iput v0, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    .line 9130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9128
    :cond_1
    const/16 v40, 0x0

    goto :goto_1

    .line 9133
    .end local v28    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_2
    const/16 v40, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 9135
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    .line 9136
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    .line 9137
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    .line 9139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    .line 9141
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    .line 9142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9143
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    const/16 v40, 0x5

    move/from16 v0, v40

    if-ge v15, v0, :cond_4

    .line 9144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9143
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 9146
    :cond_4
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    .line 9147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9148
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    .line 9149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9153
    const/4 v15, 0x0

    :goto_3
    const/16 v40, 0x6

    move/from16 v0, v40

    if-ge v15, v0, :cond_5

    .line 9154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9153
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 9156
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9157
    const/4 v15, 0x0

    :goto_4
    const/16 v40, 0x11

    move/from16 v0, v40

    if-ge v15, v0, :cond_6

    .line 9158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9157
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 9160
    :cond_6
    const/4 v15, 0x0

    :goto_5
    const/16 v40, 0x4

    move/from16 v0, v40

    if-ge v15, v0, :cond_7

    .line 9161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9160
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 9164
    :cond_7
    sget v40, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    .line 9165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9170
    sget v40, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    .line 9171
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    .line 9172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9173
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    .line 9174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9175
    const/4 v15, 0x0

    :goto_6
    const/16 v40, 0x8

    move/from16 v0, v40

    if-ge v15, v0, :cond_8

    .line 9176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9175
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 9178
    :cond_8
    const/4 v15, 0x0

    :goto_7
    const/16 v40, 0xd

    move/from16 v0, v40

    if-ge v15, v0, :cond_9

    .line 9179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9178
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 9181
    :cond_9
    const/4 v15, 0x0

    :goto_8
    const/16 v40, 0x5

    move/from16 v0, v40

    if-ge v15, v0, :cond_a

    .line 9182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9181
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 9184
    :cond_a
    const/4 v15, 0x0

    :goto_9
    const/16 v40, 0x4

    move/from16 v0, v40

    if-ge v15, v0, :cond_b

    .line 9185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9184
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 9187
    :cond_b
    const/4 v15, 0x0

    :goto_a
    const/16 v40, 0x4

    move/from16 v0, v40

    if-ge v15, v0, :cond_c

    .line 9188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9187
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 9191
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    .line 9192
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    .line 9193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9194
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    .line 9195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9197
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 9198
    .local v5, "NKW":I
    const/16 v40, 0x2710

    move/from16 v0, v40

    if-le v5, v0, :cond_d

    .line 9199
    new-instance v40, Landroid/os/ParcelFormatException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "File corrupt: too many kernel wake locks "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 9201
    :cond_d
    const/16 v17, 0x0

    .local v17, "ikw":I
    :goto_b
    move/from16 v0, v17

    if-ge v0, v5, :cond_f

    .line 9202
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_e

    .line 9203
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 9204
    .local v24, "kwltName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9201
    .end local v24    # "kwltName":Ljava/lang/String;
    :cond_e
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 9208
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 9209
    .local v13, "NWR":I
    const/16 v40, 0x2710

    move/from16 v0, v40

    if-le v13, v0, :cond_10

    .line 9210
    new-instance v40, Landroid/os/ParcelFormatException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "File corrupt: too many wakeup reasons "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 9212
    :cond_10
    const/16 v23, 0x0

    .local v23, "iwr":I
    :goto_c
    move/from16 v0, v23

    if-ge v0, v13, :cond_12

    .line 9213
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_11

    .line 9214
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 9215
    .local v31, "reasonName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9212
    .end local v31    # "reasonName":Ljava/lang/String;
    :cond_11
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    .line 9219
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    sput v40, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    .line 9220
    sget v40, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    if-ltz v40, :cond_13

    sget v40, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    const/16 v41, 0x64

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_14

    .line 9221
    :cond_13
    new-instance v40, Landroid/os/ParcelFormatException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Bad speed steps in data: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    sget v42, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 9224
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 9225
    .local v10, "NU":I
    const/16 v40, 0x2710

    move/from16 v0, v40

    if-le v10, v0, :cond_15

    .line 9226
    new-instance v40, Landroid/os/ParcelFormatException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "File corrupt: too many uids "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 9228
    :cond_15
    const/16 v20, 0x0

    .local v20, "iu":I
    :goto_d
    move/from16 v0, v20

    if-ge v0, v10, :cond_3d

    .line 9229
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 9230
    .local v37, "uid":I
    new-instance v36, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 9231
    .local v36, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9233
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 9234
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_16

    .line 9235
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9237
    :cond_16
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 9238
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_17

    .line 9239
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9241
    :cond_17
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 9242
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_18

    .line 9243
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9245
    :cond_18
    const/16 v40, -0x1

    move/from16 v0, v40

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 9246
    const/4 v15, 0x0

    :goto_e
    const/16 v40, 0x5

    move/from16 v0, v40

    if-ge v15, v0, :cond_1a

    .line 9247
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_19

    .line 9248
    const/16 v40, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 9249
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9246
    :cond_19
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    .line 9252
    :cond_1a
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 9253
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_1b

    .line 9254
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9256
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_1c

    .line 9257
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9259
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_1d

    .line 9260
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9262
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_1e

    .line 9263
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9265
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_1f

    .line 9266
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9268
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_20

    .line 9269
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9271
    :cond_20
    const/16 v40, 0x3

    move/from16 v0, v40

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 9272
    const/4 v15, 0x0

    :goto_f
    const/16 v40, 0x3

    move/from16 v0, v40

    if-ge v15, v0, :cond_22

    .line 9273
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_21

    .line 9274
    const/16 v40, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 9275
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9272
    :cond_21
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 9278
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_23

    .line 9279
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9282
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_25

    .line 9283
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v40, v0

    if-nez v40, :cond_24

    .line 9284
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 9286
    :cond_24
    const/4 v15, 0x0

    :goto_10
    const/16 v40, 0x3

    move/from16 v0, v40

    if-ge v15, v0, :cond_25

    .line 9287
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9286
    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    .line 9291
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_28

    .line 9292
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    if-nez v40, :cond_26

    .line 9293
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    .line 9295
    :cond_26
    const/4 v15, 0x0

    :goto_11
    const/16 v40, 0x4

    move/from16 v0, v40

    if-ge v15, v0, :cond_27

    .line 9296
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9297
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9295
    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    .line 9299
    :cond_27
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9300
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9303
    :cond_28
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9304
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9305
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9307
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 9308
    .local v9, "NSB":I
    const/16 v40, 0x64

    move/from16 v0, v40

    if-le v9, v0, :cond_29

    .line 9309
    new-instance v40, Landroid/os/ParcelFormatException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "File corrupt: too many speed bins "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 9312
    :cond_29
    new-array v0, v9, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9313
    const/4 v15, 0x0

    :goto_12
    if-ge v15, v9, :cond_2b

    .line 9314
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_2a

    .line 9315
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    new-instance v41, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v42, v0

    invoke-direct/range {v41 .. v42}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v41, v40, v15

    .line 9316
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v40, v0

    aget-object v40, v40, v15

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9313
    :cond_2a
    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    .line 9320
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 9321
    .local v11, "NW":I
    const/16 v40, 0x64

    move/from16 v0, v40

    if-le v11, v0, :cond_2c

    .line 9322
    new-instance v40, Landroid/os/ParcelFormatException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "File corrupt: too many wake locks "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 9324
    :cond_2c
    const/16 v21, 0x0

    .local v21, "iw":I
    :goto_13
    move/from16 v0, v21

    if-ge v0, v11, :cond_2d

    .line 9325
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 9326
    .local v39, "wlName":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 9324
    add-int/lit8 v21, v21, 0x1

    goto :goto_13

    .line 9329
    .end local v39    # "wlName":Ljava/lang/String;
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 9330
    .local v8, "NS":I
    const/16 v40, 0x64

    move/from16 v0, v40

    if-le v8, v0, :cond_2e

    .line 9331
    new-instance v40, Landroid/os/ParcelFormatException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "File corrupt: too many syncs "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 9333
    :cond_2e
    const/16 v19, 0x0

    .local v19, "is":I
    :goto_14
    move/from16 v0, v19

    if-ge v0, v8, :cond_2f

    .line 9334
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 9335
    .local v25, "name":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 9333
    add-int/lit8 v19, v19, 0x1

    goto :goto_14

    .line 9338
    .end local v25    # "name":Ljava/lang/String;
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 9339
    .local v4, "NJ":I
    const/16 v40, 0x64

    move/from16 v0, v40

    if-le v4, v0, :cond_30

    .line 9340
    new-instance v40, Landroid/os/ParcelFormatException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "File corrupt: too many job timers "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 9342
    :cond_30
    const/16 v16, 0x0

    .local v16, "ij":I
    :goto_15
    move/from16 v0, v16

    if-ge v0, v4, :cond_31

    .line 9343
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 9344
    .restart local v25    # "name":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 9342
    add-int/lit8 v16, v16, 0x1

    goto :goto_15

    .line 9347
    .end local v25    # "name":Ljava/lang/String;
    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 9348
    .local v6, "NP":I
    const/16 v40, 0x3e8

    move/from16 v0, v40

    if-le v6, v0, :cond_32

    .line 9349
    new-instance v40, Landroid/os/ParcelFormatException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "File corrupt: too many sensors "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 9351
    :cond_32
    const/16 v19, 0x0

    :goto_16
    move/from16 v0, v19

    if-ge v0, v6, :cond_34

    .line 9352
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 9353
    .local v33, "seNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    if-eqz v40, :cond_33

    .line 9354
    const/16 v40, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v33

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9351
    :cond_33
    add-int/lit8 v19, v19, 0x1

    goto :goto_16

    .line 9359
    .end local v33    # "seNumber":I
    :cond_34
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 9360
    const/16 v40, 0x3e8

    move/from16 v0, v40

    if-le v6, v0, :cond_35

    .line 9361
    new-instance v40, Landroid/os/ParcelFormatException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "File corrupt: too many processes "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 9363
    :cond_35
    const/16 v18, 0x0

    .local v18, "ip":I
    :goto_17
    move/from16 v0, v18

    if-ge v0, v6, :cond_36

    .line 9364
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 9365
    .local v30, "procName":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v27

    .line 9366
    .local v27, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    move-wide/from16 v0, v40

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 9367
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    move-wide/from16 v0, v40

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 9368
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    move-wide/from16 v0, v40

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 9369
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    move/from16 v0, v40

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 9370
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumCrashes:I

    move/from16 v0, v40

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    .line 9371
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumAnrs:I

    move/from16 v0, v40

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    .line 9372
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V

    .line 9363
    add-int/lit8 v18, v18, 0x1

    goto :goto_17

    .line 9375
    .end local v27    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v30    # "procName":Ljava/lang/String;
    :cond_36
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 9376
    const/16 v40, 0x2710

    move/from16 v0, v40

    if-le v6, v0, :cond_37

    .line 9377
    new-instance v40, Landroid/os/ParcelFormatException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "File corrupt: too many packages "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 9379
    :cond_37
    const/16 v18, 0x0

    :goto_18
    move/from16 v0, v18

    if-ge v0, v6, :cond_3c

    .line 9380
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 9381
    .local v29, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v26

    .line 9382
    .local v26, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 9383
    .local v12, "NWA":I
    const/16 v40, 0x3e8

    move/from16 v0, v40

    if-le v12, v0, :cond_38

    .line 9384
    new-instance v40, Landroid/os/ParcelFormatException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "File corrupt: too many wakeup alarms "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 9386
    :cond_38
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/util/ArrayMap;->clear()V

    .line 9387
    const/16 v22, 0x0

    .local v22, "iwa":I
    :goto_19
    move/from16 v0, v22

    if-ge v0, v12, :cond_39

    .line 9388
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 9389
    .local v35, "tag":Ljava/lang/String;
    new-instance v14, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-direct {v14, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 9390
    .local v14, "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9391
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9387
    add-int/lit8 v22, v22, 0x1

    goto :goto_19

    .line 9393
    .end local v14    # "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .end local v35    # "tag":Ljava/lang/String;
    :cond_39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 9394
    const/16 v40, 0x3e8

    move/from16 v0, v40

    if-le v8, v0, :cond_3a

    .line 9395
    new-instance v40, Landroid/os/ParcelFormatException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "File corrupt: too many services "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 9397
    :cond_3a
    const/16 v19, 0x0

    :goto_1a
    move/from16 v0, v19

    if-ge v0, v8, :cond_3b

    .line 9398
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 9399
    .local v34, "servName":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v32

    .line 9400
    .local v32, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    move-wide/from16 v0, v40

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    .line 9401
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    move/from16 v0, v40

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 9402
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    move/from16 v0, v40

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 9397
    add-int/lit8 v19, v19, 0x1

    goto :goto_1a

    .line 9379
    .end local v32    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v34    # "servName":Ljava/lang/String;
    :cond_3b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_18

    .line 9228
    .end local v12    # "NWA":I
    .end local v22    # "iwa":I
    .end local v26    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v29    # "pkgName":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_d

    .line 9091
    .end local v4    # "NJ":I
    .end local v6    # "NP":I
    .end local v8    # "NS":I
    .end local v9    # "NSB":I
    .end local v11    # "NW":I
    .end local v16    # "ij":I
    .end local v18    # "ip":I
    .end local v19    # "is":I
    .end local v21    # "iw":I
    .end local v36    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v37    # "uid":I
    :cond_3d
    return-void
.end method

.method public recordDailyStatsIfNeededLocked(Z)V
    .locals 6
    .param p1, "settled"    # Z

    .prologue
    .line 6912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6913
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 6914
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 6911
    :cond_0
    :goto_0
    return-void

    .line 6915
    :cond_1
    if-eqz p1, :cond_2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 6916
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    goto :goto_0

    .line 6917
    :cond_2
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 6918
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    goto :goto_0
.end method

.method public recordDailyStatsLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 6923
    new-instance v2, Landroid/os/BatteryStats$DailyItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$DailyItem;-><init>()V

    .line 6924
    .local v2, "item":Landroid/os/BatteryStats$DailyItem;
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    iput-wide v6, v2, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    .line 6925
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    .line 6926
    const/4 v1, 0x0

    .line 6927
    .local v1, "hasData":Z
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v5, v5, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-lez v5, :cond_0

    .line 6928
    const/4 v1, 0x1

    .line 6929
    new-instance v5, Landroid/os/BatteryStats$LevelStepTracker;

    .line 6930
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v6, v6, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 6931
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget-object v7, v7, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 6929
    invoke-direct {v5, v6, v7}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I[J)V

    iput-object v5, v2, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    .line 6933
    :cond_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v5, v5, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-lez v5, :cond_1

    .line 6934
    const/4 v1, 0x1

    .line 6935
    new-instance v5, Landroid/os/BatteryStats$LevelStepTracker;

    .line 6936
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v6, v6, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 6937
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget-object v7, v7, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 6935
    invoke-direct {v5, v6, v7}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I[J)V

    iput-object v5, v2, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    .line 6939
    :cond_1
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 6940
    const/4 v1, 0x1

    .line 6941
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    iput-object v5, v2, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    .line 6942
    iput-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 6944
    :cond_2
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 6945
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 6946
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateDailyDeadlineLocked()V

    .line 6948
    if-eqz v1, :cond_4

    .line 6949
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6950
    :goto_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_3

    .line 6951
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 6953
    :cond_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6955
    .local v3, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 6956
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6957
    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeDailyItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 6958
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$2;

    invoke-direct {v6, p0, v3}, Lcom/android/internal/os/BatteryStatsImpl$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6922
    .end local v3    # "memStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_4
    :goto_1
    return-void

    .line 6978
    .restart local v3    # "memStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public removeIsolatedUidLocked(I)V
    .locals 1
    .param p1, "isolatedUid"    # I

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2544
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    .line 2542
    return-void
.end method

.method public removeUidStatsLocked(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 8800
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    .line 8801
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 8799
    return-void
.end method

.method public reportExcessiveCpuLocked(ILjava/lang/String;JJ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "proc"    # Ljava/lang/String;
    .param p3, "overTime"    # J
    .param p5, "usedTime"    # J

    .prologue
    .line 2967
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2968
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2969
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 2970
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reportExcessiveCpuLocked(Ljava/lang/String;JJ)V

    .line 2966
    :cond_0
    return-void
.end method

.method public reportExcessiveWakeLocked(ILjava/lang/String;JJ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "proc"    # Ljava/lang/String;
    .param p3, "overTime"    # J
    .param p5, "usedTime"    # J

    .prologue
    .line 2959
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    .line 2960
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2961
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 2962
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reportExcessiveWakeLocked(Ljava/lang/String;JJ)V

    .line 2958
    :cond_0
    return-void
.end method

.method public resetAllStatsCmdLocked()V
    .locals 11

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    .line 7393
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    .line 7394
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 7395
    .local v2, "mSecUptime":J
    mul-long v6, v2, v8

    .line 7396
    .local v6, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7397
    .local v0, "mSecRealtime":J
    mul-long v4, v0, v8

    .line 7398
    .local v4, "realtime":J
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 7399
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 7400
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 7402
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 7401
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 7403
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->reset(JJ)V

    .line 7404
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->reset(JJ)V

    .line 7405
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 7406
    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 7407
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 7408
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    .line 7413
    :goto_0
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 7414
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 7416
    :cond_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->initActiveHistoryEventsLocked(JJ)V

    .line 7392
    return-void

    .line 7410
    :cond_1
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 7411
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_0
.end method

.method public scheduleRemoveIsolatedUidLocked(II)V
    .locals 3
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 2530
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2531
    .local v0, "curUid":I
    if-ne v0, p2, :cond_0

    .line 2532
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    if-eqz v1, :cond_0

    .line 2533
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    invoke-interface {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleCpuSyncDueToRemovedUid(I)V

    .line 2529
    :cond_0
    return-void
.end method

.method public setBatteryStateLocked(IIIIII)V
    .locals 17
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I

    .prologue
    .line 8355
    if-nez p3, :cond_6

    const/16 v16, 0x1

    .line 8356
    .local v16, "onBattery":Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 8357
    .local v6, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 8358
    .local v4, "elapsedRealtime":J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    if-nez v3, :cond_8

    .line 8359
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    .line 8364
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v0, v16

    if-ne v0, v3, :cond_0

    .line 8365
    if-eqz v16, :cond_7

    .line 8366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v10, -0x80001

    and-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 8372
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v10, 0x2000000

    or-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 8373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 8374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8376
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    .line 8375
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    .line 8377
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargingStateLevel:I

    .line 8381
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v9, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 8382
    .local v9, "oldStatus":I
    if-eqz v16, :cond_b

    .line 8383
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 8384
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-nez v3, :cond_2

    .line 8385
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 8386
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    .line 8394
    :cond_2
    :goto_3
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 8395
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    if-gez v3, :cond_3

    .line 8396
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    .line 8398
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v0, v16

    if-eq v0, v3, :cond_c

    .line 8399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 8401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p2

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 8402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p3

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 8403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p5

    int-to-short v8, v0

    iput-short v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 8404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p6

    int-to-char v8, v0

    iput-char v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move-object/from16 v3, p0

    move/from16 v8, v16

    move/from16 v10, p4

    .line 8405
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(JJZII)V

    .line 8491
    :cond_4
    :goto_4
    if-nez v16, :cond_5

    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 8494
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 8354
    :cond_5
    return-void

    .line 8355
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .end local v9    # "oldStatus":I
    .end local v16    # "onBattery":Z
    :cond_6
    const/16 v16, 0x0

    .restart local v16    # "onBattery":Z
    goto/16 :goto_0

    .line 8368
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v10, 0x80000

    or-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto/16 :goto_1

    .line 8378
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move/from16 v0, p4

    if-ne v3, v0, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    move/from16 v0, v16

    if-eq v3, v0, :cond_1

    .line 8379
    :cond_9
    const/16 v3, 0x64

    move/from16 v0, p4

    if-lt v0, v3, :cond_a

    move/from16 v3, v16

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsIfNeededLocked(Z)V

    goto/16 :goto_2

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .line 8388
    .restart local v9    # "oldStatus":I
    :cond_b
    const/16 v3, 0x60

    move/from16 v0, p4

    if-ge v0, v3, :cond_2

    .line 8389
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    if-nez v3, :cond_2

    .line 8390
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    .line 8391
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    goto/16 :goto_3

    .line 8407
    :cond_c
    const/4 v2, 0x0

    .line 8408
    .local v2, "changed":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v0, p4

    if-eq v3, v0, :cond_d

    .line 8409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8410
    const/4 v2, 0x1

    .line 8414
    const-string/jumbo v3, "battery-level"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(Ljava/lang/String;)V

    .line 8416
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move/from16 v0, p1

    if-eq v3, v0, :cond_e

    .line 8417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 8418
    const/4 v2, 0x1

    .line 8420
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move/from16 v0, p2

    if-eq v3, v0, :cond_f

    .line 8421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p2

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 8422
    const/4 v2, 0x1

    .line 8424
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move/from16 v0, p3

    if-eq v3, v0, :cond_10

    .line 8425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p3

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 8426
    const/4 v2, 0x1

    .line 8428
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    add-int/lit8 v3, v3, 0xa

    move/from16 v0, p5

    if-ge v0, v3, :cond_11

    .line 8429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    add-int/lit8 v3, v3, -0xa

    move/from16 v0, p5

    if-gt v0, v3, :cond_12

    .line 8430
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p5

    int-to-short v8, v0

    iput-short v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 8431
    const/4 v2, 0x1

    .line 8433
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    add-int/lit8 v3, v3, 0x14

    move/from16 v0, p6

    if-gt v0, v3, :cond_13

    .line 8434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    add-int/lit8 v3, v3, -0x14

    move/from16 v0, p6

    if-ge v0, v3, :cond_14

    .line 8435
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p6

    int-to-char v8, v0

    iput-char v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 8436
    const/4 v2, 0x1

    .line 8438
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    int-to-long v10, v3

    const/16 v3, 0x30

    shl-long/2addr v10, v3

    .line 8439
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    int-to-long v14, v3

    const/16 v3, 0x38

    shl-long/2addr v14, v3

    .line 8438
    or-long/2addr v10, v14

    .line 8440
    move/from16 v0, p4

    and-int/lit16 v3, v0, 0xff

    int-to-long v14, v3

    const/16 v3, 0x28

    shl-long/2addr v14, v3

    .line 8438
    or-long v12, v10, v14

    .line 8441
    .local v12, "modeBits":J
    if-eqz v16, :cond_16

    .line 8442
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 8443
    .local v2, "changed":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    move/from16 v0, p4

    if-eq v3, v0, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    move/from16 v0, p4

    if-le v3, v0, :cond_15

    .line 8444
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    sub-int v11, v3, p4

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 8446
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    sub-int v11, v3, p4

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 8448
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    .line 8449
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    .line 8450
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 8451
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 8487
    .end local v2    # "changed":Z
    :cond_15
    :goto_6
    if-eqz v2, :cond_4

    .line 8488
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    goto/16 :goto_4

    .line 8454
    .local v2, "changed":Z
    :cond_16
    const/16 v3, 0x5a

    move/from16 v0, p4

    if-lt v0, v3, :cond_17

    .line 8457
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 8458
    .local v2, "changed":Z
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    .line 8459
    .end local v2    # "changed":Z
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-nez v3, :cond_19

    .line 8460
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    move/from16 v0, p4

    if-ge v3, v0, :cond_18

    .line 8463
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 8464
    .restart local v2    # "changed":Z
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    .line 8476
    .end local v2    # "changed":Z
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    move/from16 v0, p4

    if-eq v3, v0, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    move/from16 v0, p4

    if-ge v3, v0, :cond_15

    .line 8477
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    sub-int v11, p4, v3

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 8479
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    sub-int v11, p4, v3

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 8481
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    .line 8482
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    .line 8483
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 8484
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    goto :goto_6

    .line 8467
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    move/from16 v0, p4

    if-le v3, v0, :cond_18

    .line 8472
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 8473
    .restart local v2    # "changed":Z
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    goto :goto_7
.end method

.method public setCallback(Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    .prologue
    .line 6881
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    .line 6880
    return-void
.end method

.method setChargingLocked(Z)Z
    .locals 3
    .param p1, "charging"    # Z

    .prologue
    .line 8173
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eq v0, p1, :cond_1

    .line 8174
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    .line 8175
    if-eqz p1, :cond_0

    .line 8176
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 8180
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 8181
    const/4 v0, 0x1

    return v0

    .line 8178
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_0

    .line 8183
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setNoAutoReset(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2758
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNoAutoReset:Z

    .line 2757
    return-void
.end method

.method public setNumSpeedSteps(I)V
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 6885
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    if-nez v0, :cond_0

    sput p1, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    .line 6884
    :cond_0
    return-void
.end method

.method setOnBatteryLocked(JJZII)V
    .locals 21
    .param p1, "mSecRealtime"    # J
    .param p3, "mSecUptime"    # J
    .param p5, "onBattery"    # Z
    .param p6, "oldStatus"    # I
    .param p7, "level"    # I

    .prologue
    .line 8188
    const/4 v4, 0x0

    .line 8189
    .local v4, "doWrite":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 8190
    .local v18, "m":Landroid/os/Message;
    if-eqz p5, :cond_7

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, v18

    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 8191
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8193
    const-wide/16 v6, 0x3e8

    mul-long v14, p3, v6

    .line 8194
    .local v14, "uptime":J
    const-wide/16 v6, 0x3e8

    mul-long v16, p1, v6

    .line 8195
    .local v16, "realtime":J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    const/16 v20, 0x1

    .line 8196
    .local v20, "screenOn":Z
    :goto_1
    if-eqz p5, :cond_d

    .line 8201
    const/4 v10, 0x0

    .line 8202
    .local v10, "reset":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNoAutoReset:Z

    if-nez v5, :cond_2

    const/4 v5, 0x5

    move/from16 v0, p6

    if-eq v0, v5, :cond_0

    .line 8203
    const/16 v5, 0x5a

    move/from16 v0, p7

    if-lt v0, v5, :cond_9

    .line 8207
    :cond_0
    :goto_2
    const-string/jumbo v5, "BatteryStatsImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Resetting battery stats: level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8208
    const-string/jumbo v7, " dischargeLevel="

    .line 8207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8208
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 8207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8209
    const-string/jumbo v7, " lowAmount="

    .line 8207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8209
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v7

    .line 8207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8210
    const-string/jumbo v7, " highAmount="

    .line 8207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8210
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v7

    .line 8207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8214
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v5

    const/16 v6, 0x14

    if-lt v5, v6, :cond_1

    .line 8215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v19

    .line 8216
    .local v19, "parcel":Landroid/os/Parcel;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/os/BatteryStatsImpl;->writeSummaryToParcel(Landroid/os/Parcel;Z)V

    .line 8217
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$4;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8239
    .end local v19    # "parcel":Landroid/os/Parcel;
    :cond_1
    const/4 v4, 0x1

    .line 8240
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    .line 8241
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    .line 8242
    const/4 v10, 0x1

    .line 8243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 8245
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eqz v5, :cond_3

    .line 8246
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    .line 8248
    :cond_3
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargingStateLevel:I

    .line 8249
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 8250
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    .line 8251
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    .line 8252
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->clearTime()V

    .line 8253
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->clearTime()V

    .line 8254
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 8255
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    .line 8256
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 8257
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p7

    int-to-byte v6, v0

    iput-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8258
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v7, -0x80001

    and-int/2addr v6, v7

    iput v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 8261
    if-eqz v10, :cond_4

    .line 8262
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    .line 8263
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    .line 8265
    :cond_4
    invoke-virtual/range {p0 .. p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 8266
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 8267
    if-eqz v20, :cond_b

    .line 8268
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 8269
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    .line 8274
    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 8275
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 8276
    if-eqz v20, :cond_c

    const/4 v13, 0x0

    :goto_4
    const/4 v12, 0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    .line 8299
    .end local v10    # "reset":Z
    :goto_5
    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v5, v6, p1

    if-gez v5, :cond_6

    .line 8300
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-eqz v5, :cond_6

    .line 8301
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 8187
    :cond_6
    return-void

    .line 8190
    .end local v14    # "uptime":J
    .end local v16    # "realtime":J
    .end local v20    # "screenOn":Z
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 8195
    .restart local v14    # "uptime":J
    .restart local v16    # "realtime":J
    :cond_8
    const/16 v20, 0x0

    .restart local v20    # "screenOn":Z
    goto/16 :goto_1

    .line 8204
    .restart local v10    # "reset":Z
    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    const/16 v6, 0x14

    if-ge v5, v6, :cond_a

    const/16 v5, 0x50

    move/from16 v0, p7

    if-ge v0, v5, :cond_0

    .line 8205
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v5

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_2

    .line 8206
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    const/high16 v6, 0x40000

    if-lt v5, v6, :cond_2

    goto/16 :goto_2

    .line 8271
    :cond_b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 8272
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_3

    .line 8276
    :cond_c
    const/4 v13, 0x1

    goto :goto_4

    .line 8278
    .end local v10    # "reset":Z
    :cond_d
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargingStateLevel:I

    .line 8279
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    .line 8280
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 8281
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p7

    int-to-byte v6, v0

    iput-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8282
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 8285
    invoke-virtual/range {p0 .. p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 8286
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    .line 8287
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move/from16 v0, p7

    if-ge v0, v5, :cond_e

    .line 8288
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    sub-int v6, v6, p7

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    .line 8289
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    sub-int v6, v6, p7

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    .line 8291
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    .line 8292
    if-eqz v20, :cond_f

    const/4 v13, 0x0

    :goto_6
    const/4 v12, 0x0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    .line 8293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 8294
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    .line 8295
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    .line 8296
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    .line 8297
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    goto/16 :goto_5

    .line 8292
    :cond_f
    const/4 v13, 0x1

    goto :goto_6
.end method

.method public setPowerProfile(Lcom/android/internal/os/PowerProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    .line 6875
    monitor-enter p0

    .line 6876
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 6874
    return-void

    .line 6875
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRadioScanningTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 6889
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 6890
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setTimeout(J)V

    .line 6888
    :cond_0
    return-void
.end method

.method public setRecordAllHistoryLocked(Z)V
    .locals 13
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    .line 2719
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    .line 2720
    if-nez p1, :cond_1

    .line 2722
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->removeEvents(I)V

    .line 2723
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->removeEvents(I)V

    .line 2726
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    .line 2728
    .local v0, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_3

    .line 2729
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2730
    .local v2, "mSecRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2731
    .local v4, "mSecUptime":J
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "ent$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2732
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 2733
    .local v12, "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_0

    .line 2735
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    const/16 v6, 0x4001

    move-object v1, p0

    .line 2734
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2733
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2741
    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v2    # "mSecRealtime":J
    .end local v4    # "mSecUptime":J
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "ent$iterator":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    .line 2743
    .restart local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_3

    .line 2744
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2745
    .restart local v2    # "mSecRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2746
    .restart local v4    # "mSecUptime":J
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "ent$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2747
    .restart local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 2748
    .restart local v12    # "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_1
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 2750
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    const v6, 0x8001

    move-object v1, p0

    .line 2749
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2748
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2718
    .end local v2    # "mSecRealtime":J
    .end local v4    # "mSecUptime":J
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "ent$iterator":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_3
    return-void
.end method

.method public shutdownLocked()V
    .locals 4

    .prologue
    .line 8835
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->recordShutdownLocked(JJ)V

    .line 8836
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 8837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mShuttingDown:Z

    .line 8834
    return-void
.end method

.method public startAddingCpuLocked()Z
    .locals 2

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->removeMessages(I)V

    .line 2918
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    return v0
.end method

.method public startIteratingHistoryLocked()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7280
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    if-gtz v4, :cond_0

    .line 7281
    return v5

    .line 7283
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7284
    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    .line 7285
    iput-boolean v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 7286
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    .line 7287
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    .line 7288
    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    .line 7289
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7290
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$HistoryTag;

    .line 7291
    .local v3, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 7292
    .local v2, "idx":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    iget-object v5, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 7293
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    iget v5, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    aput v5, v4, v2

    .line 7294
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    iget-object v5, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    goto :goto_0

    .line 7296
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    .end local v2    # "idx":I
    .end local v3    # "tag":Landroid/os/BatteryStats$HistoryTag;
    :cond_1
    return v6
.end method

.method public startIteratingOldHistoryLocked()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7218
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    if-nez v0, :cond_0

    .line 7219
    return v1

    .line 7221
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7222
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 7223
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    .line 7224
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    .line 7225
    return v2
.end method

.method stopAllPhoneSignalStrengthTimersLocked(I)V
    .locals 4
    .param p1, "except"    # I

    .prologue
    .line 3320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3321
    .local v0, "elapsedRealtime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 3322
    if-ne v2, p1, :cond_1

    .line 3321
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3325
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3326
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_1

    .line 3319
    :cond_2
    return-void
.end method

.method stopAllWifiSignalStrengthTimersLocked(I)V
    .locals 4
    .param p1, "except"    # I

    .prologue
    .line 3871
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3872
    .local v0, "elapsedRealtime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 3873
    if-ne v2, p1, :cond_1

    .line 3872
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3876
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3877
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_1

    .line 3870
    :cond_2
    return-void
.end method

.method public updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .prologue
    const/4 v3, 0x1

    .line 7903
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v2, :cond_0

    .line 7904
    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    .line 7905
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v2, v2, v3

    .line 7906
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v4

    .line 7905
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7907
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 7908
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v4

    .line 7907
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7909
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 7910
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v4

    .line 7909
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7913
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 7914
    const-string/jumbo v3, "bluetooth.controller.voltage"

    .line 7913
    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    .line 7914
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 7913
    div-double v0, v2, v4

    .line 7915
    .local v0, "opVolt":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    .line 7917
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 7918
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v0

    double-to-long v4, v4

    .line 7917
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7898
    .end local v0    # "opVolt":D
    :cond_0
    return-void
.end method

.method public updateCpuTimeLocked()V
    .locals 24

    .prologue
    .line 7998
    const/16 v18, 0x32

    .line 8001
    .local v18, "wakelockWeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v4

    .line 8002
    .local v4, "cpuSpeedSteps":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReader:Lcom/android/internal/os/KernelCpuSpeedReader;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/KernelCpuSpeedReader;->readDelta()[J

    move-result-object v5

    .line 8004
    .local v5, "cpuSpeeds":[J
    const/4 v9, 0x0

    .line 8008
    .local v9, "numWakelocks":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 8009
    .local v8, "numPartialTimers":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 8010
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_1

    .line 8011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8012
    .local v15, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    move/from16 v19, v0

    const/16 v20, 0x3e8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 8018
    add-int/lit8 v9, v9, 0x1

    .line 8010
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8023
    .end local v6    # "i":I
    .end local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_1
    move v10, v9

    .line 8024
    .local v10, "numWakelocksF":I
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    .line 8025
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    .line 8030
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 8031
    .local v12, "startTimeMs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->readDelta(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V

    .line 8089
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    if-lez v9, :cond_6

    .line 8091
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x32

    mul-long v20, v20, v22

    const-wide/16 v22, 0x64

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    .line 8093
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x32

    mul-long v20, v20, v22

    const-wide/16 v22, 0x64

    div-long v20, v20, v22

    .line 8092
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    .line 8095
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v8, :cond_4

    .line 8096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8100
    .restart local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    move/from16 v19, v0

    const/16 v20, 0x3e8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 8101
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    int-to-long v0, v9

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v17, v0

    .line 8102
    .local v17, "userTimeUs":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    int-to-long v0, v9

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v14, v0

    .line 8114
    .local v14, "systemTimeUs":I
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v19, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8115
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v19, v0

    int-to-long v0, v14

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8117
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    const-string/jumbo v20, "*wakelock*"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v11

    .line 8118
    .local v11, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    div-int/lit16 v0, v14, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 8120
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    .line 8121
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    int-to-long v0, v14

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    .line 8122
    add-int/lit8 v9, v9, -0x1

    .line 8095
    .end local v11    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v14    # "systemTimeUs":I
    .end local v17    # "userTimeUs":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 8032
    .end local v6    # "i":I
    .end local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_3
    new-instance v19, Lcom/android/internal/os/BatteryStatsImpl$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl;II[J)V

    goto/16 :goto_1

    .line 8126
    .restart local v6    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-gtz v19, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_6

    .line 8137
    :cond_5
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v16

    .line 8138
    .local v16, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8139
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8141
    const-string/jumbo v19, "*lost*"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v11

    .line 8142
    .restart local v11    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    .line 8143
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    .line 8142
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 8149
    .end local v6    # "i":I
    .end local v11    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v16    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/util/ArrayUtils;->referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 8151
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v8, :cond_9

    .line 8152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 8151
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 8157
    .end local v6    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 8158
    .local v7, "numLastPartialTimers":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v7, :cond_8

    .line 8159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 8158
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 8161
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 8164
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v8, :cond_9

    .line 8165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8166
    .restart local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 8167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8164
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 7989
    .end local v7    # "numLastPartialTimers":I
    .end local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_9
    return-void
.end method

.method public updateDailyDeadlineLocked()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 6896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    .line 6897
    .local v2, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 6898
    .local v0, "calDeadline":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6901
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 6902
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 6903
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 6904
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 6905
    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 6906
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    .line 6907
    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 6908
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    .line 6894
    return-void
.end method

.method updateDischargeScreenLevelsLocked(ZZ)V
    .locals 4
    .param p1, "oldScreenOn"    # Z
    .param p2, "newScreenOn"    # Z

    .prologue
    const/4 v3, 0x0

    .line 7527
    if-eqz p1, :cond_1

    .line 7528
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int v0, v1, v2

    .line 7529
    .local v0, "diff":I
    if-lez v0, :cond_0

    .line 7530
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    .line 7531
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    .line 7540
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 7541
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 7542
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    .line 7526
    :goto_1
    return-void

    .line 7534
    .end local v0    # "diff":I
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    sub-int v0, v1, v2

    .line 7535
    .restart local v0    # "diff":I
    if-lez v0, :cond_0

    .line 7536
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    .line 7537
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    goto :goto_0

    .line 7544
    :cond_2
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    .line 7545
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    goto :goto_1
.end method

.method public updateKernelWakelocksLocked()V
    .locals 14

    .prologue
    .line 7927
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 7928
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 7927
    invoke-virtual {v10, v11}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v9

    .line 7929
    .local v9, "wakelockStats":Lcom/android/internal/os/KernelWakelockStats;
    if-nez v9, :cond_0

    .line 7931
    const-string/jumbo v10, "BatteryStatsImpl"

    const-string/jumbo v11, "Couldn\'t get kernel wake lock stats"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7932
    return-void

    .line 7936
    :cond_0
    const/4 v7, 0x0

    .line 7937
    .local v7, "seenNonZeroTime":Z
    invoke-virtual {v9}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v7    # "seenNonZeroTime":Z
    .local v2, "ent$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7938
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7939
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 7941
    .local v4, "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 7942
    .local v3, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v3, :cond_2

    .line 7943
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 7944
    const/4 v11, 0x1

    .line 7943
    invoke-direct {v3, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    .line 7945
    .restart local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7947
    :cond_2
    iget v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    invoke-virtual {v3, v10}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedCount(I)V

    .line 7948
    iget-wide v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    invoke-virtual {v3, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedTotalTime(J)V

    .line 7949
    iget v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    invoke-virtual {v3, v10}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setUpdateVersion(I)V

    .line 7951
    iget v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    iget v11, v9, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    if-eq v10, v11, :cond_1

    .line 7952
    iget-wide v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    or-int/2addr v7, v10

    .local v7, "seenNonZeroTime":Z
    goto :goto_0

    .end local v7    # "seenNonZeroTime":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 7955
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    .end local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v4    # "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    .line 7956
    .local v6, "numWakelocksSetStale":I
    invoke-virtual {v9}, Lcom/android/internal/os/KernelWakelockStats;->size()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-eq v10, v11, :cond_6

    .line 7958
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7959
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 7960
    .local v8, "st":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->getUpdateVersion()I

    move-result v10

    iget v11, v9, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    if-eq v10, v11, :cond_5

    .line 7961
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setStale()V

    .line 7962
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 7967
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v8    # "st":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_6
    if-nez v7, :cond_7

    .line 7968
    const-string/jumbo v10, "BatteryStatsImpl"

    const-string/jumbo v11, "All kernel wakelocks had time of zero"

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 7971
    :cond_7
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-ne v6, v10, :cond_8

    .line 7972
    const-string/jumbo v10, "BatteryStatsImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "All kernel wakelocks were set stale. new version="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 7973
    iget v12, v9, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    .line 7972
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 7926
    :cond_8
    return-void
.end method

.method public updateMobileRadioStateLocked(J)V
    .locals 23
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 7827
    const/4 v12, 0x0

    .line 7829
    .local v12, "delta":Landroid/net/NetworkStats;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileNetworkStats:[Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDeltaLocked([Ljava/lang/String;[Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 7837
    .end local v12    # "delta":Landroid/net/NetworkStats;
    :cond_0
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v3, :cond_2

    .line 7841
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7842
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p1

    .line 7841
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v16

    .line 7843
    .local v16, "radioTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 7844
    invoke-virtual {v12}, Landroid/net/NetworkStats;->getTotalPackets()J

    move-result-wide v20

    .line 7846
    .local v20, "totalPackets":J
    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    move-result v18

    .line 7847
    .local v18, "size":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_5

    .line 7848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v12, v15, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 7850
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 7847
    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 7832
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v15    # "i":I
    .end local v16    # "radioTime":J
    .end local v18    # "size":I
    .end local v20    # "totalPackets":J
    .restart local v12    # "delta":Landroid/net/NetworkStats;
    :catch_0
    move-exception v13

    .line 7833
    .local v13, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BatteryStatsImpl"

    const-string/jumbo v4, "Failed to get mobile network stats"

    invoke-static {v3, v4, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7834
    return-void

    .line 7838
    .end local v12    # "delta":Landroid/net/NetworkStats;
    .end local v13    # "e":Ljava/io/IOException;
    :cond_2
    return-void

    .line 7860
    .restart local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v15    # "i":I
    .restart local v16    # "radioTime":J
    .restart local v18    # "size":I
    .restart local v20    # "totalPackets":J
    :cond_3
    iget v3, v14, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    .line 7861
    .local v2, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 7862
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 7861
    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7863
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 7864
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 7863
    const/4 v3, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7866
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-lez v3, :cond_4

    .line 7868
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long v8, v4, v6

    .line 7869
    .local v8, "appPackets":J
    mul-long v4, v16, v8

    div-long v10, v4, v20

    .line 7870
    .local v10, "appRadioTime":J
    invoke-virtual {v2, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteMobileRadioActiveTimeLocked(J)V

    .line 7873
    sub-long v16, v16, v10

    .line 7874
    sub-long v20, v20, v8

    .line 7877
    .end local v8    # "appPackets":J
    .end local v10    # "appRadioTime":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 7878
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 7877
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 7880
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 7879
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7881
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 7882
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 7881
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 7884
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 7883
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_1

    .line 7887
    .end local v2    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-lez v3, :cond_6

    .line 7889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7822
    :cond_6
    return-void
.end method

.method public updateTimeBasesLocked(ZZJJ)V
    .locals 7
    .param p1, "unplugged"    # Z
    .param p2, "screenOff"    # Z
    .param p3, "uptime"    # J
    .param p5, "realtime"    # J

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    .line 2509
    if-eqz p1, :cond_1

    move v1, p2

    .line 2510
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eq v1, v0, :cond_0

    .line 2511
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 2516
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V

    .line 2517
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    .line 2506
    :cond_0
    return-void

    .line 2509
    :cond_1
    const/4 v1, 0x0

    .local v1, "unpluggedScreenOff":Z
    goto :goto_0
.end method

.method public updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V
    .locals 58
    .param p1, "info"    # Landroid/net/wifi/WifiActivityEnergyInfo;

    .prologue
    .line 7608
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 7609
    .local v12, "elapsedRealtimeMs":J
    const/4 v10, 0x0

    .line 7611
    .local v10, "delta":Landroid/net/NetworkStats;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7612
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkStats:[Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDeltaLocked([Ljava/lang/String;[Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 7619
    .end local v10    # "delta":Landroid/net/NetworkStats;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-nez v5, :cond_1

    .line 7620
    return-void

    .line 7614
    .restart local v10    # "delta":Landroid/net/NetworkStats;
    :catch_0
    move-exception v11

    .line 7615
    .local v11, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BatteryStatsImpl"

    const-string/jumbo v6, "Failed to get wifi network stats"

    invoke-static {v5, v6, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7616
    return-void

    .line 7623
    .end local v10    # "delta":Landroid/net/NetworkStats;
    .end local v11    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v30, Landroid/util/SparseLongArray;

    invoke-direct/range {v30 .. v30}, Landroid/util/SparseLongArray;-><init>()V

    .line 7624
    .local v30, "rxPackets":Landroid/util/SparseLongArray;
    new-instance v50, Landroid/util/SparseLongArray;

    invoke-direct/range {v50 .. v50}, Landroid/util/SparseLongArray;-><init>()V

    .line 7625
    .local v50, "txPackets":Landroid/util/SparseLongArray;
    const-wide/16 v46, 0x0

    .line 7626
    .local v46, "totalTxPackets":J
    const-wide/16 v40, 0x0

    .line 7627
    .local v40, "totalRxPackets":J
    if-eqz v10, :cond_4

    .line 7628
    invoke-virtual {v10}, Landroid/net/NetworkStats;->size()I

    move-result v31

    .line 7629
    .local v31, "size":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v31

    if-ge v15, v0, :cond_4

    .line 7630
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v10, v15, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 7638
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 7629
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 7642
    :cond_3
    iget v5, v14, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    .line 7643
    .local v4, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 7644
    iget-wide v8, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 7643
    const/4 v5, 0x2

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7645
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 7646
    iget-wide v8, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 7645
    const/4 v5, 0x3

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7647
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v5

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 7648
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v5

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v50

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 7652
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long v40, v40, v6

    .line 7653
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long v46, v46, v6

    .line 7655
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    .line 7656
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 7655
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7657
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    .line 7658
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 7657
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7659
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    .line 7660
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 7659
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7661
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    .line 7662
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 7661
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_1

    .line 7666
    .end local v4    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v15    # "i":I
    .end local v31    # "size":I
    :cond_4
    if-eqz p1, :cond_d

    .line 7667
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    .line 7670
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v52

    .line 7671
    .local v52, "txTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v32

    .line 7672
    .local v32, "rxTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v16

    .line 7673
    .local v16, "idleTimeMs":J
    add-long v6, v52, v32

    add-long v44, v6, v16

    .line 7675
    .local v44, "totalTimeMs":J
    move-wide/from16 v18, v32

    .line 7676
    .local v18, "leftOverRxTimeMs":J
    move-wide/from16 v20, v52

    .line 7686
    .local v20, "leftOverTxTimeMs":J
    const-wide/16 v48, 0x0

    .line 7687
    .local v48, "totalWifiLockTimeMs":J
    const-wide/16 v42, 0x0

    .line 7691
    .local v42, "totalScanTimeMs":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v54

    .line 7692
    .local v54, "uidStatsSize":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    move/from16 v0, v54

    if-ge v15, v0, :cond_5

    .line 7693
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 7696
    .local v51, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7697
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v12

    .line 7696
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v6

    .line 7697
    const-wide/16 v8, 0x3e8

    .line 7696
    div-long/2addr v6, v8

    add-long v42, v42, v6

    .line 7700
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7701
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v12

    .line 7700
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v6

    .line 7701
    const-wide/16 v8, 0x3e8

    .line 7700
    div-long/2addr v6, v8

    add-long v48, v48, v6

    .line 7692
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 7714
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_5
    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v54

    if-ge v15, v0, :cond_a

    .line 7715
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 7717
    .restart local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7718
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v12

    .line 7717
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v6

    .line 7718
    const-wide/16 v8, 0x3e8

    .line 7717
    div-long v36, v6, v8

    .line 7719
    .local v36, "scanTimeSinceMarkMs":J
    const-wide/16 v6, 0x0

    cmp-long v5, v36, v6

    if-lez v5, :cond_8

    .line 7721
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 7723
    move-wide/from16 v34, v36

    .line 7724
    .local v34, "scanRxTimeSinceMarkMs":J
    move-wide/from16 v38, v36

    .line 7733
    .local v38, "scanTxTimeSinceMarkMs":J
    cmp-long v5, v42, v32

    if-lez v5, :cond_6

    .line 7734
    mul-long v6, v32, v34

    div-long v34, v6, v42

    .line 7737
    :cond_6
    cmp-long v5, v42, v52

    if-lez v5, :cond_7

    .line 7738
    mul-long v6, v52, v38

    div-long v38, v6, v42

    .line 7747
    :cond_7
    const/4 v5, 0x1

    move-object/from16 v0, v51

    move-wide/from16 v1, v34

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7748
    const/4 v5, 0x2

    move-object/from16 v0, v51

    move-wide/from16 v1, v38

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7749
    sub-long v18, v18, v34

    .line 7750
    sub-long v20, v20, v38

    .line 7755
    .end local v34    # "scanRxTimeSinceMarkMs":J
    .end local v38    # "scanTxTimeSinceMarkMs":J
    :cond_8
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7756
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v12

    .line 7755
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v6

    .line 7756
    const-wide/16 v8, 0x3e8

    .line 7755
    div-long v56, v6, v8

    .line 7757
    .local v56, "wifiLockTimeSinceMarkMs":J
    const-wide/16 v6, 0x0

    cmp-long v5, v56, v6

    if-lez v5, :cond_9

    .line 7759
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 7761
    mul-long v6, v56, v16

    div-long v22, v6, v48

    .line 7767
    .local v22, "myIdleTimeMs":J
    const/4 v5, 0x0

    move-object/from16 v0, v51

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7714
    .end local v22    # "myIdleTimeMs":J
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 7778
    .end local v36    # "scanTimeSinceMarkMs":J
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v56    # "wifiLockTimeSinceMarkMs":J
    :cond_a
    const/4 v15, 0x0

    :goto_4
    invoke-virtual/range {v50 .. v50}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-ge v15, v5, :cond_b

    .line 7779
    move-object/from16 v0, v50

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v51

    .line 7780
    .restart local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v50

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    mul-long v6, v6, v20

    div-long v26, v6, v46

    .line 7784
    .local v26, "myTxTimeMs":J
    const/4 v5, 0x2

    move-object/from16 v0, v51

    move-wide/from16 v1, v26

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7778
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 7789
    .end local v26    # "myTxTimeMs":J
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_b
    const/4 v15, 0x0

    :goto_5
    invoke-virtual/range {v30 .. v30}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-ge v15, v5, :cond_c

    .line 7790
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v51

    .line 7791
    .restart local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    mul-long v6, v6, v18

    div-long v24, v6, v40

    .line 7795
    .local v24, "myRxTimeMs":J
    const/4 v5, 0x1

    move-object/from16 v0, v51

    move-wide/from16 v1, v24

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7789
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 7801
    .end local v24    # "myRxTimeMs":J
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 7802
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v6

    .line 7801
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7803
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    .line 7804
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v6

    .line 7803
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7805
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 7806
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v6

    .line 7805
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7809
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 7810
    const-string/jumbo v6, "wifi.controller.voltage"

    .line 7809
    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 7810
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 7809
    div-double v28, v6, v8

    .line 7811
    .local v28, "opVolt":D
    const-wide/16 v6, 0x0

    cmpl-double v5, v28, v6

    if-eqz v5, :cond_d

    .line 7813
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    .line 7814
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v6

    long-to-double v6, v6

    div-double v6, v6, v28

    double-to-long v6, v6

    .line 7813
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7603
    .end local v15    # "i":I
    .end local v16    # "idleTimeMs":J
    .end local v18    # "leftOverRxTimeMs":J
    .end local v20    # "leftOverTxTimeMs":J
    .end local v28    # "opVolt":D
    .end local v32    # "rxTimeMs":J
    .end local v42    # "totalScanTimeMs":J
    .end local v44    # "totalTimeMs":J
    .end local v48    # "totalWifiLockTimeMs":J
    .end local v52    # "txTimeMs":J
    .end local v54    # "uidStatsSize":I
    :cond_d
    return-void
.end method

.method public writeAsyncLocked()V
    .locals 1

    .prologue
    .line 8844
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked(Z)V

    .line 8843
    return-void
.end method

.method writeHistory(Landroid/os/Parcel;ZZ)V
    .locals 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclData"    # Z
    .param p3, "andOldHistory"    # Z

    .prologue
    const/4 v8, 0x0

    .line 9056
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9057
    if-nez p2, :cond_0

    .line 9058
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 9059
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 9060
    return-void

    .line 9062
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9063
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9064
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$HistoryTag;

    .line 9065
    .local v2, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9066
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9067
    iget v3, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 9069
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    .end local v2    # "tag":Landroid/os/BatteryStats$HistoryTag;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9072
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {p1, v3, v8, v4}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 9074
    if-eqz p3, :cond_2

    .line 9075
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->writeOldHistory(Landroid/os/Parcel;)V

    .line 9047
    :cond_2
    return-void
.end method

.method public writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 26
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "last"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1850
    if-eqz p3, :cond_0

    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1851
    :cond_0
    const v21, 0x7fffd

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1852
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1853
    return-void

    .line 1856
    :cond_1
    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v24, v0

    sub-long v8, v22, v24

    .line 1857
    .local v8, "deltaTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v14

    .line 1858
    .local v14, "lastBatteryLevelInt":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v15

    .line 1861
    .local v15, "lastStateInt":I
    const-wide/16 v22, 0x0

    cmp-long v21, v8, v22

    if-ltz v21, :cond_2

    const-wide/32 v22, 0x7fffffff

    cmp-long v21, v8, v22

    if-lez v21, :cond_12

    .line 1862
    :cond_2
    const v10, 0x7ffff

    .line 1868
    .local v10, "deltaTimeToken":I
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v21, v0

    const/high16 v22, -0x1000000

    and-int v21, v21, v22

    or-int v11, v10, v21

    .line 1869
    .local v11, "firstToken":I
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_14

    .line 1870
    const/4 v12, 0x1

    .line 1871
    .local v12, "includeStepDetails":I
    :goto_1
    if-nez v12, :cond_15

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    if-nez v21, :cond_16

    const/4 v7, 0x1

    .line 1873
    .local v7, "computeStepDetails":Z
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v21

    or-int v4, v21, v12

    .line 1874
    .local v4, "batteryLevelInt":I
    if-eq v4, v14, :cond_17

    const/4 v5, 0x1

    .line 1875
    .local v5, "batteryLevelIntChanged":Z
    :goto_3
    if-eqz v5, :cond_3

    .line 1876
    const/high16 v21, 0x80000

    or-int v11, v11, v21

    .line 1878
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v17

    .line 1879
    .local v17, "stateInt":I
    move/from16 v0, v17

    if-eq v0, v15, :cond_18

    const/16 v18, 0x1

    .line 1880
    .local v18, "stateIntChanged":Z
    :goto_4
    if-eqz v18, :cond_4

    .line 1881
    const/high16 v21, 0x100000

    or-int v11, v11, v21

    .line 1883
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v21, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_19

    const/16 v16, 0x1

    .line 1884
    .local v16, "state2IntChanged":Z
    :goto_5
    if-eqz v16, :cond_5

    .line 1885
    const/high16 v21, 0x200000

    or-int v11, v11, v21

    .line 1887
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 1888
    :cond_6
    const/high16 v21, 0x400000

    or-int v11, v11, v21

    .line 1890
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 1891
    const/high16 v21, 0x800000

    or-int v11, v11, v21

    .line 1893
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1897
    const v21, 0x7fffe

    move/from16 v0, v21

    if-lt v10, v0, :cond_9

    .line 1898
    const v21, 0x7fffe

    move/from16 v0, v21

    if-ne v10, v0, :cond_1a

    .line 1900
    long-to-int v0, v8

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1906
    :cond_9
    :goto_6
    if-eqz v5, :cond_a

    .line 1907
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1914
    :cond_a
    if-eqz v18, :cond_b

    .line 1915
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1923
    :cond_b
    if-eqz v16, :cond_c

    .line 1924
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1928
    :cond_c
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-nez v21, :cond_d

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 1931
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1b

    .line 1932
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v19

    .line 1938
    .local v19, "wakeLockIndex":I
    :goto_7
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 1939
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v20

    .line 1945
    .local v20, "wakeReasonIndex":I
    :goto_8
    shl-int/lit8 v21, v20, 0x10

    or-int v21, v21, v19

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1947
    .end local v19    # "wakeLockIndex":I
    .end local v20    # "wakeReasonIndex":I
    :cond_e
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 1948
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v13

    .line 1949
    .local v13, "index":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v21, v0

    const v22, 0xffff

    and-int v21, v21, v22

    shl-int/lit8 v22, v13, 0x10

    or-int v6, v21, v22

    .line 1950
    .local v6, "codeAndIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1955
    .end local v6    # "codeAndIndex":I
    .end local v13    # "index":I
    :cond_f
    if-eqz v7, :cond_1d

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->computeHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;Landroid/os/BatteryStats$HistoryStepDetails;)V

    .line 1957
    if-eqz v12, :cond_10

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryStepDetails;->writeToParcel(Landroid/os/Parcel;)V

    .line 1960
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1965
    :goto_9
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    .line 1966
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1968
    :cond_11
    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    .line 1849
    return-void

    .line 1863
    .end local v4    # "batteryLevelInt":I
    .end local v5    # "batteryLevelIntChanged":Z
    .end local v7    # "computeStepDetails":Z
    .end local v10    # "deltaTimeToken":I
    .end local v11    # "firstToken":I
    .end local v12    # "includeStepDetails":I
    .end local v16    # "state2IntChanged":Z
    .end local v17    # "stateInt":I
    .end local v18    # "stateIntChanged":Z
    :cond_12
    const-wide/32 v22, 0x7fffd

    cmp-long v21, v8, v22

    if-ltz v21, :cond_13

    .line 1864
    const v10, 0x7fffe

    .restart local v10    # "deltaTimeToken":I
    goto/16 :goto_0

    .line 1866
    .end local v10    # "deltaTimeToken":I
    :cond_13
    long-to-int v10, v8

    .restart local v10    # "deltaTimeToken":I
    goto/16 :goto_0

    .line 1870
    .restart local v11    # "firstToken":I
    :cond_14
    const/4 v12, 0x0

    .restart local v12    # "includeStepDetails":I
    goto/16 :goto_1

    .line 1871
    :cond_15
    const/4 v7, 0x1

    .restart local v7    # "computeStepDetails":Z
    goto/16 :goto_2

    .line 1872
    .end local v7    # "computeStepDetails":Z
    :cond_16
    const/4 v7, 0x0

    .restart local v7    # "computeStepDetails":Z
    goto/16 :goto_2

    .line 1874
    .restart local v4    # "batteryLevelInt":I
    :cond_17
    const/4 v5, 0x0

    .restart local v5    # "batteryLevelIntChanged":Z
    goto/16 :goto_3

    .line 1879
    .restart local v17    # "stateInt":I
    :cond_18
    const/16 v18, 0x0

    .restart local v18    # "stateIntChanged":Z
    goto/16 :goto_4

    .line 1883
    :cond_19
    const/16 v16, 0x0

    .restart local v16    # "state2IntChanged":Z
    goto/16 :goto_5

    .line 1903
    :cond_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_6

    .line 1936
    :cond_1b
    const v19, 0xffff

    .restart local v19    # "wakeLockIndex":I
    goto/16 :goto_7

    .line 1943
    :cond_1c
    const v20, 0xffff

    .restart local v20    # "wakeReasonIndex":I
    goto/16 :goto_8

    .line 1963
    .end local v19    # "wakeLockIndex":I
    .end local v20    # "wakeReasonIndex":I
    :cond_1d
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    goto :goto_9
.end method

.method writeLocked(Z)V
    .locals 4
    .param p1, "sync"    # Z

    .prologue
    .line 8852
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v1, :cond_0

    .line 8853
    const-string/jumbo v1, "BatteryStats"

    const-string/jumbo v2, "writeLocked: no file associated with this instance"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8854
    return-void

    .line 8857
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mShuttingDown:Z

    if-eqz v1, :cond_1

    .line 8858
    return-void

    .line 8861
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8862
    .local v0, "out":Landroid/os/Parcel;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeSummaryToParcel(Landroid/os/Parcel;Z)V

    .line 8863
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    .line 8865
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    if-eqz v1, :cond_2

    .line 8866
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8868
    :cond_2
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    .line 8870
    if-eqz p1, :cond_3

    .line 8871
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->commitPendingDataToDisk()V

    .line 8851
    :goto_0
    return-void

    .line 8873
    :cond_3
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$5;

    invoke-direct {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$5;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method writeOldHistory(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 9081
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;Z)V
    .locals 48
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclHistory"    # Z

    .prologue
    .line 9415
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 9419
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v38

    .line 9421
    .local v38, "startClockTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v46, 0x3e8

    mul-long v6, v4, v46

    .line 9422
    .local v6, "NOW_SYS":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v46, 0x3e8

    mul-long v8, v4, v46

    .line 9424
    .local v8, "NOWREAL_SYS":J
    const/16 v4, 0x82

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9426
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistory(Landroid/os/Parcel;ZZ)V

    .line 9428
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9429
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, Lcom/android/internal/os/BatteryStatsImpl;->computeUptime(JI)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9430
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v4}, Lcom/android/internal/os/BatteryStatsImpl;->computeRealtime(JI)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9431
    move-object/from16 v0, p1

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 9432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    .line 9435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    .line 9436
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9437
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9438
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9439
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9440
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9441
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9442
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenOnSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9443
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenOffSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 9445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 9446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 9447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 9448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 9449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 9450
    .local v12, "NPKG":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 9451
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    if-ge v0, v12, :cond_2

    .line 9452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/BatteryStats$PackageChange;

    .line 9453
    .local v31, "pc":Landroid/os/BatteryStats$PackageChange;
    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9454
    move-object/from16 v0, v31

    iget-boolean v4, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9455
    move-object/from16 v0, v31

    iget v4, v0, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9451
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 9454
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 9458
    .end local v12    # "NPKG":I
    .end local v21    # "i":I
    .end local v31    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9460
    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9461
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9462
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9465
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_2
    const/4 v4, 0x5

    move/from16 v0, v21

    if-ge v0, v4, :cond_3

    .line 9466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9465
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 9468
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9469
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9473
    const/16 v21, 0x0

    :goto_3
    const/4 v4, 0x6

    move/from16 v0, v21

    if-ge v0, v4, :cond_4

    .line 9474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9473
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 9476
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9477
    const/16 v21, 0x0

    :goto_4
    const/16 v4, 0x11

    move/from16 v0, v21

    if-ge v0, v4, :cond_5

    .line 9478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9477
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 9480
    :cond_5
    const/16 v21, 0x0

    :goto_5
    const/4 v4, 0x4

    move/from16 v0, v21

    if-ge v0, v4, :cond_6

    .line 9481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9480
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 9484
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9491
    const/16 v21, 0x0

    :goto_6
    const/16 v4, 0x8

    move/from16 v0, v21

    if-ge v0, v4, :cond_7

    .line 9492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9491
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 9494
    :cond_7
    const/16 v21, 0x0

    :goto_7
    const/16 v4, 0xd

    move/from16 v0, v21

    if-ge v0, v4, :cond_8

    .line 9495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9494
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 9497
    :cond_8
    const/16 v21, 0x0

    :goto_8
    const/4 v4, 0x5

    move/from16 v0, v21

    if-ge v0, v4, :cond_9

    .line 9498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9497
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 9500
    :cond_9
    const/16 v21, 0x0

    :goto_9
    const/4 v4, 0x4

    move/from16 v0, v21

    if-ge v0, v4, :cond_a

    .line 9501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9500
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 9503
    :cond_a
    const/16 v21, 0x0

    :goto_a
    const/4 v4, 0x4

    move/from16 v0, v21

    if-ge v0, v4, :cond_b

    .line 9504
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9503
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 9506
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9507
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "ent$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 9512
    .local v18, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/os/BatteryStatsImpl$Timer;

    .line 9513
    .local v30, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$Timer;
    if-eqz v30, :cond_c

    .line 9514
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9515
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9516
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_b

    .line 9518
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 9522
    .end local v18    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v30    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$Timer;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9523
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 9524
    .restart local v18    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 9525
    .local v42, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v42, :cond_e

    .line 9526
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9527
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9528
    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_c

    .line 9530
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 9534
    .end local v18    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v42    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_f
    sget v4, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 9536
    .local v15, "NU":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 9537
    const/16 v26, 0x0

    .local v26, "iu":I
    :goto_d
    move/from16 v0, v26

    if-ge v0, v15, :cond_31

    .line 9538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 9541
    .local v43, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_10

    .line 9542
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9543
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9547
    :goto_e
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_11

    .line 9548
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9549
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9553
    :goto_f
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_12

    .line 9554
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9555
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9559
    :goto_10
    const/16 v21, 0x0

    :goto_11
    const/4 v4, 0x5

    move/from16 v0, v21

    if-ge v0, v4, :cond_14

    .line 9560
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v21

    if-eqz v4, :cond_13

    .line 9561
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9562
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9559
    :goto_12
    add-int/lit8 v21, v21, 0x1

    goto :goto_11

    .line 9545
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 9551
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 9557
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 9564
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 9567
    :cond_14
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_15

    .line 9568
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9569
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9573
    :goto_13
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_16

    .line 9574
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9575
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9579
    :goto_14
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_17

    .line 9580
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9581
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9585
    :goto_15
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_18

    .line 9586
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9587
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9591
    :goto_16
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_19

    .line 9592
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9593
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9597
    :goto_17
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_1a

    .line 9598
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9599
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9603
    :goto_18
    const/16 v21, 0x0

    :goto_19
    const/4 v4, 0x3

    move/from16 v0, v21

    if-ge v0, v4, :cond_1c

    .line 9604
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v21

    if-eqz v4, :cond_1b

    .line 9605
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9606
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9603
    :goto_1a
    add-int/lit8 v21, v21, 0x1

    goto :goto_19

    .line 9571
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_13

    .line 9577
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_14

    .line 9583
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 9589
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 9595
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 9601
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 9608
    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 9611
    :cond_1c
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v4, :cond_1e

    .line 9612
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9613
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9618
    :goto_1b
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v4, :cond_1f

    .line 9619
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9627
    :cond_1d
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v4, :cond_20

    .line 9628
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9639
    :goto_1c
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9640
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9641
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9643
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9644
    const/16 v21, 0x0

    :goto_1d
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_23

    .line 9645
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v35, v4, v21

    .line 9646
    .local v35, "speedBin":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v35, :cond_22

    .line 9647
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9648
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9644
    :goto_1e
    add-int/lit8 v21, v21, 0x1

    goto :goto_1d

    .line 9615
    .end local v35    # "speedBin":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 9621
    :cond_1f
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9622
    const/16 v21, 0x0

    :goto_1f
    const/4 v4, 0x3

    move/from16 v0, v21

    if-ge v0, v4, :cond_1d

    .line 9623
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9622
    add-int/lit8 v21, v21, 0x1

    goto :goto_1f

    .line 9630
    :cond_20
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9631
    const/16 v21, 0x0

    :goto_20
    const/4 v4, 0x4

    move/from16 v0, v21

    if-ge v0, v4, :cond_21

    .line 9632
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9633
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v21

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9631
    add-int/lit8 v21, v21, 0x1

    goto :goto_20

    .line 9635
    :cond_21
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9636
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto/16 :goto_1c

    .line 9650
    .restart local v35    # "speedBin":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 9654
    .end local v35    # "speedBin":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_23
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v44

    .line 9655
    .local v44, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v44 .. v44}, Landroid/util/ArrayMap;->size()I

    move-result v16

    .line 9656
    .local v16, "NW":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9657
    const/16 v27, 0x0

    .local v27, "iw":I
    :goto_21
    move/from16 v0, v27

    move/from16 v1, v16

    if-ge v0, v1, :cond_28

    .line 9658
    move-object/from16 v0, v44

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9659
    move-object/from16 v0, v44

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 9660
    .local v45, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_24

    .line 9661
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9662
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9666
    :goto_22
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_25

    .line 9667
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9668
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9672
    :goto_23
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_26

    .line 9673
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9674
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9678
    :goto_24
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_27

    .line 9679
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9680
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9657
    :goto_25
    add-int/lit8 v27, v27, 0x1

    goto :goto_21

    .line 9664
    :cond_24
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 9670
    :cond_25
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 9676
    :cond_26
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 9682
    :cond_27
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 9686
    .end local v45    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_28
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v37

    .line 9687
    .local v37, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v37 .. v37}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 9688
    .local v13, "NS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 9689
    const/16 v24, 0x0

    .local v24, "is":I
    :goto_26
    move/from16 v0, v24

    if-ge v0, v13, :cond_29

    .line 9690
    move-object/from16 v0, v37

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9691
    move-object/from16 v0, v37

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9689
    add-int/lit8 v24, v24, 0x1

    goto :goto_26

    .line 9694
    :cond_29
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v29

    .line 9695
    .local v29, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 9696
    .local v10, "NJ":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 9697
    const/16 v22, 0x0

    .local v22, "ij":I
    :goto_27
    move/from16 v0, v22

    if-ge v0, v10, :cond_2a

    .line 9698
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9699
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9697
    add-int/lit8 v22, v22, 0x1

    goto :goto_27

    .line 9702
    :cond_2a
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 9703
    .local v14, "NSE":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 9704
    const/16 v25, 0x0

    .local v25, "ise":I
    :goto_28
    move/from16 v0, v25

    if-ge v0, v14, :cond_2c

    .line 9705
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9706
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 9707
    .local v34, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_2b

    .line 9708
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9709
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9704
    :goto_29
    add-int/lit8 v25, v25, 0x1

    goto :goto_28

    .line 9711
    :cond_2b
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 9715
    .end local v34    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_2c
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 9716
    .local v11, "NP":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 9717
    const/16 v23, 0x0

    .local v23, "ip":I
    :goto_2a
    move/from16 v0, v23

    if-ge v0, v11, :cond_2d

    .line 9718
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9719
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 9720
    .local v33, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v33

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9721
    move-object/from16 v0, v33

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9722
    move-object/from16 v0, v33

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9723
    move-object/from16 v0, v33

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9724
    move-object/from16 v0, v33

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9725
    move-object/from16 v0, v33

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9726
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V

    .line 9717
    add-int/lit8 v23, v23, 0x1

    goto :goto_2a

    .line 9729
    .end local v33    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_2d
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 9730
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 9731
    if-lez v11, :cond_30

    .line 9733
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 9732
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2e
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 9734
    .local v19, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9735
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 9736
    .local v32, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v17

    .line 9737
    .local v17, "NWA":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9738
    const/16 v28, 0x0

    .local v28, "iwa":I
    :goto_2b
    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_2f

    .line 9739
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9740
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9738
    add-int/lit8 v28, v28, 0x1

    goto :goto_2b

    .line 9742
    :cond_2f
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 9743
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 9744
    const/16 v24, 0x0

    :goto_2c
    move/from16 v0, v24

    if-ge v0, v13, :cond_2e

    .line 9745
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9746
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 9748
    .local v36, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v4

    .line 9747
    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    move-result-wide v40

    .line 9749
    .local v40, "time":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 9750
    move-object/from16 v0, v36

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9751
    move-object/from16 v0, v36

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9744
    add-int/lit8 v24, v24, 0x1

    goto :goto_2c

    .line 9537
    .end local v17    # "NWA":I
    .end local v19    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v28    # "iwa":I
    .end local v32    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v36    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v40    # "time":J
    :cond_30
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_d

    .line 9414
    .end local v10    # "NJ":I
    .end local v11    # "NP":I
    .end local v13    # "NS":I
    .end local v14    # "NSE":I
    .end local v16    # "NW":I
    .end local v22    # "ij":I
    .end local v23    # "ip":I
    .end local v24    # "is":I
    .end local v25    # "ise":I
    .end local v27    # "iw":I
    .end local v29    # "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    .end local v37    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    .end local v43    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v44    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    :cond_31
    return-void
.end method

.method public writeSyncLocked()V
    .locals 1

    .prologue
    .line 8848
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked(Z)V

    .line 8847
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 9913
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelLocked(Landroid/os/Parcel;ZI)V

    .line 9912
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;ZI)V
    .locals 26
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclUids"    # Z
    .param p3, "flags"    # I

    .prologue
    .line 9923
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    .line 9927
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v20

    .line 9929
    .local v20, "startClockTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v24, 0x3e8

    mul-long v6, v4, v24

    .line 9930
    .local v6, "uSecUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v24, 0x3e8

    mul-long v8, v4, v24

    .line 9931
    .local v8, "uSecRealtime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v10

    .line 9932
    .local v10, "batteryRealtime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v12

    .line 9934
    .local v12, "batteryScreenOffRealtime":J
    const v4, -0x458a8b8b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9936
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistory(Landroid/os/Parcel;ZZ)V

    .line 9938
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9939
    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 9940
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9941
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9942
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9943
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9944
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9945
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9946
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 9948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 9950
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9951
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    const/4 v4, 0x5

    move/from16 v0, v16

    if-ge v0, v4, :cond_1

    .line 9952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9951
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 9946
    .end local v16    # "i":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 9954
    .restart local v16    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9955
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9957
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9958
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9959
    const/16 v16, 0x0

    :goto_2
    const/4 v4, 0x6

    move/from16 v0, v16

    if-ge v0, v4, :cond_2

    .line 9960
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9959
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 9962
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9963
    const/16 v16, 0x0

    :goto_3
    const/16 v4, 0x11

    move/from16 v0, v16

    if-ge v0, v4, :cond_3

    .line 9964
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9963
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 9966
    :cond_3
    const/16 v16, 0x0

    :goto_4
    const/4 v4, 0x4

    move/from16 v0, v16

    if-ge v0, v4, :cond_4

    .line 9967
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 9968
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 9966
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 9970
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9972
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 9973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 9974
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 9975
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9976
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9977
    const/16 v16, 0x0

    :goto_5
    const/16 v4, 0x8

    move/from16 v0, v16

    if-ge v0, v4, :cond_5

    .line 9978
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9977
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 9980
    :cond_5
    const/16 v16, 0x0

    :goto_6
    const/16 v4, 0xd

    move/from16 v0, v16

    if-ge v0, v4, :cond_6

    .line 9981
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9980
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 9983
    :cond_6
    const/16 v16, 0x0

    :goto_7
    const/4 v4, 0x5

    move/from16 v0, v16

    if-ge v0, v4, :cond_7

    .line 9984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9983
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 9986
    :cond_7
    const/16 v16, 0x0

    :goto_8
    const/4 v4, 0x4

    move/from16 v0, v16

    if-ge v0, v4, :cond_8

    .line 9987
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 9986
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 9989
    :cond_8
    const/16 v16, 0x0

    :goto_9
    const/4 v4, 0x4

    move/from16 v0, v16

    if-ge v0, v4, :cond_9

    .line 9990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v16

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 9989
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 9992
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9993
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9994
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9995
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9996
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9997
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9998
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 9999
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10000
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10001
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10002
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10003
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10004
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10005
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10006
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10007
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10008
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 10010
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 10011
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 10013
    if-eqz p2, :cond_f

    .line 10014
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "ent$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 10016
    .local v14, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 10017
    .local v17, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v17, :cond_c

    .line 10018
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10019
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10020
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_c

    .line 9992
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v15    # "ent$iterator":Ljava/util/Iterator;
    .end local v17    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 9993
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 10022
    .restart local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .restart local v15    # "ent$iterator":Ljava/util/Iterator;
    .restart local v17    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 10025
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v17    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 10027
    .restart local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 10028
    .local v19, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v19, :cond_e

    .line 10029
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10030
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10031
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_d

    .line 10033
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 10037
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v15    # "ent$iterator":Ljava/util/Iterator;
    .end local v19    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10040
    :cond_10
    sget v4, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10042
    if-eqz p2, :cond_11

    .line 10043
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 10044
    .local v18, "size":I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10045
    const/16 v16, 0x0

    :goto_e
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_12

    .line 10046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 10049
    .local v22, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 10045
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    .line 10052
    .end local v18    # "size":I
    .end local v22    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9921
    :cond_12
    return-void
.end method

.method public writeToParcelWithoutUids(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 9917
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelLocked(Landroid/os/Parcel;ZI)V

    .line 9916
    return-void
.end method
