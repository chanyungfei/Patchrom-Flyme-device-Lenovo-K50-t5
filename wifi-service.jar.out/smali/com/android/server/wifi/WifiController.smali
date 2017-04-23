.class Lcom/android/server/wifi/WifiController;
.super Lcom/android/internal/util/StateMachine;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiController$DefaultState;,
        Lcom/android/server/wifi/WifiController$ApStaDisabledState;,
        Lcom/android/server/wifi/WifiController$StaEnabledState;,
        Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;,
        Lcom/android/server/wifi/WifiController$ApEnabledState;,
        Lcom/android/server/wifi/WifiController$EcmState;,
        Lcom/android/server/wifi/WifiController$DeviceActiveState;,
        Lcom/android/server/wifi/WifiController$DeviceInactiveState;,
        Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;,
        Lcom/android/server/wifi/WifiController$FullLockHeldState;,
        Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;,
        Lcom/android/server/wifi/WifiController$NoLockHeldState;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final BASE:I = 0x26000

.field private static final CHECK_TRAFFIC_MILLIS:J = 0xea60L

.field static final CMD_AIRPLANE_TOGGLED:I = 0x26009

.field static final CMD_AP_START_FAILURE:I = 0x2600d

.field static final CMD_BATTERY_CHANGED:I = 0x26004

.field static final CMD_DEFERRED_TOGGLE:I = 0x2600b

.field static final CMD_DEVICE_IDLE:I = 0x26005

.field static final CMD_EMERGENCY_MODE_CHANGED:I = 0x26001

.field static final CMD_LOCKS_CHANGED:I = 0x26006

.field static final CMD_SCAN_ALWAYS_MODE_CHANGED:I = 0x26007

.field static final CMD_SCREEN_OFF:I = 0x26003

.field static final CMD_SCREEN_ON:I = 0x26002

.field static final CMD_SET_AP:I = 0x2600a

.field static final CMD_USER_PRESENT:I = 0x2600c

.field static final CMD_WIFI_TOGGLED:I = 0x26008

.field private static DBG:Z = false

.field private static final DEFAULT_IDLE_MS:J = 0xdbba0L

.field private static final DEFAULT_REENABLE_DELAY_MS:J = 0x1f4L

.field private static final DEFAULT_WIFI_COUNT:I = 0x5

.field private static final DEFER_MARGIN_MS:J = 0x5L

.field private static final IDLE_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiController"

.field private static final WIFI_P2P_RX_BYTES:Ljava/lang/String; = "/sys/class/net/p2p0/statistics/rx_bytes"

.field private static final WIFI_P2P_TX_BYTES:Ljava/lang/String; = "/sys/class/net/p2p0/statistics/tx_bytes"

.field private static final WIFI_RX_BYTES:Ljava/lang/String; = "/sys/class/net/wlan0/statistics/rx_bytes"

.field private static final WIFI_TX_BYTES:Ljava/lang/String; = "/sys/class/net/wlan0/statistics/tx_bytes"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

.field private mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

.field private mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

.field private mDeviceIdle:Z

.field private mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

.field private mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

.field private mFirstUserSignOnSeen:Z

.field private mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

.field private mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mIdleMillis:J

.field final mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

.field private mPluggedType:I

.field private mReEnableDelayMillis:J

.field private mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

.field private mScreenOff:Z

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mSleepPolicy:I

.field private mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

.field private mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

.field private mStayAwakeConditions:I

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

.field private mWifiIpoOff:Z

.field final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private new_rx_bytes:J

.field private new_tx_bytes:J

.field private old_rx_bytes:J

.field private old_tx_bytes:J

.field private whiteListPackages:[Ljava/lang/String;

.field private wifi_flow_count:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/WifiController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    return-wide v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/WifiController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/WifiController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J

    return-wide v0
.end method

.method static synthetic -get13(Lcom/android/server/wifi/WifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/wifi/WifiController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/wifi/WifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mWifiIpoOff:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/wifi/WifiController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiController;->wifi_flow_count:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mWifiIpoOff:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->inWhiteList()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiController;I)Z
    .locals 1
    .param p1, "pluggedType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readStayAwakeConditions()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiIdleTime()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiSleepPolicy()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 335
    const-string/jumbo v5, "WifiController"

    invoke-direct {p0, v5, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 89
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    .line 115
    new-instance v5, Landroid/net/NetworkInfo;

    const-string/jumbo v6, "WIFI"

    const-string/jumbo v7, ""

    invoke-direct {v5, v9, v8, v6, v7}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 129
    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 149
    new-instance v5, Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$DefaultState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    .line 150
    new-instance v5, Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$StaEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    .line 151
    new-instance v5, Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$ApStaDisabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    .line 152
    new-instance v5, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    .line 153
    new-instance v5, Lcom/android/server/wifi/WifiController$ApEnabledState;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    .line 154
    new-instance v5, Lcom/android/server/wifi/WifiController$DeviceActiveState;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$DeviceActiveState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    .line 155
    new-instance v5, Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$DeviceInactiveState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    .line 156
    new-instance v5, Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    .line 157
    new-instance v5, Lcom/android/server/wifi/WifiController$FullLockHeldState;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$FullLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    .line 158
    new-instance v5, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    .line 159
    new-instance v5, Lcom/android/server/wifi/WifiController$NoLockHeldState;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$NoLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    .line 160
    new-instance v5, Lcom/android/server/wifi/WifiController$EcmState;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$EcmState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    .line 164
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiController;->mWifiIpoOff:Z

    .line 184
    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "com.tencent.mobileqq"

    aput-object v6, v5, v8

    .line 185
    const-string/jumbo v6, "com.tencent.mobileqq:MSF"

    aput-object v6, v5, v9

    const-string/jumbo v6, "cn.msn.messenger"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 186
    const-string/jumbo v6, "com.tencent.microblog"

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const-string/jumbo v6, "com.tencent.WBlog"

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 187
    const-string/jumbo v6, "com.sina.weibo"

    const/4 v7, 0x5

    aput-object v6, v5, v7

    const-string/jumbo v6, "com.tencent.mm"

    const/4 v7, 0x6

    aput-object v6, v5, v7

    .line 188
    const-string/jumbo v6, "com.alibaba.mobileim"

    const/4 v7, 0x7

    aput-object v6, v5, v7

    const-string/jumbo v6, "com.taobao.wwseller"

    const/16 v7, 0x8

    aput-object v6, v5, v7

    .line 184
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->whiteListPackages:[Ljava/lang/String;

    .line 195
    iput v8, p0, Lcom/android/server/wifi/WifiController;->wifi_flow_count:I

    .line 196
    iput-wide v10, p0, Lcom/android/server/wifi/WifiController;->new_tx_bytes:J

    .line 197
    iput-wide v10, p0, Lcom/android/server/wifi/WifiController;->old_tx_bytes:J

    .line 198
    iput-wide v10, p0, Lcom/android/server/wifi/WifiController;->new_rx_bytes:J

    .line 199
    iput-wide v10, p0, Lcom/android/server/wifi/WifiController;->old_rx_bytes:J

    .line 336
    iput-object p1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 337
    iget-object v5, p2, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 338
    iget-object v5, p2, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 339
    iget-object v5, p2, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    .line 341
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 342
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.server.WifiManager.action.DEVICE_IDLE"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 343
    .local v1, "idleIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;

    .line 346
    const-class v5, Lcom/mediatek/common/wifi/IWifiFwkExt;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/wifi/IWifiFwkExt;

    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    .line 348
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;)V

    .line 349
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 350
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 351
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 352
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 353
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 354
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 355
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 356
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 357
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 358
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 359
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 361
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v2

    .line 362
    .local v2, "isAirplaneModeOn":Z
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v4

    .line 363
    .local v4, "isWifiEnabled":Z
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v3

    .line 365
    .local v3, "isScanningAlwaysAvailable":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAirplaneModeOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 366
    const-string/jumbo v6, ", isWifiEnabled = "

    .line 365
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 367
    const-string/jumbo v6, ", isScanningAvailable = "

    .line 365
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    .line 369
    if-eqz v3, :cond_0

    .line 370
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    .line 375
    :goto_0
    const/16 v5, 0x64

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->setLogRecSize(I)V

    .line 376
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiController;->setLogOnlyTransitions(Z)V

    .line 378
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 379
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    const-string/jumbo v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string/jumbo v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 383
    new-instance v6, Lcom/android/server/wifi/WifiController$1;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$1;-><init>(Lcom/android/server/wifi/WifiController;)V

    .line 447
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 382
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiController;->initializeAndRegisterForSettingsChange(Landroid/os/Looper;)V

    .line 334
    return-void

    .line 372
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method private checkLocksAndTransitionWhenDeviceIdle()V
    .locals 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->hasLocks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->getStrongestLockMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Illegal lock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->getStrongestLockMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    .line 1090
    :goto_0
    return-void

    .line 1094
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1097
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1100
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1092
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getRunningProcess()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    const/4 v5, 0x0

    .line 282
    .local v5, "pkgList":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 285
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 287
    .local v6, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 289
    .local v0, "NP":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 291
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 293
    .local v4, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v8, "system"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v8, "com.android.phone"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 289
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    .end local v0    # "NP":I
    .end local v2    # "i":I
    .end local v4    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "NP":I
    goto :goto_0

    .line 311
    .restart local v2    # "i":I
    .restart local v4    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    const-string/jumbo v7, "WifiController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 316
    .end local v4    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    return-object v3
.end method

.method private getWifiFlow(Ljava/io/File;)J
    .locals 10
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const-wide/16 v8, -0x1

    .line 203
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v1, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    .local v1, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "read":Ljava/lang/String;
    const-string/jumbo v4, "WifiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifi "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 215
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 217
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v2    # "read":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "localIOException":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "exception open file"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string/jumbo v4, "WifiController"

    const-string/jumbo v5, "open file error"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-wide v8

    .line 226
    .end local v0    # "localIOException":Ljava/io/IOException;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-wide v8
.end method

.method private inWhiteList()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->getRunningProcess()Ljava/util/ArrayList;

    move-result-object v0

    .line 323
    .local v0, "runningPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiController;->whiteListPackages:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 325
    .local v1, "whiteListPackage":Ljava/lang/String;
    const-string/jumbo v6, "WifiController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "whiteListPackage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 328
    const/4 v2, 0x1

    return v2

    .line 323
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "whiteListPackage":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method private initializeAndRegisterForSettingsChange(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 453
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 454
    .local v0, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readStayAwakeConditions()V

    .line 455
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForStayAwakeModeChange(Landroid/os/Handler;)V

    .line 456
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiIdleTime()V

    .line 457
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForWifiIdleTimeChange(Landroid/os/Handler;)V

    .line 460
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/mediatek/common/wifi/IWifiFwkExt;->setCustomizedWifiSleepPolicy(Landroid/content/Context;)V

    .line 463
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiSleepPolicy()V

    .line 464
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForWifiSleepPolicyChange(Landroid/os/Handler;)V

    .line 465
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiReEnableDelay()V

    .line 452
    return-void
.end method

.method private readStayAwakeConditions()V
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 470
    const-string/jumbo v1, "stay_on_while_plugged_in"

    const/4 v2, 0x0

    .line 469
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiController;->mStayAwakeConditions:I

    .line 468
    return-void
.end method

.method private readWifiIdleTime()V
    .locals 4

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 475
    const-string/jumbo v1, "wifi_idle_ms"

    const-wide/32 v2, 0xdbba0

    .line 474
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    .line 473
    return-void
.end method

.method private readWifiReEnableDelay()V
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 486
    const-string/jumbo v1, "wifi_reenable_delay"

    const-wide/16 v2, 0x1f4

    .line 485
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J

    .line 484
    return-void
.end method

.method private readWifiSleepPolicy()V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 480
    const-string/jumbo v1, "wifi_sleep_policy"

    .line 481
    const/4 v2, 0x2

    .line 479
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    .line 478
    return-void
.end method

.method private registerForStayAwakeModeChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 493
    new-instance v0, Lcom/android/server/wifi/WifiController$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$2;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    .line 500
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 501
    const-string/jumbo v2, "stay_on_while_plugged_in"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 502
    const/4 v3, 0x0

    .line 500
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 492
    return-void
.end method

.method private registerForWifiIdleTimeChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 509
    new-instance v0, Lcom/android/server/wifi/WifiController$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$3;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    .line 516
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 517
    const-string/jumbo v2, "wifi_idle_ms"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 518
    const/4 v3, 0x0

    .line 516
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 508
    return-void
.end method

.method private registerForWifiSleepPolicyChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 525
    new-instance v0, Lcom/android/server/wifi/WifiController$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$4;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    .line 531
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 532
    const-string/jumbo v2, "wifi_sleep_policy"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 533
    const/4 v3, 0x0

    .line 531
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 524
    return-void
.end method

.method private shouldDeviceStayAwake(I)Z
    .locals 2
    .param p1, "pluggedType"    # I

    .prologue
    const/4 v0, 0x0

    .line 569
    iget v1, p0, Lcom/android/server/wifi/WifiController;->mStayAwakeConditions:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private shouldWifiStayAwake(I)Z
    .locals 4
    .param p1, "pluggedType"    # I

    .prologue
    const/4 v3, 0x1

    .line 544
    const-string/jumbo v0, "WifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wifiSleepPolicy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget v0, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 547
    return v3

    .line 548
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    if-ne v0, v3, :cond_1

    .line 549
    if-eqz p1, :cond_1

    .line 551
    return v3

    .line 554
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController;->shouldDeviceStayAwake(I)Z

    move-result v0

    return v0
.end method

.method private updateBatteryWorkSource()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 574
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 572
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1116
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPluggedType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIdleMillis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSleepPolicy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1115
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    .line 170
    if-lez p1, :cond_0

    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    goto :goto_0
.end method

.method public isHaveWifiFlow()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1400

    .line 249
    iget-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_tx_bytes:J

    iput-wide v4, p0, Lcom/android/server/wifi/WifiController;->old_tx_bytes:J

    .line 250
    iget-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_rx_bytes:J

    iput-wide v4, p0, Lcom/android/server/wifi/WifiController;->old_rx_bytes:J

    .line 252
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/net/wlan0/statistics/tx_bytes"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v3, "wifi_tx_file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/net/wlan0/statistics/rx_bytes"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v2, "wifi_rx_file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/net/p2p0/statistics/tx_bytes"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "wifi_p2p_tx_file":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/net/p2p0/statistics/rx_bytes"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "wifi_p2p_rx_file":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiController;->getWifiFlow(Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_tx_bytes:J

    .line 258
    iget-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_tx_bytes:J

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiController;->getWifiFlow(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_tx_bytes:J

    .line 259
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiController;->getWifiFlow(Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_rx_bytes:J

    .line 260
    iget-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_rx_bytes:J

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->getWifiFlow(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_rx_bytes:J

    .line 262
    iget-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_rx_bytes:J

    iget-wide v6, p0, Lcom/android/server/wifi/WifiController;->old_rx_bytes:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 263
    iget-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_rx_bytes:J

    iget-wide v6, p0, Lcom/android/server/wifi/WifiController;->old_rx_bytes:J

    sub-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    .line 264
    iget-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_tx_bytes:J

    iget-wide v6, p0, Lcom/android/server/wifi/WifiController;->old_tx_bytes:J

    sub-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    .line 266
    iget v4, p0, Lcom/android/server/wifi/WifiController;->wifi_flow_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiController;->wifi_flow_count:I

    .line 273
    :goto_0
    const-string/jumbo v4, "WifiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifi flow count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/WifiController;->wifi_flow_count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", rx = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/wifi/WifiController;->new_rx_bytes:J

    iget-wide v8, p0, Lcom/android/server/wifi/WifiController;->old_rx_bytes:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "B, tx = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/wifi/WifiController;->new_tx_bytes:J

    iget-wide v8, p0, Lcom/android/server/wifi/WifiController;->old_tx_bytes:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 270
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wifi/WifiController;->wifi_flow_count:I

    goto :goto_0
.end method

.method public startWifiFlow()V
    .locals 8

    .prologue
    .line 232
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/net/wlan0/statistics/tx_bytes"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v3, "wifi_tx_file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/net/wlan0/statistics/rx_bytes"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v2, "wifi_rx_file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/net/p2p0/statistics/tx_bytes"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "wifi_p2p_tx_file":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/net/p2p0/statistics/rx_bytes"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "wifi_p2p_rx_file":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiController;->getWifiFlow(Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_tx_bytes:J

    .line 238
    iget-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_tx_bytes:J

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiController;->getWifiFlow(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_tx_bytes:J

    .line 239
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiController;->getWifiFlow(Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_rx_bytes:J

    .line 240
    iget-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_rx_bytes:J

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->getWifiFlow(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/WifiController;->new_rx_bytes:J

    .line 242
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wifi/WifiController;->wifi_flow_count:I

    .line 244
    return-void
.end method
