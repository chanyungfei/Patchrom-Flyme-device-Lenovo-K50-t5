.class final Lcom/android/server/display/WifiDisplayController;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayController$ChannelConflictState;,
        Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;,
        Lcom/android/server/display/WifiDisplayController$SinkState;,
        Lcom/android/server/display/WifiDisplayController$Listener;,
        Lcom/android/server/display/WifiDisplayController$1;,
        Lcom/android/server/display/WifiDisplayController$2;,
        Lcom/android/server/display/WifiDisplayController$3;,
        Lcom/android/server/display/WifiDisplayController$4;,
        Lcom/android/server/display/WifiDisplayController$5;,
        Lcom/android/server/display/WifiDisplayController$6;,
        Lcom/android/server/display/WifiDisplayController$7;,
        Lcom/android/server/display/WifiDisplayController$8;,
        Lcom/android/server/display/WifiDisplayController$9;,
        Lcom/android/server/display/WifiDisplayController$10;,
        Lcom/android/server/display/WifiDisplayController$11;,
        Lcom/android/server/display/WifiDisplayController$12;,
        Lcom/android/server/display/WifiDisplayController$13;,
        Lcom/android/server/display/WifiDisplayController$14;,
        Lcom/android/server/display/WifiDisplayController$15;,
        Lcom/android/server/display/WifiDisplayController$16;,
        Lcom/android/server/display/WifiDisplayController$17;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x3c

.field private static final CONNECT_MAX_RETRIES:I = 0x3

.field private static final CONNECT_MIN_RETRIES:I = 0x0

.field private static final CONNECT_RETRY_DELAY_MILLIS:I = 0x1f4

.field private static DEBUG:Z = false

.field private static final DEFAULT_CONTROL_PORT:I = 0x1c44

.field private static final DISCOVER_PEERS_INTERVAL_MILLIS:I = 0x2710

.field public static final DRM_CONTENT_MEDIAPLAYER:Ljava/lang/String; = "com.mediatek.mediaplayer.DRM_PLAY"

.field private static final MAX_THROUGHPUT:I = 0x32

.field private static final RECONNECT_RETRY_DELAY_MILLIS:I = 0x3e8

.field private static final RESCAN_RETRY_DELAY_MILLIS:I = 0x7d0

.field private static final RTSP_SINK_TIMEOUT_SECONDS:I = 0xa

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x4b

.field private static final RTSP_TIMEOUT_SECONDS_CERT_MODE:I = 0x78

.field private static final TAG:Ljava/lang/String; = "WifiDisplayController"

.field private static final WFDCONTROLLER_AVERATE_SCORE_COUNT:I = 0x4

.field private static final WFDCONTROLLER_INVALID_VALUE:I = -0x1

.field private static final WFDCONTROLLER_LATENCY_INFO_DELAY_MILLIS:I = 0x7d0

.field private static final WFDCONTROLLER_LATENCY_INFO_FIRST_MILLIS:I = 0x64

.field private static final WFDCONTROLLER_LATENCY_INFO_PERIOD_MILLIS:I = 0xbb8

.field private static final WFDCONTROLLER_LINK_INFO_PERIOD_MILLIS:I = 0x7d0

.field private static final WFDCONTROLLER_PRE_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_PRE_SHUTDOWN"

.field private static final WFDCONTROLLER_SCORE_THRESHOLD1:I = 0x64

.field private static final WFDCONTROLLER_SCORE_THRESHOLD2:I = 0x50

.field private static final WFDCONTROLLER_SCORE_THRESHOLD3:I = 0x1e

.field private static final WFDCONTROLLER_SCORE_THRESHOLD4:I = 0xa

.field private static final WFDCONTROLLER_WFD_STAT_DISCONNECT:I = 0x0

.field private static final WFDCONTROLLER_WFD_STAT_FILE:Ljava/lang/String; = "/proc/wmt_tm/wfd_stat"

.field private static final WFDCONTROLLER_WFD_STAT_STANDBY:I = 0x1

.field private static final WFDCONTROLLER_WFD_STAT_STREAMING:I = 0x2

.field private static final WFDCONTROLLER_WFD_UPDATE:I = 0x0

.field private static final WFDCONTROLLER_WIFI_APP_SCAN_PERIOD_MILLIS:I = 0x64

.field private static final WFD_BLOCK_MAC_TIME:I = 0x3a98

.field private static final WFD_BUILD_CONNECT_DIALOG:I = 0x9

.field private static final WFD_CHANGE_RESOLUTION_DIALOG:I = 0x5

.field public static final WFD_CHANNEL_CONFLICT_OCCURS:Ljava/lang/String; = "com.mediatek.wifi.p2p.OP.channel"

.field public static final WFD_CLEARMOTION_DIMMED:Ljava/lang/String; = "com.mediatek.clearmotion.DIMMED_UPDATE"

.field private static final WFD_CONFIRM_CONNECT_DIALOG:I = 0x8

.field public static final WFD_CONNECTION:Ljava/lang/String; = "com.mediatek.wfd.connection"

.field private static final WFD_HDMI_EXCLUDED_DIALOG_WFD_UPDATE:I = 0x2

.field public static final WFD_PORTRAIT:Ljava/lang/String; = "com.mediatek.wfd.portrait"

.field private static final WFD_RECONNECT_DIALOG:I = 0x4

.field public static final WFD_SINK_CHANNEL_CONFLICT_OCCURS:Ljava/lang/String; = "com.mediatek.wifi.p2p.freq.conflict"

.field private static final WFD_SINK_DISCOVER_RETRY_COUNT:I = 0x5

.field private static final WFD_SINK_DISCOVER_RETRY_DELAY_MILLIS:I = 0x64

.field public static final WFD_SINK_GC_REQUEST_CONNECT:Ljava/lang/String; = "com.mediatek.wifi.p2p.GO.GCrequest.connect"

.field private static final WFD_SINK_IP_RETRY_COUNT:I = 0x32

.field private static final WFD_SINK_IP_RETRY_DELAY_MILLIS:I = 0x3e8

.field private static final WFD_SINK_IP_RETRY_FIRST_DELAY:I = 0x12c

.field private static final WFD_SOUND_PATH_DIALOG:I = 0x6

.field private static final WFD_WAIT_CONNECT_DIALOG:I = 0x7

.field private static final WFD_WIFIP2P_EXCLUDED_DIALOG:I = 0x1

.field private static final wfdLinkInfoPattern:Ljava/util/regex/Pattern;


# instance fields
.field private WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

.field private WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

.field private WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

.field private WFDCONTROLLER_DISPLAY_RESOLUTION:I

.field private WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

.field private WFDCONTROLLER_DISPLAY_TOAST_TIME:I

.field private WFDCONTROLLER_QE_ON:Z

.field private WFDCONTROLLER_SQC_INFO_ON:Z

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoChannelSelection:Z

.field private mAutoEnableWifi:Z

.field private final mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupShowTouchVal:I

.field private mBlockMac:Ljava/lang/String;

.field private mBuildConnectDialog:Landroid/app/AlertDialog;

.field private mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mChangeResolutionDialog:Landroid/app/AlertDialog;

.field private mChannelConflictState:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

.field private mConfirmConnectDialog:Landroid/app/AlertDialog;

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectionRetriesLeft:I

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDRMContent_Mediaplayer:Z

.field private final mDelayProfiling:Ljava/lang/Runnable;

.field private mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mDiscoverPeers:Ljava/lang/Runnable;

.field private mDiscoverPeersInProgress:Z

.field private mDisplayApToast:Z

.field private final mDisplayNotification:Ljava/lang/Runnable;

.field private final mDisplayToast:Ljava/lang/Runnable;

.field private final mEnableWifiDelay:Ljava/lang/Runnable;

.field private mFast_DesiredMac:Ljava/lang/String;

.field private mFast_NeedFastRtsp:Z

.field private final mGetSinkIpAddr:Ljava/lang/Runnable;

.field private mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

.field private mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field private mIsConnected_OtherP2p:Z

.field private mIsConnecting_P2p_Rtsp:Z

.field private mIsNeedRotate:Z

.field private mIsWFDConnected:Z

.field private mLastTimeConnected:Z

.field private final mLatencyInfo:Ljava/lang/Runnable;

.field mLatencyPanelView:Landroid/view/View;

.field private mLatencyProfiling:I

.field private mLevel:I

.field private final mListener:Lcom/android/server/display/WifiDisplayController$Listener;

.field private mNetworkId:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotiTimerStarted:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mP2pOperFreq:I

.field private mPlayerID_Mediaplayer:I

.field private mPrevResolution:I

.field private mRSSI:I

.field private mRTSPConnecting:Z

.field private final mReConnect:Ljava/lang/Runnable;

.field private mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mReConnecteDialog:Landroid/app/AlertDialog;

.field private mReConnecting:Z

.field private mReConnection_Timeout_Remain_Seconds:I

.field private mReScanning:Z

.field private mReconnectForResolutionChange:Z

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private mResolution:I

.field private final mRtspSinkTimeout:Ljava/lang/Runnable;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mScanRequested:Z

.field private final mScanWifiAp:Ljava/lang/Runnable;

.field private mScore:[I

.field private mScoreIndex:I

.field private mScoreLevel:I

.field private mSinkDeviceName:Ljava/lang/String;

.field private final mSinkDiscover:Ljava/lang/Runnable;

.field private mSinkDiscoverRetryCount:I

.field private mSinkEnabled:Z

.field private mSinkIpAddress:Ljava/lang/String;

.field private mSinkIpRetryCount:I

.field private mSinkMacAddress:Ljava/lang/String;

.field private mSinkPort:I

.field private mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

.field private mSinkSurface:Landroid/view/Surface;

.field private mSoundPathDialog:Landroid/app/AlertDialog;

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStopWifiScan:Z

.field mTextView:Landroid/widget/TextView;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mToastTimerStarted:Z

.field private mUserDecided:Z

.field private mWaitConnectDialog:Landroid/app/AlertDialog;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockSink:Landroid/os/PowerManager$WakeLock;

.field private mWfdEnabled:Z

.field private mWfdEnabling:Z

.field mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

.field private mWifiApConnected:Z

.field private mWifiApFreq:I

.field private mWifiApSsid:Ljava/lang/String;

.field private mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

.field private mWifiDisplayCertMode:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayWpsConfig:I

.field private final mWifiLinkInfo:Ljava/lang/Runnable;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkId:I

.field private final mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pChannelId:I

.field private mWifiP2pEnabled:Z

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiPowerSaving:Z

.field private mWifiRate:I

.field private mWifiScore:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mGetSinkIpAddr:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/display/WifiDisplayController;)Lcom/android/internal/view/IInputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    return v0
.end method

.method static synthetic -get28(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mP2pOperFreq:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    return v0
.end method

.method static synthetic -get30(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I

    return v0
.end method

.method static synthetic -get31(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mRSSI:I

    return v0
.end method

.method static synthetic -get32(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z

    return v0
.end method

.method static synthetic -get33(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    return v0
.end method

.method static synthetic -get36(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic -get37(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic -get38(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    return v0
.end method

.method static synthetic -get40(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get41(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscover:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get42(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscoverRetryCount:I

    return v0
.end method

.method static synthetic -get43(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    return v0
.end method

.method static synthetic -get44(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get45(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpRetryCount:I

    return v0
.end method

.method static synthetic -get46(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get47(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkPort:I

    return v0
.end method

.method static synthetic -get48(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$SinkState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    return-object v0
.end method

.method static synthetic -get49(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    return v0
.end method

.method static synthetic -get50(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z

    return v0
.end method

.method static synthetic -get51(Lcom/android/server/display/WifiDisplayController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get52(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return v0
.end method

.method static synthetic -get53(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    return v0
.end method

.method static synthetic -get54(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApFreq:I

    return v0
.end method

.method static synthetic -get55(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get56(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    return v0
.end method

.method static synthetic -get57(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get58(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get59(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiNetworkId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z

    return v0
.end method

.method static synthetic -get60(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic -get61(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    return v0
.end method

.method static synthetic -get62(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic -get63(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiRate:I

    return v0
.end method

.method static synthetic -get64(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    return v0
.end method

.method static synthetic -get65()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/android/server/display/WifiDisplayController;->wfdLinkInfoPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mBlockMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    return p1
.end method

.method static synthetic -set17(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    return p1
.end method

.method static synthetic -set19(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mP2pOperFreq:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    return p1
.end method

.method static synthetic -set20(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I

    return p1
.end method

.method static synthetic -set21(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mRSSI:I

    return p1
.end method

.method static synthetic -set22(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z

    return p1
.end method

.method static synthetic -set23(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    return p1
.end method

.method static synthetic -set24(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    return p1
.end method

.method static synthetic -set25(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mReScanning:Z

    return p1
.end method

.method static synthetic -set26(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    return p1
.end method

.method static synthetic -set27(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic -set28(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set29(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscoverRetryCount:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    return p1
.end method

.method static synthetic -set30(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set31(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpRetryCount:I

    return p1
.end method

.method static synthetic -set32(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set33(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkPort:I

    return p1
.end method

.method static synthetic -set34(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set35(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    return p1
.end method

.method static synthetic -set36(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z

    return p1
.end method

.method static synthetic -set37(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    return p1
.end method

.method static synthetic -set38(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return p1
.end method

.method static synthetic -set39(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    return p1
.end method

.method static synthetic -set40(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApFreq:I

    return p1
.end method

.method static synthetic -set41(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set42(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiNetworkId:I

    return p1
.end method

.method static synthetic -set43(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiRate:I

    return p1
.end method

.method static synthetic -set44(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mBlockMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 1
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "session"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;IZ)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "flags"    # I
    .param p3, "portrait"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/WifiDisplayController;->actionAtConnected(Landroid/hardware/display/WifiDisplay;IZ)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->actionAtConnecting()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->actionAtConnectionFailed()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->chooseNo_HDMIExcludeDialog_WfdUpdate()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->chooseNo_WifiDirectExcludeDialog()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->connectRtsp()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$SinkState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->enableWifiDisplay()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$SinkState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;)V
    .locals 0
    .param p1, "event"    # Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleChannelConflictProcedure(Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;I)V
    .locals 0
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;I)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p1, "timeoutOccurred"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleLatencyProfilingChange()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handlePortraitResolutionSupportChange()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->isWifiDisplaySource(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleResolutionChange()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanResults()V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleSecureOptionChange()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleSinkP2PConnection(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->notifyApDisconnected()V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->notifyDisplayConnecting()V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    return-void
.end method

.method static synthetic -wrap4(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->retryConnection()V

    return-void
.end method

.method static synthetic -wrap42(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->revertResolutionChange()V

    return-void
.end method

.method static synthetic -wrap43(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->sendPortraitIntent()V

    return-void
.end method

.method static synthetic -wrap44(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->setSinkMiracastMode()V

    return-void
.end method

.method static synthetic -wrap45(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0
    .param p1, "dialogID"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap46(Lcom/android/server/display/WifiDisplayController;II)V
    .locals 0
    .param p1, "titleId"    # I
    .param p2, "contentId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->showNotification(II)V

    return-void
.end method

.method static synthetic -wrap47(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startChannelConflictProcedure()V

    return-void
.end method

.method static synthetic -wrap48(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startProfilingInfo()V

    return-void
.end method

.method static synthetic -wrap49(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startWaitConnection()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiApNum()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap50(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    return-void
.end method

.method static synthetic -wrap51(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->turnOffHdmi()V

    return-void
.end method

.method static synthetic -wrap52(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    return-void
.end method

.method static synthetic -wrap53(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->updateIfHdcp(I)V

    return-void
.end method

.method static synthetic -wrap54(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->updateIfSinkConnected(Z)V

    return-void
.end method

.method static synthetic -wrap55(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    return-void
.end method

.method static synthetic -wrap56(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    return-void
.end method

.method static synthetic -wrap57(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSignalLevel()V

    return-void
.end method

.method static synthetic -wrap58(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0
    .param p1, "wfd_stat"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->updateWfdStatFile(I)V

    return-void
.end method

.method static synthetic -wrap59(Lcom/android/server/display/WifiDisplayController;ZLandroid/content/Intent;)V
    .locals 0
    .param p1, "connected"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->updateWifiP2pChannelId(ZLandroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I
    .locals 1
    .param p1, "decString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->parseDec(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I
    .locals 1
    .param p1, "floatString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->parseFloat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 1
    .param p0, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    .line 2629
    const-string/jumbo v0, "sta_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}|any)\nlink_score=(.*)\nper=(.*)\nrssi=(.*)\nphy=(.*)\nrate=(.*)\ntotal_cnt=(.*)\nthreshold_cnt=(.*)\nfail_cnt=(.*)\ntimeout_cnt=(.*)\napt=(.*)\naat=(.*)\nTC_buf_full_cnt=(.*)\nTC_sta_que_len=(.*)\nTC_avg_que_len=(.*)\nTC_cur_que_len=(.*)\nflag=(.*)\nreserved0=(.*)\nreserved1=(.*)"

    .line 2628
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/WifiDisplayController;->wfdLinkInfoPattern:Ljava/util/regex/Pattern;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/WifiDisplayController$Listener;

    .prologue
    const/4 v8, 0x4

    const/4 v11, 0x1

    const/4 v7, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    .line 226
    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 287
    iput-boolean v9, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    .line 288
    iput-boolean v11, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    .line 290
    iput-boolean v9, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    .line 291
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    .line 294
    iput-boolean v9, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    .line 296
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    .line 297
    iput-boolean v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    .line 298
    iput v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApFreq:I

    .line 299
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiNetworkId:I

    .line 300
    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    .line 302
    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    .line 303
    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 307
    new-array v6, v8, [I

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    .line 308
    iput v9, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    .line 310
    iput v9, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 311
    iput v9, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 312
    iput v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    .line 313
    iput v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiRate:I

    .line 314
    iput v9, p0, Lcom/android/server/display/WifiDisplayController;->mRSSI:I

    .line 330
    iput-boolean v9, p0, Lcom/android/server/display/WifiDisplayController;->mStopWifiScan:Z

    .line 357
    iput-boolean v11, p0, Lcom/android/server/display/WifiDisplayController;->mWifiPowerSaving:Z

    .line 364
    iput v9, p0, Lcom/android/server/display/WifiDisplayController;->mP2pOperFreq:I

    .line 365
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    .line 385
    iput-boolean v9, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    .line 1726
    new-instance v6, Lcom/android/server/display/WifiDisplayController$1;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$1;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    .line 1734
    new-instance v6, Lcom/android/server/display/WifiDisplayController$2;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$2;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    .line 1746
    new-instance v6, Lcom/android/server/display/WifiDisplayController$3;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$3;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    .line 1931
    new-instance v6, Lcom/android/server/display/WifiDisplayController$4;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$4;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    .line 2649
    new-instance v6, Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$5;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    .line 2989
    new-instance v6, Lcom/android/server/display/WifiDisplayController$6;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/server/display/WifiDisplayController$6;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 3562
    new-instance v6, Lcom/android/server/display/WifiDisplayController$7;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$7;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    .line 3614
    new-instance v6, Lcom/android/server/display/WifiDisplayController$8;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$8;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    .line 3633
    new-instance v6, Lcom/android/server/display/WifiDisplayController$9;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$9;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    .line 3691
    new-instance v6, Lcom/android/server/display/WifiDisplayController$10;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$10;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayToast:Ljava/lang/Runnable;

    .line 3708
    new-instance v6, Lcom/android/server/display/WifiDisplayController$11;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$11;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayNotification:Ljava/lang/Runnable;

    .line 3756
    new-instance v6, Lcom/android/server/display/WifiDisplayController$12;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$12;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    .line 4678
    new-instance v6, Lcom/android/server/display/WifiDisplayController$13;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$13;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscover:Ljava/lang/Runnable;

    .line 4693
    new-instance v6, Lcom/android/server/display/WifiDisplayController$14;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$14;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mGetSinkIpAddr:Ljava/lang/Runnable;

    .line 4811
    new-instance v6, Lcom/android/server/display/WifiDisplayController$15;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$15;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;

    .line 4905
    new-instance v6, Lcom/android/server/display/WifiDisplayController$16;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$16;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 4919
    new-instance v6, Lcom/android/server/display/WifiDisplayController$17;

    invoke-direct {v6, p0}, Lcom/android/server/display/WifiDisplayController$17;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mEnableWifiDelay:Ljava/lang/Runnable;

    .line 429
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 430
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 431
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    .line 433
    const-string/jumbo v6, "wifip2p"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 434
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v6, p1, v7, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 439
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiLock()V

    .line 441
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 444
    const-string/jumbo v6, "mtkhdmi"

    .line 443
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/IMtkHdmiManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    .line 445
    const-string/jumbo v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    .line 448
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 449
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string/jumbo v6, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string/jumbo v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string/jumbo v6, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string/jumbo v6, "com.mediatek.mediaplayer.DRM_PLAY"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string/jumbo v6, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string/jumbo v6, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string/jumbo v6, "com.mediatek.wifi.p2p.GO.GCrequest.connect"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string/jumbo v6, "com.mediatek.wifi.p2p.OP.channel"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string/jumbo v6, "com.mediatek.wifi.p2p.freq.conflict"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6, v1, v10, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 465
    new-instance v4, Lcom/android/server/display/WifiDisplayController$18;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/android/server/display/WifiDisplayController$18;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    .line 474
    .local v4, "settingsObserver":Landroid/database/ContentObserver;
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 476
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v6, "wifi_display_on"

    .line 475
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6, v9, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 478
    const-string/jumbo v6, "wifi_display_certification_on"

    .line 477
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6, v9, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 480
    const-string/jumbo v6, "wifi_display_wps_config"

    .line 479
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6, v9, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 481
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    .line 484
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 485
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 486
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 487
    const-string/jumbo v6, "WifiDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "RealMetrics, Width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_0

    .line 489
    iput-boolean v11, p0, Lcom/android/server/display/WifiDisplayController;->mIsNeedRotate:Z

    .line 493
    :cond_0
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v6, v7}, Lcom/android/server/display/WifiDisplayController;->registerEMObserver(II)V

    .line 496
    const-string/jumbo v6, "notification"

    .line 495
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 499
    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V

    .line 500
    invoke-direct {p0, v9}, Lcom/android/server/display/WifiDisplayController;->updateWfdStatFile(I)V

    .line 504
    const-string/jumbo v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 505
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v6, "UIBC Source"

    const/16 v7, 0x1a

    invoke-virtual {v2, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 508
    const-string/jumbo v6, "statusbar"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 509
    const-string/jumbo v6, "WFD Sink"

    const/16 v7, 0x1a

    invoke-virtual {v2, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLockSink:Landroid/os/PowerManager$WakeLock;

    .line 428
    return-void
.end method

.method private actionAtConnected(Landroid/hardware/display/WifiDisplay;IZ)V
    .locals 10
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "flags"    # I
    .param p3, "portrait"    # Z

    .prologue
    .line 2311
    const-string/jumbo v5, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 2328
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.mediatek.wfd.connection"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2329
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2330
    const-string/jumbo v5, "connected"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2331
    if-eqz p1, :cond_7

    .line 2332
    const-string/jumbo v5, "device_address"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2333
    const-string/jumbo v5, "device_name"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2334
    const-string/jumbo v5, "device_alias"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2343
    :goto_0
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_8

    const/4 v2, 0x1

    .line 2344
    .local v2, "secure":Z
    :goto_1
    if-eqz v2, :cond_9

    .line 2345
    const-string/jumbo v5, "secure"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2350
    :goto_2
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "secure:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v4

    .line 2356
    .local v4, "usingUIBC":I
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_0

    .line 2357
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_a

    .line 2358
    :cond_0
    const-string/jumbo v5, "uibc_touch_mouse"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2364
    :goto_3
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2366
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    if-eqz v5, :cond_1

    .line 2367
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 2370
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiLock()V

    .line 2371
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v5, :cond_c

    .line 2372
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2373
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 2374
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "acquire wifilock"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    :cond_2
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 2385
    :goto_4
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    if-eqz v5, :cond_3

    .line 2387
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2388
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetSignalParam()V

    .line 2392
    :cond_3
    const-string/jumbo v5, "ro.mtk_wfd_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2394
    const-string/jumbo v5, "af.policy.r_submix_prio_adjust"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_d

    const/4 v3, 0x1

    .line 2395
    .local v3, "show":Z
    :goto_5
    if-eqz v3, :cond_4

    .line 2396
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->checkA2dpStatus()V

    .line 2400
    :cond_4
    invoke-direct {p0, v4, p3}, Lcom/android/server/display/WifiDisplayController;->updateChosenCapability(IZ)V

    .line 2402
    const-string/jumbo v5, "input_method"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2403
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    .line 2406
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 2408
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 2409
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    .line 2410
    const-wide/16 v8, 0x7d0

    .line 2408
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2415
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v3    # "show":Z
    :cond_5
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->notifyClearMotion(Z)V

    .line 2419
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    if-eqz v5, :cond_6

    .line 2420
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->checkIfWifiApIs11G()V

    .line 2310
    :cond_6
    return-void

    .line 2336
    .end local v2    # "secure":Z
    .end local v4    # "usingUIBC":I
    :cond_7
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", null display"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    const-string/jumbo v5, "device_address"

    const-string/jumbo v6, "00:00:00:00:00:00"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2338
    const-string/jumbo v5, "device_name"

    const-string/jumbo v6, "wifidisplay dongle"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2339
    const-string/jumbo v5, "device_alias"

    const-string/jumbo v6, "wifidisplay dongle"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2343
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "secure":Z
    goto/16 :goto_1

    .line 2348
    :cond_9
    const-string/jumbo v5, "secure"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2361
    .restart local v4    # "usingUIBC":I
    :cond_a
    const-string/jumbo v5, "uibc_touch_mouse"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 2378
    :cond_b
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "WFD connected, and WifiLock is Held!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2381
    :cond_c
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "actionAtConnected(): mWifiManager: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2382
    const-string/jumbo v7, ", mWifiLock: "

    .line 2381
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2382
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 2381
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2394
    :cond_d
    const/4 v3, 0x0

    .restart local v3    # "show":Z
    goto/16 :goto_5
.end method

.method private actionAtConnecting()V
    .locals 3

    .prologue
    .line 2515
    const-string/jumbo v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    return-void
.end method

.method private actionAtConnectionFailed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2524
    const-string/jumbo v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    if-eqz v0, :cond_0

    .line 2527
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v1, 0x8050086

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2529
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 2532
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->stopWifiScan(Z)V

    .line 2523
    return-void
.end method

.method private actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 2425
    const-string/jumbo v1, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Push2TV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2441
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mBlockMac:Ljava/lang/String;

    .line 2442
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Add block mac:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mBlockMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$35;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$35;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 2450
    const-wide/16 v4, 0x3a98

    .line 2444
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2453
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 2455
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.mediatek.wfd.connection"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2456
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2457
    const-string/jumbo v1, "connected"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2458
    if-eqz p1, :cond_5

    .line 2459
    const-string/jumbo v1, "device_address"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2460
    const-string/jumbo v1, "device_name"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2461
    const-string/jumbo v1, "device_alias"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2468
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2470
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    if-eqz v1, :cond_1

    .line 2471
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v2, 0x8050086

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2473
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 2476
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiLock()V

    .line 2477
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_7

    .line 2478
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2479
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2480
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "release wifilock"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 2491
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    if-eqz v1, :cond_3

    .line 2492
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2494
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->clearNotify()V

    .line 2497
    const-string/jumbo v1, "ro.mtk_wfd_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2500
    invoke-direct {p0, v6, v6}, Lcom/android/server/display/WifiDisplayController;->updateChosenCapability(IZ)V

    .line 2503
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopProfilingInfo()V

    .line 2508
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/server/display/WifiDisplayController;->notifyClearMotion(Z)V

    .line 2511
    invoke-direct {p0, v6}, Lcom/android/server/display/WifiDisplayController;->stopWifiScan(Z)V

    .line 2424
    return-void

    .line 2463
    :cond_5
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", null display"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    const-string/jumbo v1, "device_address"

    const-string/jumbo v2, "00:00:00:00:00:00"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2465
    const-string/jumbo v1, "device_name"

    const-string/jumbo v2, "wifidisplay dongle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2466
    const-string/jumbo v1, "device_alias"

    const-string/jumbo v2, "wifidisplay dongle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2484
    :cond_6
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "WFD disconnected, and WifiLock isn\'t Held!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2487
    :cond_7
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "actionAtDisconnected(): mWifiManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2488
    const-string/jumbo v3, ", mWifiLock: "

    .line 2487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2488
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 2487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 10
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    .line 1784
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1785
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "advertiseDisplay(): ----->\n\tdisplay: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1787
    const-string/jumbo v3, "\n\tsurface: "

    .line 1785
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1788
    const-string/jumbo v3, "\n\twidth: "

    .line 1785
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1789
    const-string/jumbo v3, "\n\theight: "

    .line 1785
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1790
    const-string/jumbo v3, "\n\tflags: "

    .line 1785
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1794
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    if-eq v0, p2, :cond_3

    .line 1799
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1800
    .local v4, "oldDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1802
    .local v2, "oldSurface":Landroid/view/Surface;
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1803
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1804
    iput p3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    .line 1805
    iput p4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    .line 1806
    iput p5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    .line 1808
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/WifiDisplayController$34;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    move v6, p5

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/WifiDisplayController$34;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1783
    .end local v2    # "oldSurface":Landroid/view/Surface;
    .end local v4    # "oldDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_2
    :goto_0
    return-void

    .line 1795
    :cond_3
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    if-ne v0, p3, :cond_1

    .line 1796
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    if-ne v0, p4, :cond_1

    .line 1797
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    if-ne v0, p5, :cond_1

    .line 1857
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1858
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "advertiseDisplay() : no need update!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private blockNotificationList(Z)V
    .locals 3
    .param p1, "block"    # Z

    .prologue
    .line 4820
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "blockNotificationList(), block:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4821
    if-eqz p1, :cond_0

    .line 4822
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 4819
    :goto_0
    return-void

    .line 4824
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private checkA2dpStatus()V
    .locals 6

    .prologue
    .line 3245
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 3247
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3248
    const-string/jumbo v3, "WifiDisplayController"

    const-string/jumbo v4, "checkA2dpStatus(), BT is not enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    return-void

    .line 3255
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_display_sound_path_do_not_remind"

    const/4 v5, -0x1

    .line 3254
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3258
    .local v2, "value":I
    const-string/jumbo v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkA2dpStatus(), value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3262
    return-void

    .line 3265
    :cond_1
    new-instance v1, Lcom/android/server/display/WifiDisplayController$36;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$36;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3289
    .local v1, "profileListener":Landroid/bluetooth/BluetoothProfile$ServiceListener;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 3242
    return-void
.end method

.method private checkIfWifiApIs11G()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 4299
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v7, "checkIfWifiApIs11G()"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiStatus()Ljava/lang/String;

    move-result-object v4

    .line 4302
    .local v4, "wifiStatus":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 4303
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "getWifiStatus() return null."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    return-void

    .line 4307
    :cond_0
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 4308
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWifiStatus() return: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    :cond_1
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4313
    .local v3, "tokens":[Ljava/lang/String;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v2, v3, v5

    .line 4314
    .local v2, "token":Ljava/lang/String;
    const-string/jumbo v8, "group_cipher="

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4315
    const-string/jumbo v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4316
    .local v1, "nameValue":[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->nameValueAssign([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4317
    .local v0, "cipher":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 4318
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "cipher is null."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4298
    .end local v0    # "cipher":Ljava/lang/String;
    .end local v1    # "nameValue":[Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 4322
    .restart local v0    # "cipher":Ljava/lang/String;
    .restart local v1    # "nameValue":[Ljava/lang/String;
    .restart local v2    # "token":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cipher is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    const-string/jumbo v5, "TKIP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "WEP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4327
    :cond_4
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 4328
    const v7, 0x8050092

    .line 4326
    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 4313
    .end local v0    # "cipher":Ljava/lang/String;
    .end local v1    # "nameValue":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private chooseNo_HDMIExcludeDialog_WfdUpdate()V
    .locals 3

    .prologue
    .line 3825
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3826
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 3824
    return-void
.end method

.method private chooseNo_WifiDirectExcludeDialog()V
    .locals 2

    .prologue
    .line 3813
    const-string/jumbo v0, "ro.mtk_wfd_sink_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_0

    .line 3814
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "[sink] callback onDisplayConnectionFailed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3815
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    .line 3812
    :goto_0
    return-void

    .line 3818
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    goto :goto_0
.end method

.method private clearNotify()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3674
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    if-eqz v0, :cond_0

    .line 3675
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3676
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    .line 3680
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    if-eqz v0, :cond_1

    .line 3682
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayNotification:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3683
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    .line 3687
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3688
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3687
    const/4 v2, 0x0

    .line 3688
    const v3, 0x8050080

    .line 3687
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3672
    return-void
.end method

.method private computeFeatureState()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 849
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-nez v0, :cond_0

    .line 850
    const-string/jumbo v0, "ro.mtk_wfd_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_0

    .line 852
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "Wifi p2p is disabled, update WIFI_DISPLAY_ON as false."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    .line 854
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 856
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 863
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_0
    return v0

    .line 860
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 864
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1068
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect: device name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_4

    .line 1081
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1080
    if-eqz v0, :cond_4

    .line 1082
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1083
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect: connecting to the same dongle already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1084
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    .line 1083
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_1
    return-void

    .line 1072
    :cond_2
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1073
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect: nothing to do, already connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1074
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    .line 1073
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_3
    return-void

    .line 1090
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5

    .line 1091
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1101
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_8

    .line 1102
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring request to connect to Wifi display because the  feature is currently disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1103
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return-void

    .line 1092
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_5

    .line 1093
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 1094
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect: nothing to do, already connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1095
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    .line 1094
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1095
    const-string/jumbo v2, " and not part way through "

    .line 1094
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1096
    const-string/jumbo v2, "connecting to a different device."

    .line 1094
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_7
    return-void

    .line 1107
    :cond_8
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    .line 1109
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 1067
    return-void
.end method

.method private connectRtsp()V
    .locals 6

    .prologue
    .line 4728
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connectRtsp(), mSinkState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4730
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkSurface:Landroid/view/Surface;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$64;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$64;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4799
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 4730
    invoke-static {v1, v2, v3, v4}, Landroid/media/RemoteDisplay;->connect(Ljava/lang/String;Landroid/view/Surface;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)Landroid/media/RemoteDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 4801
    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_RTSP:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4804
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v1, :cond_0

    .line 4805
    const/16 v0, 0x78

    .line 4807
    .local v0, "rtspTimeout":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4727
    return-void

    .line 4805
    .end local v0    # "rtspTimeout":I
    :cond_0
    const/16 v0, 0xa

    .restart local v0    # "rtspTimeout":I
    goto :goto_0
.end method

.method private static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 7
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1927
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1928
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v5

    .line 1927
    const/4 v3, 0x0

    .line 1928
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1927
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method private static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 3
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1919
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method private static describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 3
    .param p0, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 1923
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method private dialogReconnect()V
    .locals 1

    .prologue
    .line 3752
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 3751
    return-void
.end method

.method private dialogWfdHdmiConflict(I)V
    .locals 4
    .param p1, "which"    # I

    .prologue
    const/4 v3, 0x2

    .line 2616
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2617
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2618
    const-string/jumbo v2, ", which = "

    .line 2617
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    :cond_0
    if-nez p1, :cond_1

    .line 2622
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 2615
    :cond_1
    return-void
.end method

.method private disconnect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1113
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disconnect, mRemoteDisplayInterface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const-string/jumbo v0, "ro.mtk_wfd_sink_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_0

    .line 1117
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V

    .line 1118
    return-void

    .line 1122
    :cond_0
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateWfdStatFile(I)V

    .line 1125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_1

    .line 1126
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1129
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 1112
    return-void
.end method

.method private declared-synchronized disconnectWfdSink()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 4476
    :try_start_0
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", SinkState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4478
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4479
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    .line 4478
    if-eqz v0, :cond_3

    .line 4481
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mGetSinkIpAddr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4482
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscover:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4484
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopPeerDiscovery()V

    .line 4485
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "Disconnected from WFD sink (P2P)."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4487
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4489
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "[Sink] callback onDisplayDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4490
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnected()V

    .line 4492
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateIfSinkConnected(Z)V

    .line 4495
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 4520
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 4521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;

    .line 4522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;

    .line 4523
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkPort:I

    .line 4524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    .line 4525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkSurface:Landroid/view/Surface;

    .line 4528
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWaitConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4529
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConfirmConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4530
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4533
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 4534
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 4533
    if-eqz v0, :cond_2

    .line 4535
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->chooseNo_WifiDirectExcludeDialog()V

    .line 4537
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 4475
    return-void

    .line 4497
    :cond_3
    :try_start_1
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_RTSP:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4498
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    .line 4497
    if-eqz v0, :cond_1

    .line 4500
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_5

    .line 4502
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "before dispose()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4503
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    .line 4504
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "after dispose()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4507
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4509
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4510
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$61;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$61;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 4261
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4262
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4263
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecteDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4260
    return-void
.end method

.method private dismissDialogDetail(Landroid/app/AlertDialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 4268
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4269
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4267
    :cond_0
    return-void
.end method

.method private enableWifiDisplay()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2570
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mEnableWifiDelay:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2573
    const-string/jumbo v2, "ro.mtk_wfd_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2574
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 2573
    if-eqz v2, :cond_0

    .line 2574
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-eqz v2, :cond_1

    .line 2587
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z

    .line 2588
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 2568
    :goto_0
    return-void

    .line 2576
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2577
    const-string/jumbo v3, "wifi_reenable_delay"

    const-wide/16 v4, 0x1f4

    .line 2576
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2579
    .local v0, "delay":J
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Enable wifi with delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mEnableWifiDelay:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2583
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v3, 0x8050088

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    .prologue
    .line 5107
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enterCCState(),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mChannelConflictState:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5108
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mChannelConflictState:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    .line 5106
    return-void
.end method

.method private enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$SinkState;

    .prologue
    .line 4829
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enterSinkState(),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4830
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    .line 4828
    return-void
.end method

.method private getAudioFocus(Z)V
    .locals 5
    .param p1, "grab"    # Z

    .prologue
    .line 4866
    if-eqz p1, :cond_1

    .line 4867
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    .line 4868
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 4869
    const/4 v3, 0x3

    .line 4870
    const/4 v4, 0x1

    .line 4867
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 4871
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 4872
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "requestAudioFocus() FAIL !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4865
    .end local v0    # "ret":I
    :cond_0
    :goto_0
    return-void

    .line 4875
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method private getAverageScore()I
    .locals 6

    .prologue
    .line 2823
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    rem-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    aput v5, v3, v4

    .line 2824
    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    .line 2826
    const/4 v0, 0x0

    .line 2827
    .local v0, "count":I
    const/4 v2, 0x0

    .line 2828
    .local v2, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 2829
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    aget v3, v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2830
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 2831
    add-int/lit8 v0, v0, 0x1

    .line 2828
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2834
    :cond_1
    div-int v3, v2, v0

    return v3
.end method

.method private getFreqId(I)I
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 3472
    sparse-switch p1, :sswitch_data_0

    .line 3558
    const/4 v0, 0x0

    return v0

    .line 3475
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 3477
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 3479
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 3481
    :sswitch_3
    const/4 v0, 0x4

    return v0

    .line 3483
    :sswitch_4
    const/4 v0, 0x5

    return v0

    .line 3485
    :sswitch_5
    const/4 v0, 0x6

    return v0

    .line 3487
    :sswitch_6
    const/4 v0, 0x7

    return v0

    .line 3489
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 3491
    :sswitch_8
    const/16 v0, 0x9

    return v0

    .line 3493
    :sswitch_9
    const/16 v0, 0xa

    return v0

    .line 3495
    :sswitch_a
    const/16 v0, 0xb

    return v0

    .line 3497
    :sswitch_b
    const/16 v0, 0xc

    return v0

    .line 3499
    :sswitch_c
    const/16 v0, 0xd

    return v0

    .line 3501
    :sswitch_d
    const/16 v0, 0xe

    return v0

    .line 3504
    :sswitch_e
    const/16 v0, 0x24

    return v0

    .line 3506
    :sswitch_f
    const/16 v0, 0x26

    return v0

    .line 3508
    :sswitch_10
    const/16 v0, 0x28

    return v0

    .line 3510
    :sswitch_11
    const/16 v0, 0x2a

    return v0

    .line 3512
    :sswitch_12
    const/16 v0, 0x2c

    return v0

    .line 3514
    :sswitch_13
    const/16 v0, 0x2e

    return v0

    .line 3516
    :sswitch_14
    const/16 v0, 0x30

    return v0

    .line 3518
    :sswitch_15
    const/16 v0, 0x34

    return v0

    .line 3520
    :sswitch_16
    const/16 v0, 0x38

    return v0

    .line 3522
    :sswitch_17
    const/16 v0, 0x3c

    return v0

    .line 3524
    :sswitch_18
    const/16 v0, 0x40

    return v0

    .line 3526
    :sswitch_19
    const/16 v0, 0x64

    return v0

    .line 3528
    :sswitch_1a
    const/16 v0, 0x68

    return v0

    .line 3530
    :sswitch_1b
    const/16 v0, 0x6c

    return v0

    .line 3532
    :sswitch_1c
    const/16 v0, 0x70

    return v0

    .line 3534
    :sswitch_1d
    const/16 v0, 0x74

    return v0

    .line 3536
    :sswitch_1e
    const/16 v0, 0x78

    return v0

    .line 3538
    :sswitch_1f
    const/16 v0, 0x7c

    return v0

    .line 3540
    :sswitch_20
    const/16 v0, 0x80

    return v0

    .line 3542
    :sswitch_21
    const/16 v0, 0x84

    return v0

    .line 3544
    :sswitch_22
    const/16 v0, 0x88

    return v0

    .line 3546
    :sswitch_23
    const/16 v0, 0x8c

    return v0

    .line 3548
    :sswitch_24
    const/16 v0, 0x95

    return v0

    .line 3550
    :sswitch_25
    const/16 v0, 0x99

    return v0

    .line 3552
    :sswitch_26
    const/16 v0, 0x9d

    return v0

    .line 3554
    :sswitch_27
    const/16 v0, 0xa1

    return v0

    .line 3556
    :sswitch_28
    const/16 v0, 0xa5

    return v0

    .line 3472
    nop

    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_0
        0x971 -> :sswitch_1
        0x976 -> :sswitch_2
        0x97b -> :sswitch_3
        0x980 -> :sswitch_4
        0x985 -> :sswitch_5
        0x98a -> :sswitch_6
        0x98f -> :sswitch_7
        0x994 -> :sswitch_8
        0x999 -> :sswitch_9
        0x99e -> :sswitch_a
        0x9a3 -> :sswitch_b
        0x9a8 -> :sswitch_c
        0x9b4 -> :sswitch_d
        0x143c -> :sswitch_e
        0x1446 -> :sswitch_f
        0x1450 -> :sswitch_10
        0x145a -> :sswitch_11
        0x1464 -> :sswitch_12
        0x146e -> :sswitch_13
        0x1478 -> :sswitch_14
        0x148c -> :sswitch_15
        0x14a0 -> :sswitch_16
        0x14b4 -> :sswitch_17
        0x14c8 -> :sswitch_18
        0x157c -> :sswitch_19
        0x1590 -> :sswitch_1a
        0x15a4 -> :sswitch_1b
        0x15b8 -> :sswitch_1c
        0x15cc -> :sswitch_1d
        0x15e0 -> :sswitch_1e
        0x15f4 -> :sswitch_1f
        0x1608 -> :sswitch_20
        0x161c -> :sswitch_21
        0x1630 -> :sswitch_22
        0x1644 -> :sswitch_23
        0x1671 -> :sswitch_24
        0x1685 -> :sswitch_25
        0x1699 -> :sswitch_26
        0x16ad -> :sswitch_27
        0x16c1 -> :sswitch_28
    .end sparse-switch
.end method

.method private static getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;
    .locals 8
    .param p0, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    const/4 v7, 0x0

    .line 1877
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1884
    .local v3, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 1885
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1886
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1887
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_0

    .line 1888
    check-cast v0, Ljava/net/Inet4Address;

    .end local v0    # "addr":Ljava/net/InetAddress;
    return-object v0

    .line 1878
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "iface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 1879
    .local v2, "ex":Ljava/net/SocketException;
    const-string/jumbo v4, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not obtain address of network interface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1880
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    .line 1879
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1881
    return-object v7

    .line 1892
    .end local v2    # "ex":Ljava/net/SocketException;
    .restart local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v3    # "iface":Ljava/net/NetworkInterface;
    :cond_1
    const-string/jumbo v4, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not obtain address of network interface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1893
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    .line 1892
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1893
    const-string/jumbo v6, " because it had no IPv4 addresses."

    .line 1892
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    return-object v7
.end method

.method private static getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .locals 2
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1898
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string/jumbo v1, "DIRECT-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1899
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string/jumbo v1, "Broadcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1898
    if-eqz v0, :cond_0

    .line 1901
    const/16 v0, 0x216a

    return v0

    .line 1903
    :cond_0
    const/16 v0, 0x1c44

    return v0
.end method

.method private getResolutionIndex(I)I
    .locals 1
    .param p1, "settingValue"    # I

    .prologue
    const/4 v0, 0x5

    .line 3087
    packed-switch p1, :pswitch_data_0

    .line 3095
    return v0

    .line 3090
    :pswitch_0
    return v0

    .line 3093
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 3087
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSameFreqNetworkId()I
    .locals 12

    .prologue
    .line 5067
    const-string/jumbo v9, "WifiDisplayController"

    const-string/jumbo v10, "getSameFreqNetworkId()"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 5069
    .local v2, "everConnecteds":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 5071
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v6, :cond_0

    if-nez v2, :cond_1

    .line 5072
    :cond_0
    const-string/jumbo v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "results:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5073
    const-string/jumbo v11, ",everConnecteds:"

    .line 5072
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5074
    const/4 v9, -0x1

    return v9

    .line 5077
    :cond_1
    const/16 v3, -0x80

    .line 5078
    .local v3, "maxRssi":I
    const/4 v7, -0x1

    .line 5079
    .local v7, "selectedNetworkId":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "everConnected$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 5080
    .local v0, "everConnected":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 5082
    .local v8, "trim":Ljava/lang/String;
    const-string/jumbo v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SSID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",NetId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5084
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "result$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 5086
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-object v9, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 5087
    iget-object v9, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v10, "[IBSS]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 5086
    if-nez v9, :cond_3

    .line 5092
    iget-object v9, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 5093
    iget v9, v4, Landroid/net/wifi/ScanResult;->frequency:I

    iget v10, p0, Lcom/android/server/display/WifiDisplayController;->mP2pOperFreq:I

    if-ne v9, v10, :cond_3

    iget v9, v4, Landroid/net/wifi/ScanResult;->level:I

    if-le v9, v3, :cond_3

    .line 5095
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 5096
    iget v3, v4, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0

    .line 5102
    .end local v0    # "everConnected":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "result$iterator":Ljava/util/Iterator;
    .end local v8    # "trim":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Selected Network Id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5103
    return v7
.end method

.method private getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 7
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "session"    # I

    .prologue
    const/4 v1, 0x0

    .line 1564
    if-nez p1, :cond_0

    .line 1565
    return-object v1

    .line 1567
    :cond_0
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 1568
    .local v6, "addr":Ljava/net/Inet4Address;
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 1569
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 1571
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1572
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v4

    .line 1573
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move v2, p2

    .line 1568
    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    .local v0, "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1575
    const-string/jumbo v1, "WifiDisplayController"

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_1
    return-object v0

    .line 1569
    .end local v0    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1573
    :cond_3
    const-string/jumbo v5, ""

    goto :goto_1
.end method

.method private getWifiApNum()I
    .locals 11

    .prologue
    .line 3411
    const/4 v1, 0x0

    .line 3412
    .local v1, "count":I
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 3413
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3415
    .local v0, "SSIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    .line 3416
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "result$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 3418
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 3419
    iget-object v8, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v9, "[IBSS]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 3418
    if-nez v8, :cond_0

    .line 3423
    iget v8, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v8}, Lcom/android/server/display/WifiDisplayController;->getFreqId(I)I

    move-result v8

    iget v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    if-ne v8, v9, :cond_0

    .line 3425
    const/4 v2, 0x0

    .line 3427
    .local v2, "duplicate":Z
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "ssid$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3428
    .local v6, "ssid":Ljava/lang/String;
    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3429
    const/4 v2, 0x1

    .line 3434
    .end local v6    # "ssid":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_0

    .line 3435
    sget-boolean v8, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 3436
    const-string/jumbo v8, "WifiDisplayController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AP SSID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3438
    :cond_3
    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3445
    .end local v2    # "duplicate":Z
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "result$iterator":Ljava/util/Iterator;
    .end local v7    # "ssid$iterator":Ljava/util/Iterator;
    :cond_4
    return v1
.end method

.method private getWifiLock()V
    .locals 3

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 2285
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2287
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 2288
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v1, "WFD_WifiLock"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 2283
    :cond_1
    return-void
.end method

.method private handleChannelConflictProcedure(Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;)V
    .locals 7
    .param p1, "event"    # Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4981
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4982
    :cond_0
    return-void

    .line 4984
    :cond_1
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleChannelConflictProcedure(), evt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ccState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mChannelConflictState:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4986
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_DISCONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4987
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_AP_DISCONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    if-ne p1, v1, :cond_3

    .line 4989
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v6, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setFreqConflictExResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4990
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_WFD_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    .line 4979
    :cond_2
    :goto_0
    return-void

    .line 4993
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v5, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setFreqConflictExResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4994
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    goto :goto_0

    .line 4996
    :cond_4
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_WFD_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4997
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_WFD_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    if-ne p1, v1, :cond_5

    .line 4999
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connect AP, mNetworkId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5001
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 5003
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    goto :goto_0

    .line 5007
    :cond_5
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    goto :goto_0

    .line 5009
    :cond_6
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5010
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_AP_CONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    if-ne p1, v1, :cond_8

    .line 5012
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayApToast:Z

    if-eqz v1, :cond_7

    .line 5014
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 5016
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 5017
    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    aput-object v3, v2, v5

    const v3, 0x8050100

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5015
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5021
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_7
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    goto :goto_0

    .line 5024
    :cond_8
    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    goto :goto_0
.end method

.method private handleConnectionChanged(Landroid/net/NetworkInfo;I)V
    .locals 4
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "reason"    # I

    .prologue
    const/4 v3, 0x0

    .line 1601
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleConnectionChanged(), mWfdEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1603
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1604
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v0, :cond_1

    .line 1605
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$32;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$32;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 1716
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_2

    .line 1717
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    .line 1718
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    if-eqz v0, :cond_2

    .line 1719
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "Wifi P2p connection is connected but it does not wifidisplay trigger"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 1599
    :cond_2
    return-void

    .line 1673
    :cond_3
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1676
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5

    .line 1677
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 1683
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_6

    .line 1684
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    .line 1685
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z

    if-eqz v0, :cond_6

    .line 1687
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    if-eqz v0, :cond_6

    .line 1688
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "requestStartScan() for resolution change."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReScanning:Z

    .line 1692
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 1695
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    .line 1696
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1701
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    .line 1704
    const/4 v0, 0x7

    if-ne v0, p2, :cond_7

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_7

    .line 1705
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reconnect procedure start, ReConnectDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->dialogReconnect()V

    .line 1711
    :cond_7
    sget-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_WFD_P2P_DISCONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->handleChannelConflictProcedure(Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;)V

    goto/16 :goto_0
.end method

.method private handleConnectionFailure(Z)V
    .locals 6
    .param p1, "timeoutOccurred"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1760
    const-string/jumbo v2, "WifiDisplayController"

    const-string/jumbo v3, "Wifi display connection failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_0

    .line 1763
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    if-lez v2, :cond_2

    .line 1764
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1765
    .local v0, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$33;

    invoke-direct {v3, p0, v0}, Lcom/android/server/display/WifiDisplayController$33;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1775
    if-eqz p1, :cond_1

    :goto_0
    int-to-long v4, v1

    .line 1765
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1759
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    :goto_1
    return-void

    .line 1775
    .restart local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    const/16 v1, 0x1f4

    goto :goto_0

    .line 1777
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    goto :goto_1
.end method

.method private handleLatencyProfilingChange()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 3168
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_display_latency_profiling"

    const/4 v3, 0x2

    .line 3167
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3170
    .local v0, "value":I
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-ne v0, v1, :cond_0

    .line 3171
    return-void

    .line 3174
    :cond_0
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleLatencyProfilingChange(), connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    .line 3177
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-eq v1, v4, :cond_1

    .line 3178
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3182
    :cond_1
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-eqz v1, :cond_2

    .line 3183
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 3184
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 3182
    if-eqz v1, :cond_4

    .line 3186
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startProfilingInfo()V

    .line 3165
    :goto_0
    return-void

    .line 3184
    :cond_3
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-eq v1, v4, :cond_2

    .line 3188
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopProfilingInfo()V

    goto :goto_0
.end method

.method private handleLevelChange()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3644
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    if-gez v0, :cond_2

    .line 3647
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    if-nez v0, :cond_0

    .line 3649
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 3650
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayToast:Ljava/lang/Runnable;

    .line 3651
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 3649
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3652
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    .line 3656
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    if-nez v0, :cond_1

    .line 3658
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 3659
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayNotification:Ljava/lang/Runnable;

    .line 3660
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 3658
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3661
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    .line 3642
    :cond_1
    :goto_0
    return-void

    .line 3667
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->clearNotify()V

    goto :goto_0
.end method

.method private handlePeersChanged()V
    .locals 0

    .prologue
    .line 1594
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    .line 1591
    return-void
.end method

.method private handlePortraitResolutionSupportChange()V
    .locals 4

    .prologue
    .line 3045
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_display_portrait_resolution"

    const/4 v3, 0x0

    .line 3044
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3046
    .local v0, "value":I
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlePortraitResolutionSupportChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    const-string/jumbo v1, "media.wfd.portrait"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3042
    return-void
.end method

.method private handleResolutionChange()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3103
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_display_max_resolution"

    .line 3102
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3105
    .local v3, "r":I
    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    if-ne v3, v4, :cond_0

    .line 3106
    return-void

    .line 3109
    :cond_0
    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    .line 3110
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    .line 3112
    const-string/jumbo v4, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleResolutionChange(), resolution:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v1

    .line 3116
    .local v1, "idxModified":I
    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v2

    .line 3118
    .local v2, "idxOriginal":I
    if-ne v1, v2, :cond_1

    .line 3119
    return-void

    .line 3123
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_display_change_resolution_remind"

    .line 3122
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 3126
    .local v0, "doNotRemind":Z
    :goto_0
    const-string/jumbo v4, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", doNotRemind:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    const-string/jumbo v4, "media.wfd.video-format"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3132
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v4, :cond_3

    .line 3133
    :cond_2
    if-eqz v0, :cond_5

    .line 3134
    const-string/jumbo v4, "WifiDisplayController"

    const-string/jumbo v5, "-- reconnect for resolution change --"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 3138
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    .line 3099
    :cond_3
    :goto_1
    return-void

    .line 3122
    .end local v0    # "doNotRemind":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "doNotRemind":Z
    goto :goto_0

    .line 3141
    :cond_5
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    goto :goto_1
.end method

.method private handleScanFinished()V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$27;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$27;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1041
    return-void
.end method

.method private handleScanResults()V
    .locals 6

    .prologue
    .line 1018
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1019
    .local v0, "count":I
    sget-object v4, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/WifiDisplay;

    .line 1020
    .local v2, "displays":[Landroid/hardware/display/WifiDisplay;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1021
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1022
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1023
    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1020
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1026
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$26;

    invoke-direct {v5, p0, v0, v2}, Lcom/android/server/display/WifiDisplayController$26;-><init>(Lcom/android/server/display/WifiDisplayController;I[Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1017
    return-void
.end method

.method private handleScanStarted()V
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$25;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$25;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1007
    return-void
.end method

.method private handleSecureOptionChange()V
    .locals 4

    .prologue
    .line 3073
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_display_security_option"

    const/4 v3, 0x1

    .line 3072
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3075
    .local v0, "secureOption":I
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    if-ne v0, v1, :cond_0

    .line 3076
    return-void

    .line 3079
    :cond_0
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSecureOptionChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    .line 3083
    const-string/jumbo v1, "ro.sf.security.image"

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    return-void
.end method

.method private handleSinkP2PConnection(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 4541
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSinkP2PConnection(), sinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4543
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4546
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4547
    return-void

    .line 4550
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$62;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$62;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 4540
    :cond_1
    :goto_0
    return-void

    .line 4608
    :cond_2
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4609
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    .line 4608
    if-eqz v0, :cond_1

    .line 4612
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V

    goto :goto_0
.end method

.method private handleStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1582
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    .line 1583
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 1585
    if-nez p1, :cond_0

    .line 1586
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->dismissDialog()V

    .line 1580
    :cond_0
    return-void
.end method

.method private hideLatencyPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3228
    const-string/jumbo v1, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3233
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3232
    check-cast v0, Landroid/view/WindowManager;

    .line 3235
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3236
    iput-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    .line 3239
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    iput-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 3227
    return-void
.end method

.method private initPortraitResolutionSupport()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3034
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3035
    const-string/jumbo v1, "wifi_display_portrait_resolution"

    .line 3033
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3039
    const-string/jumbo v0, "media.wfd.portrait"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    return-void
.end method

.method private initSecureOption()V
    .locals 3

    .prologue
    .line 3062
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3063
    const-string/jumbo v1, "wifi_display_security_option"

    .line 3064
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    .line 3061
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3067
    const-string/jumbo v0, "wlan.wfd.security.image"

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    return-void
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2174
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "InjectKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 2176
    const/4 v1, 0x2

    .line 2175
    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2173
    return-void
.end method

.method private injectPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2180
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2181
    const-string/jumbo v0, "Input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "InjectPointerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 2183
    const/4 v1, 0x2

    .line 2182
    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2179
    return-void
.end method

.method private isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    .prologue
    .line 5112
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mChannelConflictState:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPrimarySinkDeviceType(I)Z
    .locals 2
    .param p0, "deviceType"    # I

    .prologue
    const/4 v0, 0x1

    .line 1914
    if-eq p0, v0, :cond_0

    .line 1915
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 1914
    :cond_0
    :goto_0
    return v0

    .line 1915
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$SinkState;

    .prologue
    .line 4834
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSourceDeviceType(I)Z
    .locals 3
    .param p1, "deviceType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4640
    if-eqz p1, :cond_0

    .line 4641
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 4640
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 4641
    goto :goto_0
.end method

.method private static isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1907
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    .line 1907
    if-eqz v0, :cond_0

    .line 1909
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    .line 1907
    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->isPrimarySinkDeviceType(I)Z

    move-result v0

    .line 1907
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiDisplaySource(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 4618
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v1, :cond_1

    .line 4619
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v1

    .line 4618
    if-eqz v1, :cond_1

    .line 4620
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v1

    .line 4618
    if-eqz v1, :cond_1

    .line 4621
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->isSourceDeviceType(I)Z

    move-result v0

    .line 4623
    :goto_0
    if-nez v0, :cond_0

    .line 4624
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "This is not WFD source device !!!!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4626
    :cond_0
    return v0

    .line 4618
    :cond_1
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_0
.end method

.method private loadDebugLevel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2551
    const-string/jumbo v1, "wlan.wfd.controller.debug"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2552
    .local v0, "debugLevel":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2553
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", debugLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2563
    sput-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    .line 2550
    :goto_0
    return-void

    .line 2557
    :pswitch_0
    sput-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    goto :goto_0

    .line 2560
    :pswitch_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    goto :goto_0

    .line 2555
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadWfdWpsSetup()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2536
    const-string/jumbo v1, "wlan.wfd.wps.setup"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2537
    .local v0, "wfdWpsSetup":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2538
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", wfdWpsSetup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2546
    return v4

    .line 2542
    :pswitch_0
    return v5

    .line 2544
    :pswitch_1
    return v4

    .line 2540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nameValueAssign([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "nameValue"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4338
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v1, v0, :cond_1

    .line 4339
    :cond_0
    return-object v2

    .line 4341
    :cond_1
    const/4 v0, 0x1

    aget-object v0, p1, v0

    return-object v0
.end method

.method private notifyApDisconnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4889
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "notifyApDisconnected()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 4894
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 4895
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x8050102

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4893
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4900
    const v1, 0x8050103

    .line 4901
    const v2, 0x8050104

    .line 4899
    invoke-direct {p0, v1, v2}, Lcom/android/server/display/WifiDisplayController;->showNotification(II)V

    .line 4888
    return-void
.end method

.method private notifyClearMotion(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 4275
    const-string/jumbo v1, "ro.mtk_clearmotion_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4279
    const-string/jumbo v2, "sys.display.clearMotion.dimmed"

    .line 4280
    if-eqz p1, :cond_1

    const-string/jumbo v1, "1"

    .line 4278
    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4283
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.mediatek.clearmotion.DIMMED_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4284
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4286
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4274
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 4280
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method private notifyDisplayConnecting()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 4631
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    .line 4632
    const-string/jumbo v1, "Temp address"

    const-string/jumbo v2, "WiFi Display Device"

    const/4 v3, 0x0

    .line 4633
    const/4 v6, 0x0

    move v5, v4

    .line 4631
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 4635
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "[sink] callback onDisplayConnecting()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v1, v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V

    .line 4629
    return-void
.end method

.method private parseDec(Ljava/lang/String;)I
    .locals 5
    .param p1, "decString"    # Ljava/lang/String;

    .prologue
    .line 2696
    const/4 v1, 0x0

    .line 2699
    .local v1, "num":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2703
    :goto_0
    return v1

    .line 2700
    :catch_0
    move-exception v0

    .line 2701
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse dec string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseFloat(Ljava/lang/String;)I
    .locals 5
    .param p1, "floatString"    # Ljava/lang/String;

    .prologue
    .line 2707
    const/4 v1, 0x0

    .line 2710
    .local v1, "num":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v1, v2

    .line 2714
    :goto_0
    return v1

    .line 2711
    :catch_0
    move-exception v0

    .line 2712
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse float string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private popupDialog(Landroid/app/AlertDialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 4247
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 4248
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4250
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 4246
    return-void
.end method

.method private prepareDialog(I)V
    .locals 13
    .param p1, "dialogID"    # I

    .prologue
    .line 3841
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 3843
    .local v3, "mResource":Landroid/content/res/Resources;
    const/4 v10, 0x1

    if-ne v10, p1, :cond_1

    .line 3845
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3846
    const v11, 0x8050076

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3845
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3847
    const v11, 0x10403d8

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$37;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$37;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3845
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3873
    const v11, 0x10403a4

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$38;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$38;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3845
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3883
    new-instance v11, Lcom/android/server/display/WifiDisplayController$39;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$39;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3845
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3893
    new-instance v11, Lcom/android/server/display/WifiDisplayController$40;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$40;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3845
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    .line 3905
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    .line 3840
    :cond_0
    :goto_0
    return-void

    .line 3907
    :cond_1
    const/4 v10, 0x2

    if-ne v10, p1, :cond_2

    .line 3909
    const v10, 0x8050073

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->reviseHDMIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3912
    .local v5, "messageString":Ljava/lang/String;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3914
    const v11, 0x10403d8

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$41;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$41;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3912
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3928
    const v11, 0x10403a4

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$42;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$42;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3912
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3938
    new-instance v11, Lcom/android/server/display/WifiDisplayController$43;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$43;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3912
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3948
    new-instance v11, Lcom/android/server/display/WifiDisplayController$44;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$44;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3912
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

    .line 3960
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 3962
    .end local v5    # "messageString":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x4

    if-ne v10, p1, :cond_3

    .line 3964
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3965
    const v11, 0x8050084

    .line 3964
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3966
    const v11, 0x8050085

    .line 3964
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3967
    const v11, 0x10403d8

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$45;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$45;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3964
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3982
    const v11, 0x10403a4

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$46;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$46;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3964
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 3990
    new-instance v11, Lcom/android/server/display/WifiDisplayController$47;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$47;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3964
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecteDialog:Landroid/app/AlertDialog;

    .line 3999
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecteDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 4001
    :cond_3
    const/4 v10, 0x5

    if-ne v10, p1, :cond_4

    .line 4004
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4005
    .local v0, "adbInflater":Landroid/view/LayoutInflater;
    const v10, 0x807000b

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4006
    .local v2, "checkboxLayout":Landroid/view/View;
    const v10, 0x811003f

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 4007
    .local v1, "checkbox":Landroid/widget/CheckBox;
    const v10, 0x8050091

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setText(I)V

    .line 4010
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4012
    const v11, 0x8050090

    .line 4010
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4013
    const v11, 0x10403d8

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$48;

    invoke-direct {v12, p0, v1}, Lcom/android/server/display/WifiDisplayController$48;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/widget/CheckBox;)V

    .line 4010
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4045
    const/high16 v11, 0x1040000

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$49;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$49;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4010
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4056
    new-instance v11, Lcom/android/server/display/WifiDisplayController$50;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$50;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4010
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mChangeResolutionDialog:Landroid/app/AlertDialog;

    .line 4068
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mChangeResolutionDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 4070
    .end local v0    # "adbInflater":Landroid/view/LayoutInflater;
    .end local v1    # "checkbox":Landroid/widget/CheckBox;
    .end local v2    # "checkboxLayout":Landroid/view/View;
    :cond_4
    const/4 v10, 0x6

    if-ne v10, p1, :cond_6

    .line 4073
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4074
    .restart local v0    # "adbInflater":Landroid/view/LayoutInflater;
    const v10, 0x807000b

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4075
    .restart local v2    # "checkboxLayout":Landroid/view/View;
    const v10, 0x811003f

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 4076
    .restart local v1    # "checkbox":Landroid/widget/CheckBox;
    const v10, 0x8050091

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setText(I)V

    .line 4080
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "wifi_display_sound_path_do_not_remind"

    const/4 v12, -0x1

    .line 4079
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 4081
    .local v9, "value":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 4082
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4086
    :cond_5
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4088
    const v11, 0x8050089

    .line 4086
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4089
    const v11, 0x10403d8

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$51;

    invoke-direct {v12, p0, v1}, Lcom/android/server/display/WifiDisplayController$51;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/widget/CheckBox;)V

    .line 4086
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4111
    new-instance v11, Lcom/android/server/display/WifiDisplayController$52;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$52;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4086
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mSoundPathDialog:Landroid/app/AlertDialog;

    .line 4118
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mSoundPathDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 4120
    .end local v0    # "adbInflater":Landroid/view/LayoutInflater;
    .end local v1    # "checkbox":Landroid/widget/CheckBox;
    .end local v2    # "checkboxLayout":Landroid/view/View;
    .end local v9    # "value":I
    :cond_6
    const/4 v10, 0x7

    if-ne v10, p1, :cond_7

    .line 4123
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4124
    .restart local v0    # "adbInflater":Landroid/view/LayoutInflater;
    const v10, 0x807001e

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 4125
    .local v7, "progressLayout":Landroid/view/View;
    const v10, 0x8110077

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 4126
    .local v6, "progressBar":Landroid/widget/ProgressBar;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 4127
    const v10, 0x8110078

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 4128
    .local v8, "progressText":Landroid/widget/TextView;
    const v10, 0x8050094

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 4131
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4133
    const/high16 v11, 0x1040000

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$53;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$53;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4131
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4143
    new-instance v11, Lcom/android/server/display/WifiDisplayController$54;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$54;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4131
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWaitConnectDialog:Landroid/app/AlertDialog;

    .line 4153
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWaitConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 4155
    .end local v0    # "adbInflater":Landroid/view/LayoutInflater;
    .end local v6    # "progressBar":Landroid/widget/ProgressBar;
    .end local v7    # "progressLayout":Landroid/view/View;
    .end local v8    # "progressText":Landroid/widget/TextView;
    :cond_7
    const/16 v10, 0x8

    if-ne v10, p1, :cond_8

    .line 4157
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWaitConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4159
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4160
    const-string/jumbo v11, " "

    .line 4159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4161
    const v11, 0x8050095

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4164
    .local v4, "message":Ljava/lang/String;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4166
    const v11, 0x10403a3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$55;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$55;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4164
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4184
    const v11, 0x10403a4

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$56;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$56;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4164
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4195
    new-instance v11, Lcom/android/server/display/WifiDisplayController$57;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$57;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4164
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mConfirmConnectDialog:Landroid/app/AlertDialog;

    .line 4206
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mConfirmConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 4207
    .end local v4    # "message":Ljava/lang/String;
    :cond_8
    const/16 v10, 0x9

    if-ne v10, p1, :cond_0

    .line 4210
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4211
    .restart local v0    # "adbInflater":Landroid/view/LayoutInflater;
    const v10, 0x807001e

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 4212
    .restart local v7    # "progressLayout":Landroid/view/View;
    const v10, 0x8110077

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 4213
    .restart local v6    # "progressBar":Landroid/widget/ProgressBar;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 4214
    const v10, 0x8110078

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 4215
    .restart local v8    # "progressText":Landroid/widget/TextView;
    const v10, 0x8050096

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 4218
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4220
    const/high16 v11, 0x1040000

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$58;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$58;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4218
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 4230
    new-instance v11, Lcom/android/server/display/WifiDisplayController$59;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$59;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 4218
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;

    .line 4240
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0
.end method

.method private readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 6
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1869
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1870
    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    .line 1871
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    move-object v0, p0

    move-object v1, p1

    .line 1869
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1868
    return-void
.end method

.method private registerEMObserver(II)V
    .locals 10
    .param p1, "widthPixels"    # I
    .param p2, "heightPixels"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2886
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80b0003

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    .line 2887
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80b0004

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    .line 2888
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80b0005

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    .line 2889
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80b0006

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    .line 2890
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80b0007

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    .line 2891
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x80b0008

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    .line 2893
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerEMObserver(), tt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2894
    const-string/jumbo v6, ",nt:"

    .line 2893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2894
    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    .line 2893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2895
    const-string/jumbo v6, ",res:"

    .line 2893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2895
    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    .line 2893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2896
    const-string/jumbo v6, ",ps:"

    .line 2893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2896
    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    .line 2893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2897
    const-string/jumbo v6, ",psd:"

    .line 2893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2897
    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    .line 2893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2898
    const-string/jumbo v6, ",so:"

    .line 2893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2898
    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    .line 2893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_display_display_toast_time"

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    .line 2901
    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2904
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_display_notification_time"

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    .line 2903
    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2906
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_display_sqc_info_on"

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    if-eqz v2, :cond_2

    move v2, v3

    .line 2905
    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2908
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_display_qe_on"

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    if-eqz v2, :cond_3

    move v2, v3

    .line 2907
    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2910
    const-string/jumbo v2, "ro.mtk_wfd_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2914
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_display_max_resolution"

    .line 2913
    invoke-static {v2, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2917
    .local v0, "r":I
    if-ne v0, v7, :cond_6

    .line 2918
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    if-ltz v2, :cond_4

    .line 2919
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    if-gt v2, v9, :cond_4

    .line 2920
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    .line 2939
    :goto_2
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v1

    .line 2940
    .local v1, "resolutionIndex":I
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mResolution:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", resolutionIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    const-string/jumbo v2, "media.wfd.video-format"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    .end local v0    # "r":I
    .end local v1    # "resolutionIndex":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_display_auto_channel_selection"

    iget-boolean v6, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    if-eqz v6, :cond_8

    .line 2945
    :goto_3
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2948
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_max_resolution"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    .line 2947
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2950
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_power_saving_option"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    .line 2949
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2952
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_power_saving_delay"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    .line 2951
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2955
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_latency_profiling"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    .line 2954
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2957
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_chosen_capability"

    const-string/jumbo v5, ""

    .line 2956
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2959
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->initPortraitResolutionSupport()V

    .line 2961
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetLatencyInfo()V

    .line 2962
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->initSecureOption()V

    .line 2965
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2966
    const-string/jumbo v3, "wifi_display_display_toast_time"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 2965
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2967
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2968
    const-string/jumbo v3, "wifi_display_notification_time"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 2967
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2969
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2970
    const-string/jumbo v3, "wifi_display_sqc_info_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 2969
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2971
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2972
    const-string/jumbo v3, "wifi_display_qe_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 2971
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2974
    const-string/jumbo v2, "ro.mtk_wfd_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2975
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2976
    const-string/jumbo v3, "wifi_display_auto_channel_selection"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 2975
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2977
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2978
    const-string/jumbo v3, "wifi_display_max_resolution"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 2977
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2979
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2980
    const-string/jumbo v3, "wifi_display_latency_profiling"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 2979
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2981
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2982
    const-string/jumbo v3, "wifi_display_security_option"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 2981
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2984
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2985
    const-string/jumbo v3, "wifi_display_portrait_resolution"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 2984
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2883
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 2906
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 2908
    goto/16 :goto_1

    .line 2923
    .restart local v0    # "r":I
    :cond_4
    const/16 v2, 0x438

    if-lt p1, v2, :cond_5

    const/16 v2, 0x780

    if-lt p2, v2, :cond_5

    .line 2924
    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .line 2926
    :cond_5
    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .line 2931
    :cond_6
    if-ltz v0, :cond_7

    if-gt v0, v9, :cond_7

    .line 2933
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .line 2935
    :cond_7
    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .end local v0    # "r":I
    :cond_8
    move v3, v4

    .line 2946
    goto/16 :goto_3
.end method

.method private reportFeatureState()V
    .locals 4

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->computeFeatureState()I

    move-result v0

    .line 838
    .local v0, "featureState":I
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFeatureState(), featureState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$21;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 836
    return-void
.end method

.method private requestPeers()V
    .locals 3

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$24;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$24;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 963
    return-void
.end method

.method private resetLatencyInfo()V
    .locals 3

    .prologue
    .line 3404
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_wifi_info"

    const-string/jumbo v2, "0,0,0,0"

    .line 3403
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3406
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_wfd_latency"

    const-string/jumbo v2, "0,0,0"

    .line 3405
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3401
    return-void
.end method

.method private resetReconnectVariable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3803
    const-string/jumbo v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mReScanning:Z

    .line 3806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3807
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    .line 3808
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    .line 3809
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3802
    return-void
.end method

.method private resetSignalParam()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2870
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2871
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2873
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    .line 2874
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2875
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 2874
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2878
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    .line 2879
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    .line 2869
    return-void
.end method

.method private resetWfdInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 720
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 721
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    .line 722
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 723
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setUibcSupported(Z)V

    .line 724
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setContentProtected(Z)V

    .line 719
    return-void
.end method

.method private retryConnection()V
    .locals 2

    .prologue
    .line 1136
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1137
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 1132
    return-void
.end method

.method private revertResolutionChange()V
    .locals 5

    .prologue
    .line 3149
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "revertResolutionChange(), resolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v0

    .line 3152
    .local v0, "idxModified":I
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v1

    .line 3155
    .local v1, "idxOriginal":I
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    const-string/jumbo v2, "media.wfd.video-format"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    .line 3162
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_max_resolution"

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    .line 3161
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3147
    return-void
.end method

.method private reviseHDMIString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 4351
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    if-eqz v1, :cond_1

    .line 4352
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v1}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getDisplayType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v1}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getDisplayType()I

    move-result v1

    .line 4353
    const/4 v2, 0x1

    .line 4352
    if-ne v1, v2, :cond_1

    .line 4355
    :cond_0
    const-string/jumbo v1, "HDMI"

    const-string/jumbo v2, "MHL"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4357
    :catch_0
    move-exception v0

    .line 4358
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "HdmiManager.getDisplayType() RemoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object p1
.end method

.method private sendKeyEvent(II)V
    .locals 16
    .param p1, "keyCode"    # I
    .param p2, "isDown"    # I

    .prologue
    .line 2157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2158
    .local v4, "now":J
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 2159
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/display/WifiDisplayController;->translateAsciiToKeyCode(I)I

    move-result v9

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2160
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x101

    move-wide v6, v4

    .line 2159
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/display/WifiDisplayController;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 2156
    :goto_0
    return-void

    .line 2162
    :cond_0
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/display/WifiDisplayController;->translateAsciiToKeyCode(I)I

    move-result v9

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2163
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x101

    move-wide v6, v4

    .line 2162
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/display/WifiDisplayController;->injectKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private sendPortraitIntent()V
    .locals 3

    .prologue
    .line 3054
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "sendPortraitIntent()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.mediatek.wfd.portrait"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3056
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3057
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3053
    return-void
.end method

.method private sendTap(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2169
    .local v0, "now":J
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 2170
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 2167
    return-void
.end method

.method private setAutoChannelSelection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3294
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoChannelSelection(), auto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    if-eqz v0, :cond_0

    .line 3297
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setP2pAutoChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 3292
    :goto_0
    return-void

    .line 3299
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setP2pAutoChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private setSinkMiracastMode()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 4880
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSinkMiracastMode(), freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4881
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    if-eqz v0, :cond_0

    .line 4882
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApFreq:I

    invoke-virtual {v0, v3, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(II)V

    .line 4879
    :goto_0
    return-void

    .line 4884
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 1
    .param p1, "dialogID"    # I

    .prologue
    .line 4255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z

    .line 4256
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->prepareDialog(I)V

    .line 4254
    return-void
.end method

.method private showLatencyPanel()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 3194
    const-string/jumbo v3, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3197
    .local v0, "adbInflater":Landroid/view/LayoutInflater;
    const v3, 0x8070025

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    .line 3200
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    const v4, 0x811009b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 3201
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3202
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 3203
    const-string/jumbo v4, "AP:\nS:\nR:\nAL:\n"

    .line 3202
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3210
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 3211
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7f2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3213
    const/16 v3, 0x8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3215
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3216
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3217
    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3218
    const v3, 0x3f333333    # 0.7f

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3222
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3221
    check-cast v2, Landroid/view/WindowManager;

    .line 3224
    .local v2, "windowManager":Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3193
    return-void
.end method

.method private showNotification(II)V
    .locals 7
    .param p1, "titleId"    # I
    .param p2, "contentId"    # I

    .prologue
    const/4 v6, 0x0

    .line 3724
    const-string/jumbo v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showNotification(), titleId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3730
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3727
    invoke-virtual {v3, v6, p1, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3733
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3735
    .local v1, "mResource":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 3736
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3735
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3737
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3735
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3738
    const v4, 0x8020074

    .line 3735
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3739
    const/4 v4, 0x1

    .line 3735
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3741
    .local v0, "builder":Landroid/app/Notification$Builder;
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 3742
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3741
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v2

    .line 3744
    .local v2, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 3747
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3744
    invoke-virtual {v3, v6, p1, v2, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 3722
    return-void
.end method

.method private startChannelConflictProcedure()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4939
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startChannelConflictProcedure(), mChannelConflictState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mChannelConflictState:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mWifiApConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4941
    sget-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4943
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "State is wrong !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4944
    return-void

    .line 4947
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    if-nez v0, :cond_1

    .line 4948
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "No WiFi AP Connected. Wrong !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4949
    return-void

    .line 4952
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->wifiApHasSameFreq()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4955
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiNetworkId:I

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    .line 4956
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Same Network Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4957
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayApToast:Z

    .line 4960
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 4961
    sget-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_DISCONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    .line 4938
    :goto_0
    return-void

    .line 4964
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getSameFreqNetworkId()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    .line 4966
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 4968
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setFreqConflictExResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 4970
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayApToast:Z

    .line 4973
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 4974
    sget-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_DISCONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    goto :goto_0
.end method

.method private startProfilingInfo()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x64

    .line 3373
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3374
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->showLatencyPanel()V

    .line 3379
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3380
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3382
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3383
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3371
    return-void

    .line 3376
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->hideLatencyPanel()V

    goto :goto_0
.end method

.method private startWaitConnection()V
    .locals 4

    .prologue
    .line 4645
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mSinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscoverRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4646
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$63;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$63;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4644
    return-void
.end method

.method private stopPeerDiscovery()V
    .locals 3

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$23;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$23;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 945
    return-void
.end method

.method private stopProfilingInfo()V
    .locals 2

    .prologue
    .line 3389
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->hideLatencyPanel()V

    .line 3392
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3393
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3394
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3397
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetLatencyInfo()V

    .line 3386
    return-void
.end method

.method private stopWifiScan(Z)V
    .locals 3
    .param p1, "ifStop"    # Z

    .prologue
    .line 2303
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mStopWifiScan:Z

    if-eq v0, p1, :cond_0

    .line 2304
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopWifiScan(),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->stopReconnectAndScan(ZI)Z

    .line 2306
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mStopWifiScan:Z

    .line 2302
    :cond_0
    return-void
.end method

.method private translateAsciiToKeyCode(I)I
    .locals 5
    .param p1, "ascii"    # I

    .prologue
    const/4 v4, 0x0

    .line 2268
    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    .line 2269
    add-int/lit8 v1, p1, -0x29

    return v1

    .line 2270
    :cond_0
    const/16 v1, 0x41

    if-lt p1, v1, :cond_1

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_1

    .line 2271
    add-int/lit8 v1, p1, -0x24

    return v1

    .line 2273
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->translateSpecialCode(I)I

    move-result v0

    .line 2274
    .local v0, "newKeyCode":I
    if-lez v0, :cond_2

    .line 2275
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "special code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    return v0

    .line 2278
    :cond_2
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "translateAsciiToKeyCode: ascii is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    return v4
.end method

.method private translateSpecialCode(I)I
    .locals 1
    .param p1, "ascii"    # I

    .prologue
    .line 2188
    const/4 v0, 0x0

    .line 2189
    .local v0, "newKeyCode":I
    sparse-switch p1, :sswitch_data_0

    .line 2264
    :goto_0
    return v0

    .line 2191
    :sswitch_0
    const/16 v0, 0x43

    .line 2192
    goto :goto_0

    .line 2194
    :sswitch_1
    const/16 v0, 0x42

    .line 2195
    goto :goto_0

    .line 2197
    :sswitch_2
    const/16 v0, 0x3b

    .line 2198
    goto :goto_0

    .line 2200
    :sswitch_3
    const/16 v0, 0x73

    .line 2201
    goto :goto_0

    .line 2203
    :sswitch_4
    const/16 v0, 0x3e

    .line 2204
    goto :goto_0

    .line 2206
    :sswitch_5
    const/16 v0, 0x42

    .line 2207
    goto :goto_0

    .line 2209
    :sswitch_6
    const/16 v0, 0x38

    .line 2210
    goto :goto_0

    .line 2212
    :sswitch_7
    const/16 v0, 0x37

    .line 2213
    goto :goto_0

    .line 2215
    :sswitch_8
    const/16 v0, 0x4c

    .line 2216
    goto :goto_0

    .line 2218
    :sswitch_9
    const/16 v0, 0x49

    .line 2219
    goto :goto_0

    .line 2221
    :sswitch_a
    const/16 v0, 0x5c

    .line 2222
    goto :goto_0

    .line 2224
    :sswitch_b
    const/16 v0, 0x5d

    .line 2225
    goto :goto_0

    .line 2227
    :sswitch_c
    const/16 v0, 0x13

    .line 2228
    goto :goto_0

    .line 2230
    :sswitch_d
    const/16 v0, 0x14

    .line 2231
    goto :goto_0

    .line 2233
    :sswitch_e
    const/16 v0, 0x16

    .line 2234
    goto :goto_0

    .line 2236
    :sswitch_f
    const/16 v0, 0x15

    .line 2237
    goto :goto_0

    .line 2239
    :sswitch_10
    const/16 v0, 0x6f

    .line 2240
    goto :goto_0

    .line 2242
    :sswitch_11
    const/16 v0, 0x47

    .line 2243
    goto :goto_0

    .line 2245
    :sswitch_12
    const/16 v0, 0x48

    .line 2246
    goto :goto_0

    .line 2248
    :sswitch_13
    const/16 v0, 0x44

    .line 2249
    goto :goto_0

    .line 2251
    :sswitch_14
    const/16 v0, 0x45

    .line 2252
    goto :goto_0

    .line 2254
    :sswitch_15
    const/16 v0, 0x46

    .line 2255
    goto :goto_0

    .line 2257
    :sswitch_16
    const/16 v0, 0x4a

    .line 2258
    goto :goto_0

    .line 2260
    :sswitch_17
    const/16 v0, 0x4b

    .line 2261
    goto :goto_0

    .line 2189
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_5
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x14 -> :sswitch_3
        0x1b -> :sswitch_10
        0x20 -> :sswitch_4
        0x21 -> :sswitch_b
        0x22 -> :sswitch_a
        0x25 -> :sswitch_c
        0x26 -> :sswitch_d
        0x27 -> :sswitch_e
        0x28 -> :sswitch_f
        0xba -> :sswitch_16
        0xbb -> :sswitch_15
        0xbc -> :sswitch_7
        0xbd -> :sswitch_14
        0xbe -> :sswitch_6
        0xbf -> :sswitch_8
        0xc0 -> :sswitch_13
        0xdb -> :sswitch_11
        0xdc -> :sswitch_9
        0xdd -> :sswitch_12
        0xde -> :sswitch_17
    .end sparse-switch
.end method

.method private tryDiscoverPeers()V
    .locals 4

    .prologue
    .line 908
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "tryDiscoverPeers()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$22;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$22;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 933
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 936
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReScanning:Z

    if-eqz v0, :cond_1

    .line 937
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "mReScanning is true. post mDiscoverPeers every 2s"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 907
    :goto_0
    return-void

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private turnOffHdmi()V
    .locals 4

    .prologue
    .line 3831
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    if-eqz v1, :cond_0

    .line 3833
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/mediatek/hdmi/IMtkHdmiManager;->enableHdmi(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3830
    :cond_0
    :goto_0
    return-void

    .line 3834
    :catch_0
    move-exception v0

    .line 3835
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hdmi manager RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unadvertiseDisplay()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    .line 1865
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1864
    return-void
.end method

.method private updateChosenCapability(IZ)V
    .locals 9
    .param p1, "usingUIBC"    # I
    .param p2, "portrait"    # Z

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    .line 3305
    const-string/jumbo v0, ""

    .line 3307
    .local v0, "capability":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-eqz v5, :cond_0

    .line 3309
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v4

    .line 3310
    .local v4, "usingPCMAudio":I
    if-ne v4, v7, :cond_1

    .line 3311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "LPCM(2 ch),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3318
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v1

    .line 3319
    .local v1, "isCBPOnly":I
    if-ne v1, v7, :cond_2

    .line 3320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "H.264(CBP level 3.1),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3327
    :goto_1
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v2

    .line 3328
    .local v2, "resolutionIndex":I
    const/4 v5, 0x5

    if-ne v2, v5, :cond_4

    .line 3329
    if-eqz p2, :cond_3

    .line 3330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "720x1280 30p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3345
    :goto_2
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v8}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v3

    .line 3346
    .local v3, "usingHDCP":I
    if-ne v3, v7, :cond_7

    .line 3347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "with HDCP,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3353
    :goto_3
    if-eqz p1, :cond_8

    .line 3354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "with UIBC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3362
    .end local v1    # "isCBPOnly":I
    .end local v2    # "resolutionIndex":I
    .end local v3    # "usingHDCP":I
    .end local v4    # "usingPCMAudio":I
    :cond_0
    :goto_4
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateChosenCapability(), connected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", capability:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", portrait:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3367
    const-string/jumbo v6, "wifi_display_chosen_capability"

    .line 3365
    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3303
    return-void

    .line 3314
    .restart local v4    # "usingPCMAudio":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "AAC(2 ch),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3323
    .restart local v1    # "isCBPOnly":I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "H.264(CHP level 4.1),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 3332
    .restart local v2    # "resolutionIndex":I
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "1280x720 30p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3334
    :cond_4
    if-ne v2, v8, :cond_6

    .line 3335
    if-eqz p2, :cond_5

    .line 3336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "1080x1920 30p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3338
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "1920x1080 30p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3341
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "640x480 60p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3350
    .restart local v3    # "usingHDCP":I
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "without HDCP,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 3357
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "without UIBC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method

.method private updateConnection()V
    .locals 19

    .prologue
    .line 1148
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_1

    .line 1156
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 1157
    .local v13, "localInterface":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v12, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1159
    .local v12, "localDeviceName":Ljava/lang/String;
    :goto_2
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stopped listening for RTSP connection on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1160
    const-string/jumbo v5, " from Wifi display : "

    .line 1159
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    .line 1163
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    .line 1164
    const-string/jumbo v2, "WifiDisplayController"

    const-string/jumbo v4, "\tbefore dispose() ---> "

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v2}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnecting()V

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v2}, Landroid/media/RemoteDisplay;->dispose()V

    .line 1167
    const-string/jumbo v2, "WifiDisplayController"

    const-string/jumbo v4, "\t<--- after dispose()"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1170
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 1171
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 1175
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1181
    .end local v12    # "localDeviceName":Ljava/lang/String;
    .end local v13    # "localInterface":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_5

    .line 1182
    return-void

    .line 1155
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 1156
    :cond_2
    const-string/jumbo v13, "localhost"

    .restart local v13    # "localInterface":Ljava/lang/String;
    goto/16 :goto_1

    .line 1158
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v12, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .restart local v12    # "localDeviceName":Ljava/lang/String;
    goto/16 :goto_2

    .end local v12    # "localDeviceName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v12, "N/A"

    .restart local v12    # "localDeviceName":Ljava/lang/String;
    goto/16 :goto_2

    .line 1184
    .end local v12    # "localDeviceName":Ljava/lang/String;
    .end local v13    # "localInterface":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_6

    .line 1185
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Disconnecting from Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1187
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1188
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1190
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1192
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1193
    .local v15, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$28;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Lcom/android/server/display/WifiDisplayController$28;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1219
    return-void

    .line 1224
    .end local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_7

    .line 1225
    return-void

    .line 1227
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_8

    .line 1228
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Canceling connection to Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1230
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1232
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1236
    .restart local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$29;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1267
    return-void

    .line 1272
    .end local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_a

    .line 1273
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v2, :cond_9

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 1276
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1277
    return-void

    .line 1281
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_10

    .line 1282
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Connecting to Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1285
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v9}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1286
    .local v9, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    new-instance v18, Landroid/net/wifi/WpsInfo;

    invoke-direct/range {v18 .. v18}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 1287
    .local v18, "wps":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_b

    .line 1288
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1301
    :goto_3
    move-object/from16 v0, v18

    iput-object v0, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v2, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1306
    const-string/jumbo v2, "wfd.source.go_intent"

    .line 1307
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1305
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1308
    .local v10, "goIntent":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 1310
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Source go_intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 1313
    .local v3, "display":Landroid/hardware/display/WifiDisplay;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1316
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->setAutoChannelSelection()V

    .line 1319
    sget-object v2, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/WifiDisplayController;->enterCCState(Lcom/android/server/display/WifiDisplayController$ChannelConflictState;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 1325
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/WifiDisplayController;->stopWifiScan(Z)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1329
    .local v14, "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$30;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/android/server/display/WifiDisplayController$30;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v9, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1362
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z

    .line 1365
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1366
    .restart local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v16

    .line 1367
    .local v16, "port":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "127.0.0.1:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1368
    .local v11, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 1371
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Listening for RTSP connection on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1372
    const-string/jumbo v5, " from Wifi display: "

    .line 1371
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1372
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1371
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1373
    const-string/jumbo v5, " , Speed-Up rtsp setup, DRM Content isPlaying = "

    .line 1371
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1373
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    .line 1371
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    new-instance v2, Lcom/android/server/display/WifiDisplayController$31;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/android/server/display/WifiDisplayController$31;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1375
    invoke-static {v11, v2, v4, v5}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1476
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v2, :cond_f

    .line 1477
    const/16 v17, 0x78

    .line 1479
    .local v17, "rtspTimeout":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    move/from16 v0, v17

    mul-int/lit16 v5, v0, 0x3e8

    int-to-long v6, v5

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1481
    return-void

    .line 1289
    .end local v3    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v10    # "goIntent":Ljava/lang/String;
    .end local v11    # "iface":Ljava/lang/String;
    .end local v14    # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v16    # "port":I
    .end local v17    # "rtspTimeout":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1290
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_3

    .line 1291
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1293
    const/4 v2, 0x2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_3

    .line 1294
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1296
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_3

    .line 1299
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_3

    .line 1477
    .restart local v3    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v10    # "goIntent":Ljava/lang/String;
    .restart local v11    # "iface":Ljava/lang/String;
    .restart local v14    # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v16    # "port":I
    :cond_f
    const/16 v17, 0x4b

    .restart local v17    # "rtspTimeout":I
    goto :goto_4

    .line 1485
    .end local v3    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v9    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v10    # "goIntent":Ljava/lang/String;
    .end local v11    # "iface":Ljava/lang/String;
    .end local v14    # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v16    # "port":I
    .end local v17    # "rtspTimeout":I
    .end local v18    # "wps":Landroid/net/wifi/WpsInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-nez v2, :cond_11

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v8

    .line 1487
    .local v8, "addr":Ljava/net/Inet4Address;
    if-nez v8, :cond_11

    .line 1488
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to get local interface address for communicating with Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1489
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1488
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    .line 1491
    return-void

    .line 1145
    .end local v8    # "addr":Ljava/net/Inet4Address;
    :cond_11
    return-void
.end method

.method private updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1053
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1054
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1055
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1056
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDesiredDevice: new information "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1057
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    .line 1056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1060
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_1

    .line 1061
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1060
    if-eqz v1, :cond_1

    .line 1062
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V

    .line 1050
    :cond_1
    return-void
.end method

.method private updateIfHdcp(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 2293
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2294
    .local v0, "secure":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2295
    const-string/jumbo v1, "media.wfd.hdcp"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    :goto_1
    return-void

    .line 2293
    .end local v0    # "secure":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "secure":Z
    goto :goto_0

    .line 2298
    :cond_1
    const-string/jumbo v1, "media.wfd.hdcp"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateIfSinkConnected(Z)V
    .locals 6
    .param p1, "connected"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4838
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-ne v0, p1, :cond_0

    .line 4839
    return-void

    .line 4841
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 4844
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->blockNotificationList(Z)V

    .line 4847
    const-string/jumbo v3, "WifiDisplayController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set session available as "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4848
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 4849
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1, v2, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4853
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLockSink:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 4854
    if-eqz p1, :cond_4

    .line 4855
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLockSink:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4862
    :cond_1
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->getAudioFocus(Z)V

    .line 4837
    return-void

    :cond_2
    move v0, v2

    .line 4847
    goto :goto_0

    :cond_3
    move v1, v2

    .line 4848
    goto :goto_1

    .line 4857
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLockSink:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2
.end method

.method private updateScanState()V
    .locals 4

    .prologue
    .line 868
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScanState(), mSinkEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 869
    const-string/jumbo v2, "mDiscoverPeersInProgress:"

    .line 868
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 869
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 868
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const-string/jumbo v0, "ro.mtk_wfd_sink_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_0

    .line 873
    return-void

    .line 876
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_3

    .line 878
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-nez v0, :cond_5

    .line 880
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "Starting Wifi display scan."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 882
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanStarted()V

    .line 883
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    .line 867
    :cond_2
    :goto_0
    return-void

    .line 877
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReScanning:Z

    .line 876
    if-nez v0, :cond_1

    .line 890
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-eqz v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 897
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_2

    .line 898
    :cond_4
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "Stopping Wifi display scan."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 900
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopPeerDiscovery()V

    .line 901
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V

    goto :goto_0

    .line 886
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 887
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private updateScoreLevel(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    const/4 v1, 0x0

    .line 2837
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 2838
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-gez v0, :cond_0

    .line 2839
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2841
    :cond_0
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2836
    :goto_0
    return-void

    .line 2843
    :cond_1
    const/16 v0, 0x50

    if-lt p1, v0, :cond_3

    .line 2844
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-gez v0, :cond_2

    .line 2845
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2847
    :cond_2
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0

    .line 2849
    :cond_3
    const/16 v0, 0x1e

    if-lt p1, v0, :cond_5

    .line 2850
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-lez v0, :cond_4

    .line 2851
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2853
    :cond_4
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0

    .line 2855
    :cond_5
    const/16 v0, 0xa

    if-lt p1, v0, :cond_7

    .line 2856
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-lez v0, :cond_6

    .line 2857
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2859
    :cond_6
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0

    .line 2862
    :cond_7
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-lez v0, :cond_8

    .line 2863
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2865
    :cond_8
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 516
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 518
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "wifi_display_on"

    .line 517
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 520
    const-string/jumbo v2, "wifi_display_certification_on"

    .line 519
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    .line 522
    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 523
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v2, :cond_0

    .line 525
    const-string/jumbo v2, "wifi_display_wps_config"

    .line 524
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->loadDebugLevel()V

    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, "HDMIOn":Z
    const-string/jumbo v2, "ro.mtk_hdmi_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    const-string/jumbo v2, "hdmi_enable_status"

    .line 532
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    .line 535
    :cond_1
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 536
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->dialogWfdHdmiConflict(I)V

    .line 515
    :goto_3
    return-void

    .end local v0    # "HDMIOn":Z
    :cond_2
    move v2, v4

    .line 517
    goto :goto_0

    :cond_3
    move v2, v4

    .line 519
    goto :goto_1

    .line 532
    .restart local v0    # "HDMIOn":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 540
    :cond_5
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->enableWifiDisplay()V

    goto :goto_3
.end method

.method private updateSignalLevel()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x5

    const/4 v7, 0x0

    .line 2721
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getAverageScore()I

    move-result v0

    .line 2724
    .local v0, "avarageScore":I
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateScoreLevel(I)V

    .line 2726
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "W:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",L:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2729
    .local v4, "message":Ljava/lang/String;
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_7

    .line 2732
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_1

    .line 2733
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 2734
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "setWfdLevel():+2"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2738
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2741
    :cond_1
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2783
    :cond_2
    :goto_0
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    if-lez v5, :cond_3

    .line 2784
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2785
    :cond_3
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    if-ge v5, v8, :cond_4

    .line 2786
    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2788
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2791
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleLevelChange()V

    .line 2793
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_10

    .line 2794
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v7}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v2

    .line 2795
    .local v2, "expectedBitRate":I
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v10}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v1

    .line 2796
    .local v1, "currentBitRate":I
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v3

    .line 2798
    .local v3, "fluencyRate":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",ER:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2799
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",CR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2801
    if-eq v3, v9, :cond_5

    .line 2802
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",FR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2805
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    if-eqz v5, :cond_6

    .line 2806
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2811
    :cond_6
    const-string/jumbo v5, "WifiDisplayController"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    .end local v1    # "currentBitRate":I
    .end local v2    # "expectedBitRate":I
    .end local v3    # "fluencyRate":I
    :goto_1
    return-void

    .line 2743
    :cond_7
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_a

    .line 2746
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_9

    .line 2747
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 2748
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "setWfdLevel():+1"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    :cond_8
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v10}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2751
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2754
    :cond_9
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto/16 :goto_0

    .line 2757
    :cond_a
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, -0x6

    if-gt v5, v6, :cond_d

    .line 2760
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_c

    .line 2761
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_b

    .line 2762
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "setWfdLevel():-2"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    :cond_b
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2765
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2767
    :cond_c
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto/16 :goto_0

    .line 2769
    :cond_d
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, -0x4

    if-gt v5, v6, :cond_2

    .line 2772
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_f

    .line 2773
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_e

    .line 2774
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "setWfdLevel():-1"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    :cond_e
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v9}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2777
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2779
    :cond_f
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto/16 :goto_0

    .line 2815
    :cond_10
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "mRemoteDisplay is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateWfdEnableState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 669
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWfdEnableState(), mWifiDisplayOnSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mWifiP2pEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-eqz v0, :cond_3

    .line 673
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    .line 677
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-eqz v0, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 680
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V

    .line 683
    const-string/jumbo v0, "ro.mtk_wfd_hdcp_tx_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 684
    const-string/jumbo v0, "ro.mtk_dx_hdcp_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 683
    if-eqz v0, :cond_0

    .line 685
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->updateWifiPowerSavingMode(Z)V

    goto :goto_0

    .line 692
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V

    .line 695
    const-string/jumbo v0, "ro.mtk_wfd_hdcp_tx_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 696
    const-string/jumbo v0, "ro.mtk_dx_hdcp_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 695
    if-eqz v0, :cond_5

    .line 697
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->updateWifiPowerSavingMode(Z)V

    .line 702
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 703
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    .line 704
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    .line 705
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 706
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 710
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->dismissDialog()V

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mBlockMac:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateWfdInfo(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 729
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWfdInfo(), enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",mWfdEnabling:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetWfdInfo()V

    .line 735
    if-nez p1, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$19;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$19;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 727
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 758
    const-string/jumbo v1, "ro.mtk_wfd_sink_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v1, :cond_4

    .line 759
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    .line 764
    :goto_1
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "Set session available as true"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 766
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/16 v2, 0x1c44

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setControlPort(I)V

    .line 767
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setMaxThroughput(I)V

    .line 770
    const-string/jumbo v1, "ro.mtk_wfd_sink_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v1, :cond_6

    .line 771
    const-string/jumbo v1, "ro.mtk_wfd_sink_uibc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 772
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setUibcSupported(Z)V

    .line 781
    :goto_2
    const-string/jumbo v1, "ro.mtk_wfd_hdcp_tx_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 782
    const-string/jumbo v1, "ro.mtk_dx_hdcp_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 781
    if-nez v1, :cond_1

    .line 783
    const-string/jumbo v1, "ro.mtk_wfd_hdcp_rx_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 781
    if-eqz v1, :cond_2

    .line 784
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setContentProtected(Z)V

    .line 787
    :cond_2
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HDCP Tx support? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ro.mtk_wfd_hdcp_tx_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v0, "ro.mtk_dx_hdcp_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", our wfd info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HDCP Rx support? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.mtk_wfd_hdcp_rx_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", our wfd info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-eqz v0, :cond_7

    .line 792
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$20;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$20;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 761
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    goto/16 :goto_1

    .line 774
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setUibcSupported(Z)V

    goto/16 :goto_2

    .line 777
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setUibcSupported(Z)V

    goto/16 :goto_2

    .line 828
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0
.end method

.method private updateWfdStatFile(I)V
    .locals 0
    .param p1, "wfd_stat"    # I

    .prologue
    .line 2592
    return-void
.end method

.method private updateWifiP2pChannelId(ZLandroid/content/Intent;)V
    .locals 5
    .param p1, "connected"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3450
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v2, :cond_1

    .line 3452
    :cond_0
    const-string/jumbo v2, "p2pGroupInfo"

    .line 3451
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 3454
    .local v1, "wifiP2pGroup":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v0

    .line 3456
    .local v0, "freq":I
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->getFreqId(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    .line 3458
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWifiP2pChannelId(), freq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    .end local v0    # "freq":I
    .end local v1    # "wifiP2pGroup":Landroid/net/wifi/p2p/WifiP2pGroup;
    :goto_0
    return-void

    .line 3462
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    .line 3464
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWifiP2pChannelId(), id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateWifiPowerSavingMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 4291
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiPowerSaving:Z

    if-eq v0, p1, :cond_0

    .line 4292
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiPowerSaving:Z

    .line 4293
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPowerSavingMode():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiPowerSaving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setPowerSavingMode(Z)V

    .line 4290
    :cond_0
    return-void
.end method

.method private wifiApHasSameFreq()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5030
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "wifiApHasSameFreq()"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5032
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 5033
    :cond_0
    const-string/jumbo v5, "WifiDisplayController"

    const-string/jumbo v6, "mWifiApSsid is invalid !!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5034
    return v7

    .line 5038
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApSsid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5040
    .local v0, "apSsid":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 5042
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v1, 0x0

    .line 5043
    .local v1, "found":Z
    if-eqz v4, :cond_3

    .line 5044
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "result$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 5045
    .local v2, "result":Landroid/net/wifi/ScanResult;
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SSID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5046
    const-string/jumbo v7, ",Freq:"

    .line 5045
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5046
    iget v7, v2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 5045
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5047
    const-string/jumbo v7, ",Level:"

    .line 5045
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5047
    iget v7, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 5045
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5048
    const-string/jumbo v7, ",BSSID:"

    .line 5045
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5048
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 5045
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5050
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 5051
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v6, "[IBSS]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 5050
    if-nez v5, :cond_2

    .line 5056
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v2, Landroid/net/wifi/ScanResult;->frequency:I

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mP2pOperFreq:I

    if-ne v5, v6, :cond_2

    .line 5057
    const/4 v1, 0x1

    .line 5062
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v3    # "result$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AP SSID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", sameFreq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5063
    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWifiDisplayOnSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWifiP2pEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWfdEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWfdEnabling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNetworkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScanRequested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDiscoverPeersInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDesiredDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDisconnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCancelingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectedDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectionRetriesLeft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDisplayInterface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDisplayConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplaySurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplayWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplayHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplayFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBackupShowTouchVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mBackupShowTouchVal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFast_NeedFastRtsp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mFast_NeedFastRtsp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFast_DesiredMac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mFast_DesiredMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsNeedRotate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsNeedRotate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsConnected_OtherP2p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsConnecting_P2p_Rtsp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsWFDConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDRMContent_Mediaplayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPlayerID_Mediaplayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAvailableWifiDisplayPeers: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 581
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    return-void
.end method

.method public getIfSinkEnabled()Z
    .locals 4

    .prologue
    .line 4366
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4368
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    return v0
.end method

.method public requestConnect(Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 609
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", address = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 618
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 619
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v2, "mAvailableWifiDisplayPeers dump:"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "device$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 623
    .local v6, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 624
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_2
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    if-eqz v0, :cond_3

    .line 630
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v2, "OtherP2P is connected! Show dialog!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 632
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    const/4 v2, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 634
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 635
    return-void

    .line 639
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 608
    .end local v6    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4
    return-void
.end method

.method public requestDisconnect()V
    .locals 3

    .prologue
    .line 660
    const-string/jumbo v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 665
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 659
    return-void
.end method

.method public requestEnableSink(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 4372
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",Connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", option = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.mtk_wfd_sink_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", WfdEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4374
    const-string/jumbo v0, "ro.mtk_wfd_sink_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4375
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-eqz v0, :cond_1

    .line 4376
    :cond_0
    return-void

    .line 4380
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    if-eqz v0, :cond_2

    .line 4381
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "OtherP2P is connected! Only set variable. Ignore !"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    .line 4383
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4384
    return-void

    .line 4388
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->stopWifiScan(Z)V

    .line 4391
    if-eqz p1, :cond_3

    .line 4392
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestStopScan()V

    .line 4395
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    .line 4398
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V

    .line 4401
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-nez v0, :cond_5

    .line 4402
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestStartScan()V

    .line 4371
    :cond_4
    :goto_0
    return-void

    .line 4406
    :cond_5
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    goto :goto_0
.end method

.method public requestPause()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    .line 647
    :cond_0
    return-void
.end method

.method public requestResume()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    .line 653
    :cond_0
    return-void
.end method

.method public requestStartScan()V
    .locals 4

    .prologue
    .line 586
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mSinkEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string/jumbo v0, "ro.mtk_wfd_sink_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_0

    .line 590
    return-void

    .line 593
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-nez v0, :cond_1

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 596
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 585
    :cond_1
    return-void
.end method

.method public requestStopScan()V
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz v0, :cond_0

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 603
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 600
    :cond_0
    return-void
.end method

.method public requestSuspendDisplay(ZLandroid/view/Surface;)V
    .locals 4
    .param p1, "suspend"    # Z
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 4449
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",suspend = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkSurface:Landroid/view/Surface;

    .line 4452
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4453
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 4454
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, p1, p2}, Landroid/media/RemoteDisplay;->suspendDisplay(ZLandroid/view/Surface;)V

    .line 4457
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->blockNotificationList(Z)V

    .line 4448
    :goto_1
    return-void

    .line 4457
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4460
    :cond_2
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "State is wrong !!!, SinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestWaitConnection(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 4412
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mSinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4414
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4415
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "State is wrong! Ignore the request !"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4416
    return-void

    .line 4419
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    if-eqz v0, :cond_1

    .line 4420
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "OtherP2P is connected! Show dialog!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4422
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->notifyDisplayConnecting()V

    .line 4423
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 4424
    return-void

    .line 4427
    :cond_1
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkSurface:Landroid/view/Surface;

    .line 4428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 4431
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDiscoverRetryCount:I

    .line 4432
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startWaitConnection()V

    .line 4434
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->setSinkMiracastMode()V

    .line 4436
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4438
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$60;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$60;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4411
    return-void
.end method

.method public sendUibcInputEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 4467
    const-string/jumbo v0, "ro.mtk_wfd_sink_uibc_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_0

    .line 4468
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 4469
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, p1}, Landroid/media/RemoteDisplay;->sendUibcEvent(Ljava/lang/String;)V

    .line 4466
    :cond_0
    return-void
.end method
