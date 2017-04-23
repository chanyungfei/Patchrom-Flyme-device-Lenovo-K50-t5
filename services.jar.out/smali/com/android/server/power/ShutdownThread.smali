.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;,
        Lcom/android/server/power/ShutdownThread$1;
    }
.end annotation


# static fields
.field private static final ACTION_PRE_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_PRE_SHUTDOWN"

.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final FACTORY_DEVICE_PROVISIONED:Ljava/lang/String; = "is_factory_device_provisioned"

.field private static final IPO_SHUTDOWN_FLOW:I = 0x1

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MIN_SHUTDOWN_ANIMATION_PLAY_TIME:I = 0x1388

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final NORMAL_SHUTDOWN_FLOW:I = 0x0

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNCRYPT_STATUS_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_status"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static bConfirmForAnimation:Z = false

.field private static bPlayaudio:Z = false

.field private static beginAnimationTime:J = 0x0L

.field private static final changeToNormalMessage:Ljava/lang/String; = "change shutdown flow from ipo to normal"

.field private static command:Ljava/lang/String; = null

.field private static endAnimationTime:J = 0x0L

.field private static mDelayDim:Ljava/lang/Runnable; = null

.field private static mEnableAnimating:Z = false

.field private static final mEnableAnimatingSync:Ljava/lang/Object;

.field private static mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt; = null

.field private static mReboot:Z = false

.field private static mRebootReason:Ljava/lang/String; = null

.field private static mRebootSafeMode:Z = false

.field private static mRebootUpdate:Z = false

.field private static mShutdownFlow:I = 0x0

.field private static mShutdownThreadSync:Ljava/lang/Object; = null

.field private static final mSpew:Z = true

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShutdownManager:Lcom/android/internal/app/ShutdownManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    return v0
.end method

.method static synthetic -get7()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get8()Lcom/android/server/power/ShutdownThread;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic -get9()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    return p0
.end method

.method static synthetic -set2(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->recoverSystemProvivion(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 136
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 138
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 139
    const/4 v1, 0x4

    .line 138
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 140
    const/16 v1, 0xd

    .line 138
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    .line 166
    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 167
    sput-wide v4, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 168
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    .line 169
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    .line 172
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    .line 495
    new-instance v0, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    .line 97
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 156
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->getInstance()Lcom/android/internal/app/ShutdownManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    .line 189
    return-void
.end method

.method public static EnableAnimating(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 193
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 192
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 613
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 614
    :try_start_0
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_0

    .line 615
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v8, "Shutdown sequence already running, returning."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 616
    return-void

    .line 618
    :cond_0
    const/4 v6, 0x1

    :try_start_1
    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 624
    const/4 v2, 0x0

    .line 625
    .local v2, "isSilentShutdown":Z
    const-string/jumbo v6, "persist.sys.shutdown_silently"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 626
    const/4 v2, 0x1

    .line 637
    .end local v2    # "isSilentShutdown":Z
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 639
    new-instance v3, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v3}, Lcom/android/server/power/ShutdownThread$8;-><init>()V

    .line 644
    .local v3, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    const-string/jumbo v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 645
    .local v0, "audioMgr":Landroid/media/AudioManager;
    invoke-virtual {v0, v3, v13, v12}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 648
    .end local v0    # "audioMgr":Landroid/media/AudioManager;
    .end local v3    # "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :cond_2
    const-string/jumbo v6, "sys.power.startup_mode"

    const-string/jumbo v7, "poweroff"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string/jumbo v6, "service.bootanim.done"

    const-string/jumbo v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string/jumbo v6, "service.bootanim.exit"

    const-string/jumbo v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    if-eqz v2, :cond_8

    .line 656
    const-string/jumbo v6, "ctl.start"

    const-string/jumbo v7, "bootanim:shut nomp3"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :goto_1
    const-string/jumbo v6, "recovery"

    sget-object v7, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 663
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 664
    .local v4, "pd":Landroid/app/ProgressDialog;
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 665
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v7, Lcom/android/server/power/ShutdownThread$9;

    invoke-direct {v7}, Lcom/android/server/power/ShutdownThread$9;-><init>()V

    iput-object v7, v6, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 732
    .end local v4    # "pd":Landroid/app/ProgressDialog;
    :cond_3
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v6, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 733
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 736
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v10, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 738
    :try_start_2
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v7, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 739
    const-string/jumbo v8, "ShutdownThread-cpu"

    const/4 v9, 0x1

    .line 738
    invoke-virtual {v7, v9, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 740
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 741
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 748
    :goto_2
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v10, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 749
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 751
    :try_start_3
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v7, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 752
    const-string/jumbo v8, "ShutdownThread-screen"

    const/16 v9, 0x1a

    .line 751
    invoke-virtual {v7, v9, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 753
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 754
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 761
    :cond_4
    :goto_3
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v6}, Lcom/android/server/power/ShutdownThread;->getState()Ljava/lang/Thread$State;

    move-result-object v6

    sget-object v7, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v6, v7, :cond_5

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v6}, Lcom/android/server/power/ShutdownThread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 762
    :cond_5
    sget v6, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v6, v12, :cond_9

    .line 763
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "ShutdownThread exists already"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkShutdownFlow()V

    .line 765
    sget-object v7, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v7

    .line 766
    :try_start_4
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v7

    .line 612
    :goto_4
    return-void

    .line 613
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 627
    .restart local v2    # "isSilentShutdown":Z
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 628
    const v7, 0x1120053

    .line 627
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 630
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 631
    .local v5, "phone":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_7

    .line 632
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v2

    .local v2, "isSilentShutdown":Z
    goto/16 :goto_0

    .line 634
    .local v2, "isSilentShutdown":Z
    :cond_7
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "Coundn\'t connect to phone service"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 658
    .end local v2    # "isSilentShutdown":Z
    .end local v5    # "phone":Landroid/telephony/TelephonyManager;
    :cond_8
    const-string/jumbo v6, "ctl.start"

    const-string/jumbo v7, "bootanim:shut mp3"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 742
    :catch_0
    move-exception v1

    .line 743
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "No permission to acquire wake lock"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v10, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_2

    .line 755
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 756
    .restart local v1    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "No permission to acquire wake lock"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v10, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    .line 765
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 769
    :cond_9
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "Thread state is not normal! froce to shutdown!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 772
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v13, v11}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 774
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    goto :goto_4

    .line 777
    :cond_a
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v6}, Lcom/android/server/power/ShutdownThread;->start()V

    goto :goto_4
.end method

.method private static bootanimCust()V
    .locals 8

    .prologue
    .line 784
    const-string/jumbo v4, "service.shutanim.running"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "set service.shutanim.running to 0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v2, 0x0

    .line 789
    .local v2, "isRotaionEnabled":Z
    :try_start_0
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 790
    const-string/jumbo v5, "accelerometer_rotation"

    const/4 v6, 0x1

    .line 789
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 791
    :goto_0
    if-eqz v2, :cond_1

    .line 793
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 792
    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 794
    .local v3, "wm":Landroid/view/IWindowManager;
    if-eqz v3, :cond_0

    .line 795
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 797
    :cond_0
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 798
    const-string/jumbo v5, "accelerometer_rotation"

    const/4 v6, 0x0

    .line 797
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 799
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 800
    const-string/jumbo v5, "accelerometer_rotation_restore"

    const/4 v6, 0x1

    .line 799
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 811
    :try_start_1
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 810
    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 812
    .restart local v3    # "wm":Landroid/view/IWindowManager;
    if-eqz v3, :cond_2

    .line 813
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 819
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startBootAnimation()V

    .line 781
    return-void

    .line 789
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 802
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 803
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "check Rotation: sInstance.mContext object is null when get Rotation"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 815
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 816
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method private static checkEncryptionCondition()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1497
    const-string/jumbo v6, "vold.encrypt_progress"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1498
    .local v1, "encryptionProgress":Ljava/lang/String;
    const-string/jumbo v6, "100"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1503
    :cond_0
    const-string/jumbo v6, "ro.crypto.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "encrypted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1504
    return v4

    .line 1499
    :cond_1
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v6, "encryption in progress"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    return v5

    .line 1507
    :cond_2
    :try_start_0
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1506
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1508
    .local v2, "service":Landroid/os/storage/IMountService;
    if-eqz v2, :cond_4

    .line 1509
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v3

    .line 1510
    .local v3, "type":I
    const-string/jumbo v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "phone encrypted type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1511
    if-ne v3, v4, :cond_3

    :goto_0
    return v4

    :cond_3
    move v4, v5

    goto :goto_0

    .line 1513
    .end local v2    # "service":Landroid/os/storage/IMountService;
    .end local v3    # "type":I
    :catch_0
    move-exception v0

    .line 1514
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error calling mount service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return v5
.end method

.method private static checkShutdownFlow()V
    .locals 16

    .prologue
    const/4 v15, 0x1

    const/4 v14, 0x0

    .line 863
    const-string/jumbo v11, "sys.ipo.disable"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, "IPODisableProp":Ljava/lang/String;
    const-string/jumbo v11, "1"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x0

    .line 865
    .local v4, "isIPOEnabled":Z
    :goto_0
    const-string/jumbo v11, "ro.mtk_ipo_support"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 866
    .local v5, "isIPOsupport":Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkEncryptionCondition()Z

    move-result v9

    .line 867
    .local v9, "passIPOEncryptionCondition":Z
    const/4 v6, 0x0

    .line 868
    .local v6, "isSafeMode":Z
    const-string/jumbo v11, "ro.mtk_smartbook_support"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 869
    .local v8, "isSmartBookSupport":Z
    const/4 v7, 0x0

    .line 871
    .local v7, "isSmartBookPluggedIn":Z
    if-eqz v8, :cond_0

    .line 873
    sget-object v11, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v11, v11, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "display"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 872
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 874
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v7

    .line 879
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v7    # "isSmartBookPluggedIn":Z
    :cond_0
    :try_start_0
    const-string/jumbo v11, "window"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 878
    invoke-static {v11}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    .line 880
    .local v10, "wm":Landroid/view/IWindowManager;
    if-eqz v10, :cond_1

    .line 881
    invoke-interface {v10}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 886
    .end local v6    # "isSafeMode":Z
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :cond_1
    :goto_1
    const-string/jumbo v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkShutdownFlow: IPO_Support="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 887
    const-string/jumbo v13, " mReboot="

    .line 886
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 887
    sget-boolean v13, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 886
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 888
    const-string/jumbo v13, " sys.ipo.disable="

    .line 886
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 889
    const-string/jumbo v13, " isSafeMode="

    .line 886
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 890
    const-string/jumbo v13, " passEncryptionCondition="

    .line 886
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 891
    const-string/jumbo v13, " Smartbook MHL PluggedIn="

    .line 886
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    if-eqz v5, :cond_2

    sget-boolean v11, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v11, :cond_4

    .line 896
    :cond_2
    sput v14, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 897
    return-void

    .line 864
    .end local v4    # "isIPOEnabled":Z
    .end local v5    # "isIPOsupport":Z
    .end local v8    # "isSmartBookSupport":Z
    .end local v9    # "passIPOEncryptionCondition":Z
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "isIPOEnabled":Z
    goto/16 :goto_0

    .line 882
    .restart local v5    # "isIPOsupport":Z
    .restart local v6    # "isSafeMode":Z
    .restart local v8    # "isSmartBookSupport":Z
    .restart local v9    # "passIPOEncryptionCondition":Z
    :catch_0
    move-exception v2

    .line 883
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 893
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v6    # "isSafeMode":Z
    :cond_4
    if-eqz v4, :cond_2

    .line 894
    if-nez v6, :cond_2

    if-eqz v9, :cond_2

    .line 895
    if-nez v7, :cond_2

    .line 901
    :try_start_1
    sget-object v11, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v11, v11, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 902
    const-string/jumbo v12, "ipo_setting"

    const/4 v13, 0x1

    .line 901
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-ne v11, v15, :cond_5

    const/4 v4, 0x1

    .line 909
    :goto_2
    if-eqz v4, :cond_7

    .line 910
    const-string/jumbo v11, "1"

    const-string/jumbo v12, "sys.ipo.battlow"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 911
    sput v14, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 918
    :goto_3
    const-string/jumbo v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkShutdownFlow: isIPOEnabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 919
    const-string/jumbo v13, " mShutdownFlow="

    .line 918
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 919
    sget v13, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 918
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-void

    .line 901
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 903
    :catch_1
    move-exception v3

    .line 904
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v11, "ShutdownThread"

    const-string/jumbo v12, "checkShutdownFlow: fail to get IPO setting"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    sput v14, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 906
    return-void

    .line 913
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_6
    sput v15, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    goto :goto_3

    .line 915
    :cond_7
    sput v14, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    goto :goto_3
.end method

.method private static configShutdownAnimation(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 573
    const/4 v2, 0x0

    .line 575
    .local v2, "mShutOffAnimation":Z
    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 574
    check-cast v3, Landroid/os/PowerManager;

    .line 577
    .local v3, "pm":Landroid/os/PowerManager;
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 580
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 583
    :goto_0
    :try_start_0
    const-string/jumbo v4, "ro.operator.optr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "cust":Ljava/lang/String;
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    if-nez v4, :cond_1

    .line 586
    const-class v4, Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/bootanim/IBootAnimExt;

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    .line 587
    :cond_1
    if-eqz v0, :cond_3

    const-string/jumbo v4, "CUST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 588
    const/4 v2, 0x1

    .line 595
    .end local v0    # "cust":Ljava/lang/String;
    .end local v2    # "mShutOffAnimation":Z
    :goto_1
    return v2

    .line 578
    .restart local v2    # "mShutOffAnimation":Z
    :cond_2
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    goto :goto_0

    .line 590
    .restart local v0    # "cust":Ljava/lang/String;
    :cond_3
    :try_start_1
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-interface {v4}, Lcom/mediatek/common/bootanim/IBootAnimExt;->isCustBootAnim()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .local v2, "mShutOffAnimation":Z
    goto :goto_1

    .line 592
    .end local v0    # "cust":Ljava/lang/String;
    .local v2, "mShutOffAnimation":Z
    :catch_0
    move-exception v1

    .line 593
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static delayForPlayAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 843
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    .line 844
    return-void

    .line 846
    :cond_0
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 847
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 849
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    sget-wide v2, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    .local v0, "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    return-void

    .line 850
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 851
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "Shutdown stop bootanimation Thread.currentThread().sleep exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getScreenTurnOffTime(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 600
    const/4 v1, 0x0

    .line 602
    .local v1, "screenTurnOffTime":I
    :try_start_0
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    if-nez v2, :cond_0

    .line 603
    const-class v2, Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/bootanim/IBootAnimExt;

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    .line 604
    :cond_0
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-interface {v2}, Lcom/mediatek/common/bootanim/IBootAnimExt;->getScreenTurnOffTime()I

    move-result v1

    .line 605
    const-string/jumbo v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IBootAnim get screenTurnOffTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    return v1

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static powerOffDialogRedrawForSmartBook(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    .line 416
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 417
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 419
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "SmartBook: Re-sraw power off dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 423
    .local v0, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 424
    const v4, 0x10e0048

    .line 423
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 425
    .local v1, "longPressBehavior":I
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_1

    .line 426
    const v2, 0x1040105

    .line 431
    .local v2, "resourceId":I
    :goto_0
    const-string/jumbo v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 434
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_3

    .line 435
    const v3, 0x1040104

    .line 433
    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 439
    new-instance v4, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v4, p0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Landroid/content/Context;)V

    .line 438
    const v5, 0x1040013

    .line 433
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 448
    new-instance v4, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v4}, Lcom/android/server/power/ShutdownThread$7;-><init>()V

    .line 447
    const v5, 0x1040009

    .line 433
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 459
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 460
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 463
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    .line 465
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v3, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 466
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 468
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 469
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 415
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v1    # "longPressBehavior":I
    .end local v2    # "resourceId":I
    :cond_0
    return-void

    .line 427
    .restart local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v1    # "longPressBehavior":I
    :cond_1
    if-ne v1, v6, :cond_2

    .line 428
    const v2, 0x1040103

    .restart local v2    # "resourceId":I
    goto/16 :goto_0

    .line 429
    .end local v2    # "resourceId":I
    :cond_2
    const v2, 0x1040102

    .restart local v2    # "resourceId":I
    goto/16 :goto_0

    .line 436
    :cond_3
    const v3, 0x10400f7

    goto :goto_1
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v2, 0x0

    .line 520
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 521
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 522
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 523
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 524
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "reboot"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 528
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 530
    .local v0, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "     |----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    const-string/jumbo v3, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SHTDWN] reboot, reboot requested reason="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 536
    if-eqz p1, :cond_1

    .line 535
    .end local p1    # "reason":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 537
    const-string/jumbo v4, " confirm="

    .line 535
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 537
    if-eqz p2, :cond_2

    const-string/jumbo v2, "yes"

    .line 535
    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 519
    return-void

    .line 536
    .restart local p1    # "reason":Ljava/lang/String;
    :cond_1
    const-string/jumbo p1, "null"

    goto :goto_1

    .line 537
    .end local p1    # "reason":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "no"

    goto :goto_2
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 1407
    const-string/jumbo v8, "ShutdownThread"

    const-string/jumbo v9, "waiting for poweroff animation finished.."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1409
    .local v4, "start":J
    const/4 v1, 0x0

    .line 1413
    .local v1, "steps":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    const/16 v8, 0x32

    if-gt v1, v8, :cond_0

    .line 1415
    :try_start_0
    const-string/jumbo v8, "service.bootanim.done"

    const/4 v9, 0x0

    .line 1414
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1413
    if-eqz v8, :cond_2

    .line 1416
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1417
    .local v2, "end":J
    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "waiting animation :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v2, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v8, v8, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8, v12}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    .line 1428
    if-eqz p0, :cond_1

    .line 1430
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v8, v8, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_3

    .line 1431
    new-instance v7, Landroid/os/SystemVibrator;

    sget-object v8, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v8, v8, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 1433
    .local v7, "vibrator":Landroid/os/Vibrator;
    :goto_1
    const-wide/16 v8, 0x1f4

    :try_start_1
    invoke-virtual {v7, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1441
    :goto_2
    const-wide/16 v8, 0x1f4

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1446
    .end local v7    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    :goto_3
    if-eqz p1, :cond_4

    .line 1447
    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Rebooting, reason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :try_start_3
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1396
    :goto_4
    return-void

    .line 1420
    .end local v2    # "end":J
    :cond_2
    const-wide/16 v8, 0x64

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1421
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ShutdownThread"

    const-string/jumbo v9, "interrupted exception occurred"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1431
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "end":J
    :cond_3
    new-instance v7, Landroid/os/SystemVibrator;

    invoke-direct {v7}, Landroid/os/SystemVibrator;-><init>()V

    goto :goto_1

    .line 1434
    .restart local v7    # "vibrator":Landroid/os/Vibrator;
    :catch_1
    move-exception v0

    .line 1436
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ShutdownThread"

    const-string/jumbo v9, "Failed to vibrate during shutdown."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1442
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .local v6, "unused":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 1450
    .end local v6    # "unused":Ljava/lang/InterruptedException;
    .end local v7    # "vibrator":Landroid/os/Vibrator;
    :catch_3
    move-exception v0

    .line 1451
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ShutdownThread"

    const-string/jumbo v9, "Reboot failed, will attempt shutdown instead"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1455
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v8, "ShutdownThread"

    const-string/jumbo v9, "Performing low-level shutdown..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    const-string/jumbo v8, "ShutdownThread"

    const-string/jumbo v9, "[SHTDWN] rebootOrShutdown, shutdown"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    goto :goto_4
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v2, 0x1

    .line 551
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 552
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    return-void

    .line 556
    :cond_0
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 557
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 558
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 559
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 563
    const-string/jumbo v2, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[SHTDWN] reboot, rebootSafeMode requested reason=null confirm="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 564
    if-eqz p1, :cond_1

    const-string/jumbo v1, "yes"

    .line 563
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "rebootSafeMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 550
    return-void

    .line 564
    :cond_1
    const-string/jumbo v1, "no"

    goto :goto_0
.end method

.method private static recoverSystemProvivion(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 231
    if-eqz p0, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "is_factory_device_provisioned"

    .line 232
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 234
    .local v0, "isfactoryMode":I
    const-string/jumbo v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RecoverSystemProvision  factoryMode status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-ne v0, v6, :cond_0

    .line 236
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.lenovo.setupwizard"

    const-string/jumbo v3, "com.lenovo.setupwizard.DefaultActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .local v1, "name":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_provisioned"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    .end local v0    # "isfactoryMode":I
    .end local v1    # "name":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private running()V
    .locals 32

    .prologue
    .line 954
    const-string/jumbo v2, "sys.ipo.pwrdncap"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    .line 956
    new-instance v6, Lcom/android/server/power/ShutdownThread$10;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$10;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 969
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 970
    .local v26, "reason":Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string/jumbo v2, "sys.power.off"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 983
    const-string/jumbo v2, "persist.sys.safemode"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_0
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 996
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 995
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1006
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v8, 0x2710

    add-long v20, v2, v8

    .line 1007
    .local v20, "endTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1008
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 1009
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v20, v8

    .line 1010
    .local v12, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v12, v8

    if-gtz v2, :cond_10

    .line 1011
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown broadcast ACTION_SHUTDOWN timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 1013
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN timeout"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v12    # "delay":J
    :cond_1
    monitor-exit v3

    .line 1028
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_2

    .line 1029
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1034
    :cond_2
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1035
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 1037
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1041
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v8, 0x2710

    add-long v22, v2, v8

    .line 1042
    .local v22, "endTimeIPO":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1043
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_3

    .line 1044
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v22, v8

    .line 1045
    .restart local v12    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v12, v8

    if-gtz v2, :cond_12

    .line 1046
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown broadcast ACTION_SHUTDOWN_IPO timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 1048
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN_IPO timeout"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v12    # "delay":J
    :cond_3
    monitor-exit v3

    .line 1061
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v22    # "endTimeIPO":J
    :cond_4
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    .line 1062
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 1066
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_5

    .line 1068
    const/16 v2, 0x2710

    :try_start_2
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1072
    :cond_5
    :goto_4
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_6

    .line 1073
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1077
    .end local v11    # "am":Landroid/app/IActivityManager;
    :cond_6
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Shutting down package manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v25

    .line 1079
    check-cast v25, Lcom/android/server/pm/PackageManagerService;

    .line 1081
    .local v25, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v25, :cond_7

    .line 1082
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 1084
    :cond_7
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_8

    .line 1085
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v3, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1089
    :cond_8
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Shutting down radios..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 1091
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_9

    .line 1092
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v3, 0x12

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1095
    :cond_9
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    sget-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1096
    :cond_a
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "bypass MountService!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :goto_5
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "set service.shutanim.running to 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const-string/jumbo v2, "service.shutanim.running"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_b

    .line 1159
    new-instance v28, Landroid/os/SystemVibrator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 1161
    .local v28, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_3
    sget-object v5, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3, v5}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1169
    :goto_6
    const-wide/16 v2, 0x1f4

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1175
    .end local v28    # "vibrator":Landroid/os/Vibrator;
    :cond_b
    :goto_7
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Performing ipo low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 1179
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1180
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1183
    :cond_c
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->shutdown(Landroid/content/Context;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V

    .line 1188
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_18

    .line 1189
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1195
    :cond_d
    :goto_8
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 1196
    const/4 v3, 0x0

    :try_start_5
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v2

    .line 1199
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1200
    const/4 v3, 0x1

    .line 1199
    invoke-virtual {v2, v8, v9, v3}, Landroid/os/PowerManager;->wakeUpByReason(JI)V

    .line 1201
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v2, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1203
    sget-object v3, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1205
    :try_start_6
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_9
    monitor-exit v3

    .line 953
    :goto_a
    return-void

    .line 969
    .end local v20    # "endTime":J
    .end local v25    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v26    # "reason":Ljava/lang/String;
    :cond_e
    const-string/jumbo v2, "0"

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v2, ""

    goto/16 :goto_1

    .line 1017
    .restart local v12    # "delay":J
    .restart local v20    # "endTime":J
    .restart local v26    # "reason":Ljava/lang/String;
    :cond_10
    :try_start_7
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_11

    .line 1018
    const-wide/16 v8, 0x2710

    sub-long/2addr v8, v12

    long-to-double v8, v8

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v30

    .line 1019
    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    .line 1018
    mul-double v8, v8, v30

    .line 1019
    const-wide v30, 0x40c3880000000000L    # 10000.0

    .line 1018
    div-double v8, v8, v30

    double-to-int v0, v8

    move/from16 v27, v0

    .line 1020
    .local v27, "status":I
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1023
    .end local v27    # "status":I
    :cond_11
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 1024
    :catch_0
    move-exception v16

    .local v16, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_2

    .line 1007
    .end local v12    # "delay":J
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1054
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v12    # "delay":J
    .restart local v22    # "endTimeIPO":J
    :cond_12
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    .line 1055
    :catch_1
    move-exception v16

    .restart local v16    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_3

    .line 1042
    .end local v12    # "delay":J
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1069
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v22    # "endTimeIPO":J
    .restart local v11    # "am":Landroid/app/IActivityManager;
    :catch_2
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto/16 :goto_4

    .line 1099
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v25    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_13
    new-instance v24, Lcom/android/server/power/ShutdownThread$11;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$11;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 1109
    .local v24, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 1113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v8, 0x4e20

    add-long v18, v2, v8

    .line 1114
    .local v18, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1117
    :try_start_a
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1116
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v17

    .line 1118
    .local v17, "mount":Landroid/os/storage/IMountService;
    if-eqz v17, :cond_15

    .line 1119
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1126
    .end local v17    # "mount":Landroid/os/storage/IMountService;
    :goto_b
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_14

    .line 1127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v18, v8

    .line 1128
    .restart local v12    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v12, v8

    if-gtz v2, :cond_16

    .line 1129
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_14

    .line 1131
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "change shutdown flow from ipo to normal: MountService"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .end local v12    # "delay":J
    :cond_14
    monitor-exit v3

    .line 1148
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "MountService shut done..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1121
    .restart local v17    # "mount":Landroid/os/storage/IMountService;
    :cond_15
    :try_start_c
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "MountService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_b

    .line 1123
    .end local v17    # "mount":Landroid/os/storage/IMountService;
    :catch_3
    move-exception v15

    .line 1124
    .local v15, "e":Ljava/lang/Exception;
    :try_start_d
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Exception during MountService shutdown"

    invoke-static {v2, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_b

    .line 1114
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1135
    .restart local v12    # "delay":J
    :cond_16
    :try_start_e
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_17

    .line 1136
    const-wide/16 v8, 0x4e20

    sub-long/2addr v8, v12

    long-to-double v8, v8

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v30

    .line 1137
    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    .line 1136
    mul-double v8, v8, v30

    .line 1138
    const-wide v30, 0x40d3880000000000L    # 20000.0

    .line 1136
    div-double v8, v8, v30

    double-to-int v0, v8

    move/from16 v27, v0

    .line 1139
    .restart local v27    # "status":I
    add-int/lit8 v27, v27, 0x12

    .line 1140
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1143
    .end local v27    # "status":I
    :cond_17
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_b

    .line 1144
    :catch_4
    move-exception v16

    .restart local v16    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_b

    .line 1162
    .end local v12    # "delay":J
    .end local v16    # "e":Ljava/lang/InterruptedException;
    .end local v18    # "endShutTime":J
    .end local v24    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .restart local v28    # "vibrator":Landroid/os/Vibrator;
    :catch_5
    move-exception v15

    .line 1164
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1170
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v16

    .restart local v16    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_7

    .line 1190
    .end local v16    # "e":Ljava/lang/InterruptedException;
    .end local v28    # "vibrator":Landroid/os/Vibrator;
    :cond_18
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_d

    .line 1191
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "service.bootanim.exit = 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string/jumbo v2, "service.bootanim.exit"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1195
    :catchall_3
    move-exception v3

    monitor-exit v2

    throw v3

    .line 1206
    :catch_7
    move-exception v16

    .line 1207
    .restart local v16    # "e":Ljava/lang/InterruptedException;
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto/16 :goto_9

    .line 1203
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1211
    :cond_19
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_1a

    .line 1212
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v3, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1215
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 1218
    :cond_1a
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const-string/jumbo v3, "recovery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1219
    :cond_1b
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v2, :cond_1d

    .line 1220
    :cond_1c
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 1222
    :cond_1d
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1223
    const/4 v3, 0x7

    const/4 v5, 0x0

    .line 1222
    invoke-virtual {v2, v8, v9, v3, v5}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1227
    const-string/jumbo v3, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[SHTDWN] run, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1228
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "reboot"

    .line 1227
    :goto_c
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1228
    const-string/jumbo v5, " requested "

    .line 1227
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1229
    const-string/jumbo v5, "reason="

    .line 1227
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1229
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_1f

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 1227
    :goto_d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    goto/16 :goto_a

    .line 1228
    :cond_1e
    const-string/jumbo v2, "shutdown"

    goto :goto_c

    .line 1229
    :cond_1f
    const-string/jumbo v2, "null"

    goto :goto_d
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$12;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1236
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    .line 207
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 208
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 210
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!!! Request to shutdown !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 214
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 216
    .local v0, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    |----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    const-string/jumbo v2, "ro.monkey"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Cannot request to shutdown when Monkey is running, returning."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 225
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 206
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 251
    sget-object v21, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v21

    .line 252
    :try_start_0
    sget-boolean v20, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v20, :cond_0

    .line 253
    const-string/jumbo v20, "ShutdownThread"

    const-string/jumbo v22, "Request to shutdown already running, returning."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v21

    .line 254
    return-void

    :cond_0
    monitor-exit v21

    .line 260
    const/16 v17, 0x0

    .line 265
    .local v17, "newAlarmSet":Z
    const-string/jumbo v20, "alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 266
    .local v4, "alarmManager":Landroid/app/AlarmManager;
    const/16 v20, -0x2

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v8

    .line 267
    .local v8, "clockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    if-nez v8, :cond_2

    .line 268
    const-wide/16 v6, 0x0

    .line 273
    .local v6, "alarmTimeInMill":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    cmp-long v20, v6, v20

    if-lez v20, :cond_4

    .line 274
    const/16 v17, 0x1

    .line 275
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 276
    .local v11, "date":Ljava/util/Date;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v15

    .line 277
    .local v15, "is24Format":Z
    const/4 v14, 0x0

    .line 278
    .local v14, "format":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 279
    const-string/jumbo v14, "E HH:mm"

    .line 283
    .local v14, "format":Ljava/lang/String;
    :goto_1
    new-instance v12, Ljava/text/SimpleDateFormat;

    invoke-direct {v12, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 284
    .local v12, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v12, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 291
    .end local v11    # "date":Ljava/util/Date;
    .end local v12    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v14    # "format":Ljava/lang/String;
    .end local v15    # "is24Format":Z
    .local v5, "alarmTime":Ljava/lang/String;
    :goto_2
    if-eqz v17, :cond_5

    const v19, 0x9090040

    .line 293
    .local v19, "shutdownConfirmStringResId":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 294
    const v21, 0x10e0048

    .line 293
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 297
    .local v16, "longPressBehavior":I
    sget-boolean v20, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v20, :cond_6

    .line 298
    const v18, 0x1040105

    .line 304
    .local v18, "resourceId":I
    :goto_4
    const-string/jumbo v20, "ShutdownThread"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string/jumbo v20, "ShutdownThread"

    const-string/jumbo v21, "[SHTDWN] My call stack is:"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v13, Ljava/lang/RuntimeException;

    const-string/jumbo v20, "here"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 310
    .local v13, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v20, "ShutdownThread"

    const-string/jumbo v21, "shutdown call stack"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    if-eqz p1, :cond_1

    sget-boolean v20, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v20, :cond_8

    .line 347
    :cond_1
    if-eqz p1, :cond_d

    sget-boolean v20, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v20, :cond_d

    .line 348
    new-instance v9, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 350
    .local v9, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    new-instance v21, Landroid/app/AlertDialog$Builder;

    .line 352
    const v20, 0x90302d2

    .line 350
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 353
    sget-boolean v20, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v20, :cond_b

    .line 354
    const v20, 0x1040104

    .line 350
    :goto_5
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    .line 356
    sget-boolean v20, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v20, :cond_c

    .line 357
    const v20, 0x1040105

    .line 350
    :goto_6
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 360
    new-instance v21, Lcom/android/server/power/ShutdownThread$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$4;-><init>(Landroid/content/Context;)V

    .line 359
    const v22, 0x104000a

    .line 350
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 367
    new-instance v21, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/power/ShutdownThread$5;-><init>()V

    .line 366
    const/high16 v22, 0x1040000

    .line 350
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    sput-object v20, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 373
    sget-object v20, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v20

    .line 374
    const/16 v21, 0x7d9

    .line 373
    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setType(I)V

    .line 375
    sget-object v20, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 376
    sget-object v20, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 377
    sget-object v20, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    .line 248
    .end local v9    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :goto_7
    return-void

    .line 251
    .end local v4    # "alarmManager":Landroid/app/AlarmManager;
    .end local v5    # "alarmTime":Ljava/lang/String;
    .end local v6    # "alarmTimeInMill":J
    .end local v8    # "clockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .end local v16    # "longPressBehavior":I
    .end local v17    # "newAlarmSet":Z
    .end local v18    # "resourceId":I
    .end local v19    # "shutdownConfirmStringResId":I
    :catchall_0
    move-exception v20

    monitor-exit v21

    throw v20

    .line 270
    .restart local v4    # "alarmManager":Landroid/app/AlarmManager;
    .restart local v8    # "clockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local v17    # "newAlarmSet":Z
    :cond_2
    invoke-virtual {v8}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v6

    .restart local v6    # "alarmTimeInMill":J
    goto/16 :goto_0

    .line 281
    .restart local v11    # "date":Ljava/util/Date;
    .local v14, "format":Ljava/lang/String;
    .restart local v15    # "is24Format":Z
    :cond_3
    const-string/jumbo v14, "E hh:mma"

    .local v14, "format":Ljava/lang/String;
    goto/16 :goto_1

    .line 286
    .end local v11    # "date":Ljava/util/Date;
    .end local v14    # "format":Ljava/lang/String;
    .end local v15    # "is24Format":Z
    :cond_4
    const/16 v17, 0x0

    .line 287
    const-string/jumbo v5, ""

    .restart local v5    # "alarmTime":Ljava/lang/String;
    goto/16 :goto_2

    .line 291
    :cond_5
    const v19, 0x1040102

    .restart local v19    # "shutdownConfirmStringResId":I
    goto/16 :goto_3

    .line 299
    .restart local v16    # "longPressBehavior":I
    :cond_6
    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 300
    const v18, 0x1040103

    .restart local v18    # "resourceId":I
    goto/16 :goto_4

    .line 301
    .end local v18    # "resourceId":I
    :cond_7
    move/from16 v18, v19

    .restart local v18    # "resourceId":I
    goto/16 :goto_4

    .line 316
    .restart local v13    # "e":Ljava/lang/RuntimeException;
    :cond_8
    new-instance v9, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 317
    .restart local v9    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v20, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v20, :cond_9

    .line 318
    sget-object v20, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->dismiss()V

    .line 320
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 321
    .local v10, "confirmFormat":Ljava/lang/CharSequence;
    new-instance v21, Landroid/app/AlertDialog$Builder;

    const v20, 0x90302d2

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 322
    sget-boolean v20, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v20, :cond_a

    .line 323
    const v20, 0x1040104

    .line 321
    :goto_8
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 325
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 321
    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 326
    new-instance v21, Lcom/android/server/power/ShutdownThread$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    const v22, 0x1040013

    .line 321
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 337
    new-instance v21, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    const v22, 0x1040009

    .line 321
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    sput-object v20, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 343
    sget-object v20, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 344
    sget-object v20, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 345
    sget-object v20, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/16 v21, 0x7d9

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setType(I)V

    .line 346
    sget-object v20, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    .line 324
    :cond_a
    const v20, 0x10400f7

    goto :goto_8

    .line 355
    .end local v10    # "confirmFormat":Ljava/lang/CharSequence;
    :cond_b
    const v20, 0x9090041

    goto/16 :goto_5

    .line 358
    :cond_c
    const v20, 0x9090042

    goto/16 :goto_6

    .line 379
    .end local v9    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_7
.end method

.method private shutdownRadios(I)V
    .locals 14
    .param p1, "timeout"    # I

    .prologue
    .line 1251
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 1252
    const-string/jumbo v6, "connectivity"

    .line 1251
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 1253
    .local v7, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1254
    sget v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_3

    sget-object v1, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string/jumbo v6, "2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string/jumbo v6, "3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1258
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    int-to-long v12, p1

    add-long v2, v10, v12

    .line 1259
    .local v2, "endTime":J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 1260
    .local v5, "done":[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$13;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/ShutdownThread$13;-><init>(Lcom/android/server/power/ShutdownThread;JZ[ZI)V

    .line 1374
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1376
    int-to-long v10, p1

    :try_start_0
    invoke-virtual {v0, v10, v11}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :goto_1
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_0

    .line 1380
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v6, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    sget v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    .line 1382
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v6, "change shutdown flow from ipo to normal: BT/MD"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const/4 v1, 0x0

    sput v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 1250
    :cond_0
    return-void

    .line 1253
    .end local v0    # "t":Ljava/lang/Thread;
    .end local v2    # "endTime":J
    .end local v5    # "done":[Z
    :cond_1
    const/4 v4, 0x1

    .local v4, "bypassRadioOff":Z
    goto :goto_0

    .line 1254
    .end local v4    # "bypassRadioOff":Z
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "bypassRadioOff":Z
    goto :goto_0

    .end local v4    # "bypassRadioOff":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "bypassRadioOff":Z
    goto :goto_0

    .line 1377
    .end local v4    # "bypassRadioOff":Z
    .restart local v0    # "t":Ljava/lang/Thread;
    .restart local v2    # "endTime":J
    .restart local v5    # "done":[Z
    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private static startBootAnimation()V
    .locals 2

    .prologue
    .line 823
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "Set \'service.bootanim.exit\' = 0)."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const-string/jumbo v0, "service.bootanim.exit"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    if-eqz v0, :cond_0

    .line 827
    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :goto_0
    return-void

    .line 830
    :cond_0
    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchToLauncher()V
    .locals 3

    .prologue
    .line 927
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "set launcher as foreground"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 929
    .local v0, "intent1":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 931
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 923
    return-void
.end method

.method private uncrypt()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1520
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Calling uncrypt and monitoring the progress..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const/4 v3, 0x1

    new-array v0, v3, [Z

    .line 1523
    .local v0, "done":[Z
    aput-boolean v6, v0, v6

    .line 1524
    new-instance v1, Lcom/android/server/power/ShutdownThread$14;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/ShutdownThread$14;-><init>(Lcom/android/server/power/ShutdownThread;[Z)V

    .line 1586
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1589
    const-wide/32 v4, 0xdbba0

    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    :goto_0
    aget-boolean v3, v0, v6

    if-nez v3, :cond_0

    .line 1593
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Timed out waiting for uncrypt."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_0
    return-void

    .line 1590
    :catch_0
    move-exception v2

    .local v2, "unused":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 836
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 837
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 838
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 835
    return-void

    .line 836
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 939
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkShutdownFlow()V

    .line 940
    :goto_0
    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v0, v2, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->saveStates(Landroid/content/Context;)V

    .line 942
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 943
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->switchToLauncher()V

    .line 944
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->running()V

    goto :goto_0

    .line 946
    :cond_0
    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-eq v0, v2, :cond_1

    .line 947
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 948
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->switchToLauncher()V

    .line 949
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->running()V

    .line 938
    :cond_1
    return-void
.end method
