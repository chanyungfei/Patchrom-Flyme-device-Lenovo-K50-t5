.class public Lcom/android/server/wifi/WifiWatchdogStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$1;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x21000

.field private static final BSSID_STAT_CACHE_SIZE:I = 0x14

.field private static final BSSID_STAT_EMPTY_COUNT:I = 0x3

.field private static final BSSID_STAT_RANGE_HIGH_DBM:I = -0x2d

.field private static final BSSID_STAT_RANGE_LOW_DBM:I = -0x69

.field private static final CMD_RSSI_FETCH:I = 0x2100b

.field private static DBG:Z = false

.field private static final EVENT_BSSID_CHANGE:I = 0x21007

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21002

.field private static final EVENT_P2P_STATE_CHANGE:I = 0x2102b

.field private static final EVENT_POOR_LINK_PROFILING_SETTINGS_CHANGE:I = 0x2102c

.field private static final EVENT_ROAMING_DETECT:I = 0x21028

.field private static final EVENT_RSSI_CHANGE:I = 0x21003

.field private static final EVENT_SCREEN_OFF:I = 0x21009

.field private static final EVENT_SCREEN_ON:I = 0x21008

.field private static final EVENT_SUPPLICANT_STATE_CHANGE:I = 0x21004

.field private static final EVENT_WATCHDOG_SETTINGS_CHANGE:I = 0x21006

.field private static final EVENT_WATCHDOG_TOGGLED:I = 0x21001

.field private static final EVENT_WIFI_RADIO_STATE_CHANGE:I = 0x21005

.field private static final EXP_COEFFICIENT_MONITOR:D = 0.5

.field private static final EXP_COEFFICIENT_RECORD:D = 0.1

.field static final GOOD_LINK_DETECTED:I = 0x21016

.field private static final GOOD_LINK_LOSS_THRESHOLD:D = 0.1

.field private static final GOOD_LINK_RSSI_RANGE_MAX:I = 0x14

.field private static final GOOD_LINK_RSSI_RANGE_MIN:I = 0x3

.field private static final GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

.field private static final LINK_MONITOR_LEVEL_THRESHOLD:I = 0x4

.field private static final LINK_SAMPLING_INTERVAL_MS:J = 0x3e8L

.field private static final MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

.field static final POOR_LINK_DETECTED:I = 0x21015

.field private static final POOR_LINK_LOSS_THRESHOLD:D = 0.5

.field private static final POOR_LINK_MIN_VOLUME:D = 2.0

.field private static final POOR_LINK_PROFILING_PERIOD_MILLIS:I = 0x3e8

.field private static final POOR_LINK_SAMPLE_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine"

.field private static sPresetLoss:[D

.field private static sWifiOnly:Z


# instance fields
.field private currentDetailState:Landroid/net/NetworkInfo$DetailedState;

.field private isRoaming:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBssidCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

.field private mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mCurrentSignalLevel:I

.field private mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

.field private mGoodLinkThreshold:D

.field private final mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsScreenOn:Z

.field mLatencyPanelView:Landroid/view/View;

.field private mLatestRssi:I

.field private mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLinkSpeed:I

.field mLinkStatus:Ljava/lang/String;

.field private mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

.field private mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

.field private mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

.field mPoorLinkProfilingEnabled:Z

.field private final mPoorLinkProfilingInfo:Ljava/lang/Runnable;

.field private mPoorLinkThreshold:D

.field private mPoorNetworkDetectionEnabled:Z

.field private mRssiFetchToken:I

.field private mSampleCount:I

.field mTextView:Landroid/widget/TextView;

.field private mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

.field private mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

.field private mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

.field mWeightAlgo:Z

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;

.field p2pStart:Z

.field toast:Landroid/widget/Toast;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic -get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLatestRssi:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkSpeed:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/wifi/WifiWatchdogStateMachine;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkThreshold:D

    return-wide v0
.end method

.method static synthetic -get2()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSampleCount:I

    return v0
.end method

.method static synthetic -get23(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get28()[D
    .locals 1

    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isRoaming:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/WifiWatchdogStateMachine;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mGoodLinkThreshold:D

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isRoaming:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic -set11([D)[D
    .locals 0

    sput-object p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object p0
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLatestRssi:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkSpeed:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSampleCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 1
    .param p1, "rssi"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->hideLatencyPanel()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V
    .locals 0
    .param p1, "isGood"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x493e0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 96
    sput-boolean v7, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    .line 259
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    .line 261
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const v2, 0x1b7740

    invoke-direct {v1, v5, v6, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v5

    .line 262
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v2, 0x5

    invoke-direct {v1, v6, v2, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v7

    .line 263
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v2, 0x6

    const/16 v3, 0xa

    const v4, 0xea60

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v8

    .line 264
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/16 v2, 0x9

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v6

    .line 259
    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    .line 277
    new-array v0, v6, [Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    .line 279
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const v2, 0x1b7740

    const/16 v3, -0xc8

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v5

    .line 280
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const/16 v2, -0x46

    invoke-direct {v1, v9, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v7

    .line 281
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const/16 v2, -0x37

    invoke-direct {v1, v5, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v8

    .line 277
    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    .line 295
    sput-boolean v5, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    .line 94
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Messenger;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    const-string/jumbo v0, "WifiWatchdogStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 290
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 300
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 299
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    .line 301
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    .line 305
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    .line 309
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    .line 310
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    .line 311
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    .line 312
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    .line 313
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    .line 314
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    .line 315
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    .line 316
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    .line 317
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    .line 322
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isRoaming:Z

    .line 325
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->p2pStart:Z

    .line 327
    iput-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    .line 328
    iput-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    .line 329
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    .line 332
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSampleCount:I

    .line 335
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkThreshold:D

    .line 336
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mGoodLinkThreshold:D

    .line 337
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 338
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWeightAlgo:Z

    .line 1574
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;

    .line 352
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    .line 354
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 356
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 358
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V

    .line 360
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;

    .line 364
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V

    .line 365
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V

    .line 366
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 367
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 371
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 374
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 376
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 381
    :goto_0
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setLogRecSize(I)V

    .line 382
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setLogOnlyTransitions(Z)V

    .line 383
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V

    .line 350
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method private calculateSignalLevel(I)I
    .locals 3
    .param p1, "rssi"    # I

    .prologue
    .line 1145
    const/4 v1, 0x5

    invoke-static {p1, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 1146
    .local v0, "signalLevel":I
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RSSI current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1148
    :cond_0
    return v0
.end method

.method private static getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1193
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private handlePoorLinkProfilingChange()V
    .locals 4

    .prologue
    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleLatencyProfilingChange(), mPoorLinkProfilingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1612
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v0, :cond_1

    .line 1618
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    if-ne v0, v1, :cond_3

    .line 1620
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->showLatencyPanel(I)V

    .line 1622
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1623
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1608
    :goto_1
    return-void

    .line 1613
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1614
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->hideLatencyPanel()V

    .line 1615
    return-void

    .line 1620
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1627
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->hideLatencyPanel()V

    .line 1629
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private hideLatencyPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1560
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1562
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1565
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1564
    check-cast v0, Landroid/view/WindowManager;

    .line 1567
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1568
    iput-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    .line 1571
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    iput-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    .line 1559
    return-void
.end method

.method private isWatchdogEnabled()Z
    .locals 4

    .prologue
    .line 509
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_watchdog_on"

    const/4 v3, 0x1

    .line 508
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 510
    .local v0, "ret":Z
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Watchdog enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 511
    :cond_0
    return v0
.end method

.method public static makeWifiWatchdogStateMachine(Landroid/content/Context;Landroid/os/Messenger;)Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 390
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v5, "connectivity"

    .line 389
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 391
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    :cond_0
    sput-boolean v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    .line 396
    const-string/jumbo v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 398
    new-instance v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;-><init>(Landroid/content/Context;Landroid/os/Messenger;)V

    .line 399
    .local v2, "wwsm":Lcom/android/server/wifi/WifiWatchdogStateMachine;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->start()V

    .line 400
    return-object v2
.end method

.method private static putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1209
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForSettingsChanges()V
    .locals 4

    .prologue
    .line 487
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$4;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$4;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 494
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 495
    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 496
    const/4 v3, 0x0

    .line 494
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 486
    return-void
.end method

.method private registerForWatchdogToggle()V
    .locals 4

    .prologue
    .line 471
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$3;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$3;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 478
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 479
    const-string/jumbo v2, "wifi_watchdog_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 480
    const/4 v3, 0x0

    .line 478
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 470
    return-void
.end method

.method private sendLinkStatusNotification(Z)V
    .locals 4
    .param p1, "isGood"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1152
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "########################################"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1154
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    if-eqz v0, :cond_1

    .line 1156
    if-eqz p1, :cond_4

    .line 1157
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "LinkStatusNotification  Good"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 1158
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1164
    :cond_1
    :goto_0
    if-eqz p1, :cond_5

    .line 1165
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21016

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1166
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_2

    .line 1167
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-set1(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 1169
    :cond_2
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Good link notification is sent"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1151
    :cond_3
    :goto_1
    return-void

    .line 1160
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "LinkStatusNotification Poor"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 1161
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1171
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21015

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1172
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_6

    .line 1173
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-set2(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 1175
    :cond_6
    const-string/jumbo v0, "Poor link notification is sent"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupNetworkReceiver()V
    .locals 3

    .prologue
    .line 404
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 453
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    .line 454
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.mediatek.wifi.p2p.Tx"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "wifi.wifi.roamingDetect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 403
    return-void
.end method

.method private showLatencyPanel(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 1494
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1496
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1498
    .local v0, "adbInflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1499
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1500
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    .line 1501
    const-string/jumbo v4, "Link Status:\nRSSI:\nLinkSpeed:\nGoodLinkTargetRssi:\nGoodLinkTargetCount:\nSampleCount:\nCurrentLossValue:\nCurrentLossVolume:\n\np2pStart:\nPoorLinkThreshold:\nGoodLinkThreshold:\n"

    .line 1500
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1514
    return-void

    .line 1517
    :cond_0
    const v3, 0x8070025

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    .line 1519
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1520
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    const v4, 0x811009b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    .line 1523
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1525
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    .line 1526
    const-string/jumbo v4, "Link Status:\nRSSI:\nLinkSpeed:\nGoodLinkTargetRssi:\nGoodLinkTargetCount:\nSampleCount:\nCurrentLossValue:\nCurrentLossVolume:\n\np2pStart:\nPoorLinkThreshold:\nGoodLinkThreshold:\n"

    .line 1525
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1542
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1545
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1547
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1548
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1549
    const/16 v3, 0x13

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1550
    const v3, 0x3f333333    # 0.7f

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1554
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1553
    check-cast v2, Landroid/view/WindowManager;

    .line 1556
    .local v2, "windowManager":Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1493
    return-void
.end method

.method private updateCurrentBssid(Ljava/lang/String;)V
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const v3, 0x21007

    const/4 v2, 0x0

    .line 1118
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Update current BSSID to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1121
    :cond_0
    if-nez p1, :cond_4

    .line 1122
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_2

    return-void

    .line 1118
    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_0

    .line 1123
    :cond_2
    iput-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 1124
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BSSID changed"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1125
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 1126
    return-void

    .line 1130
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 1133
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 1134
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_6

    .line 1135
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 1136
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    :cond_6
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "BSSID changed"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1141
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 1117
    return-void
.end method

.method private updateSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Updating secure settings"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 518
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPoorNetworkDetectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 522
    const-string/jumbo v0, "persist.sys.poorlinkProfile"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    .line 524
    const-string/jumbo v0, "persist.sys.poorlink"

    const-string/jumbo v1, "0.5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkThreshold:D

    .line 525
    const-string/jumbo v0, "persist.sys.goodlink"

    const-string/jumbo v1, "0.1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mGoodLinkThreshold:D

    .line 514
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 500
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWifiInfo: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLinkProperties: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentSignalLevel: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPoorNetworkDetectionEnabled: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public getPoorLinkThreshold(Z)D
    .locals 2
    .param p1, "isGood"    # Z

    .prologue
    .line 1646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPoorLinkThreshold, isGood:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1648
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mGoodLinkThreshold:D

    return-wide v0

    .line 1649
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkThreshold:D

    return-wide v0
.end method

.method public setPoorLinkProfilingOn(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPoorLinkProfilingOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1639
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    .line 1640
    const v0, 0x2102c

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 1636
    return-void
.end method

.method public setPoorLinkThreshold(ZD)Z
    .locals 10
    .param p1, "isGood"    # Z
    .param p2, "threshold"    # D

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    .line 1654
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPoorLinkThreshold, isGood:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " threshold= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1657
    if-eqz p1, :cond_1

    .line 1658
    move-wide v0, p2

    .line 1659
    .local v0, "tmpgood":D
    iget-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkThreshold:D

    .line 1664
    .local v2, "tmppoor":D
    :goto_0
    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    cmpl-double v4, v0, v8

    if-lez v4, :cond_2

    .line 1665
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPoorLinkThreshold, fail good= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " poor ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1666
    const/4 v4, 0x0

    return v4

    .line 1661
    .end local v0    # "tmpgood":D
    .end local v2    # "tmppoor":D
    :cond_1
    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mGoodLinkThreshold:D

    .line 1662
    .restart local v0    # "tmpgood":D
    move-wide v2, p2

    .restart local v2    # "tmppoor":D
    goto :goto_0

    .line 1664
    :cond_2
    cmpg-double v4, v0, v6

    if-ltz v4, :cond_0

    cmpl-double v4, v2, v8

    if-gtz v4, :cond_0

    cmpg-double v4, v2, v6

    if-ltz v4, :cond_0

    .line 1668
    if-eqz p1, :cond_3

    .line 1669
    iput-wide p2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mGoodLinkThreshold:D

    .line 1673
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 1671
    :cond_3
    iput-wide p2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkThreshold:D

    goto :goto_1
.end method
