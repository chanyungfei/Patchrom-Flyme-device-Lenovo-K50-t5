.class public final Lcom/mediatek/hdmi/MtkHdmiManagerService;
.super Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;,
        Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;,
        Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;,
        Lcom/mediatek/hdmi/MtkHdmiManagerService$1;,
        Lcom/mediatek/hdmi/MtkHdmiManagerService$2;,
        Lcom/mediatek/hdmi/MtkHdmiManagerService$3;
    }
.end annotation


# static fields
.field private static final ACTION_CLEARMOTION_DIMMED:Ljava/lang/String; = "com.mediatek.clearmotion.DIMMED_UPDATE"

.field private static final ACTION_IPO_BOOT:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final ACTION_IPO_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final AP_CFG_RDCL_FILE_HDCP_KEY_LID:I = 0x2d

.field private static final HDMI_COLOR_SPACE_DEFAULT:I = 0x0

.field private static final HDMI_DEEP_COLOR_DEFAULT:I = 0x1

.field private static final HDMI_ENABLE_STATUS_DEFAULT:I = 0x1

.field private static final HDMI_VIDEO_RESOLUTION_DEFAULT:I = 0x64

.field private static final HDMI_VIDEO_SCALE_DEFAULT:I = 0x0

.field private static final KEY_CLEARMOTION_DIMMED:Ljava/lang/String; = "sys.display.clearMotion.dimmed"

.field private static final MSG_CABLE_STATE:I = 0x2

.field private static final MSG_DEINIT:I = 0x1

.field private static final MSG_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtkHdmiService"

.field private static sHdmi:Ljava/lang/String;

.field private static sMhl:Ljava/lang/String;


# instance fields
.field private mActionReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioOutputDialog:Landroid/app/AlertDialog;

.field private mAudioOutputMode:I

.field private mCablePlugged:Z

.field private mCallComing:Z

.field private mCallRestore:Z

.field private mCapabilities:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mEdid:[I

.field private mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdVideoRestore:Z

.field private mHdmiColorSpace:I

.field private mHdmiDeepColor:I

.field private mHdmiEnabled:Z

.field private mHdmiObserver:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

.field private mHdmiSettingsObserver:Landroid/database/ContentObserver;

.field private mHdmiVideoResolution:I

.field private mHdmiVideoScale:I

.field private mInitialized:Z

.field private mIsHdVideoPlaying:Z

.field private mIsSmartBookPluggedIn:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreEdid:[I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/mediatek/hdmi/MtkHdmiManagerService;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    return v0
.end method

.method static synthetic -get2(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic -get6(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    return v0
.end method

.method static synthetic -get7(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z

    return p1
.end method

.method static synthetic -set4(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z

    return p1
.end method

.method static synthetic -set5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set6(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmiImpl(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setDrmKey()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->registerCallListener()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V
    .locals 0
    .param p1, "isStereoChecked"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setAudioParameters(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->unregisterCallListener()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/mediatek/hdmi/MtkHdmiManagerService;ZZ)V
    .locals 0
    .param p1, "plugged"    # Z
    .param p2, "hdmiEnabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->updateWakeLock(ZZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setHdcpKey()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getCapabilities()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V
    .locals 0
    .param p1, "plugged"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleCablePlugged(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleCallStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V
    .locals 0
    .param p1, "plugged"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleNotification(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->hdmiCableStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->loadHdmiSettings()V

    return-void
.end method

.method static synthetic -wrap9(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "HDMI"

    sput-object v0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "MHL"

    sput-object v0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 504
    invoke-direct {p0}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;-><init>()V

    .line 107
    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 120
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z

    .line 121
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z

    .line 123
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    .line 124
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    .line 125
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    .line 126
    iput-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    .line 128
    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 130
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 293
    iput v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    .line 448
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mActionReceiver:Landroid/content/BroadcastReceiver;

    .line 492
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;

    .line 493
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    .line 492
    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    .line 505
    const-string/jumbo v0, "MtkHdmiService"

    const-string/jumbo v1, "MtkHdmiManagerService constructor"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    .line 507
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 508
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->initial()V

    .line 504
    return-void
.end method

.method private enableHdmiImpl(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 676
    monitor-enter p0

    .line 677
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeEnableHdmi(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCapabilities()V
    .locals 3

    .prologue
    .line 981
    monitor-enter p0

    .line 982
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeGetCapabilities()I

    move-result v0

    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCapabilities:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 984
    const-string/jumbo v0, "MtkHdmiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCapabilities: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 985
    iget v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 984
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 980
    return-void

    .line 981
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSuitableResolution(I)I
    .locals 11
    .param p1, "videoResolution"    # I

    .prologue
    const/4 v7, 0x0

    .line 800
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSupportedResolutions()[I

    move-result-object v6

    .line 801
    .local v6, "supportedResolutions":[I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v5, "resolutionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v9, v6

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_0

    aget v4, v6, v8

    .line 803
    .local v4, "res":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 805
    .end local v4    # "res":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->needUpdate(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 806
    const-string/jumbo v8, "MtkHdmiService"

    const-string/jumbo v9, "upate resolution"

    invoke-static {v8, v9}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 807
    iget-object v8, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    if-eqz v8, :cond_3

    .line 808
    iget-object v8, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    aget v8, v8, v7

    iget-object v9, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    or-int v1, v8, v9

    .line 809
    .local v1, "edidTemp":I
    const/4 v2, 0x0

    .line 810
    .local v2, "index":I
    sget-boolean v8, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_HDMI_SUPPORT:Z

    if-nez v8, :cond_1

    .line 811
    sget-boolean v8, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_MHL_SUPPORT:Z

    .line 810
    if-eqz v8, :cond_4

    .line 812
    :cond_1
    const/4 v2, 0x1

    .line 820
    :goto_1
    invoke-static {v2}, Lcom/mediatek/hdmi/HdmiDef;->getPreferedResolutions(I)[I

    move-result-object v3

    .line 821
    .local v3, "prefered":[I
    array-length v8, v3

    :goto_2
    if-ge v7, v8, :cond_3

    aget v4, v3, v7

    .line 822
    .restart local v4    # "res":I
    move v0, v4

    .line 823
    .local v0, "act":I
    const/16 v9, 0x64

    if-lt v4, v9, :cond_2

    .line 824
    add-int/lit8 v0, v4, -0x64

    .line 826
    :cond_2
    sget-object v9, Lcom/mediatek/hdmi/HdmiDef;->sResolutionMask:[I

    aget v9, v9, v0

    and-int/2addr v9, v1

    if-eqz v9, :cond_7

    .line 827
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 826
    if-eqz v9, :cond_7

    .line 828
    move p1, v4

    .line 834
    .end local v0    # "act":I
    .end local v1    # "edidTemp":I
    .end local v2    # "index":I
    .end local v3    # "prefered":[I
    .end local v4    # "res":I
    :cond_3
    const-string/jumbo v7, "MtkHdmiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "suiteable video resolution: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 835
    return p1

    .line 813
    .restart local v1    # "edidTemp":I
    .restart local v2    # "index":I
    :cond_4
    sget-boolean v8, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_MT8193_HDMI_SUPPORT:Z

    if-eqz v8, :cond_5

    .line 814
    const/4 v2, 0x0

    goto :goto_1

    .line 815
    :cond_5
    sget-boolean v8, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_TB6582_HDMI_SUPPORT:Z

    if-eqz v8, :cond_6

    .line 816
    const/4 v2, 0x2

    goto :goto_1

    .line 818
    :cond_6
    const/4 v2, 0x3

    goto :goto_1

    .line 821
    .restart local v0    # "act":I
    .restart local v3    # "prefered":[I
    .restart local v4    # "res":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method private getSupportedResolutionsImpl()[I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 886
    iget-object v8, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    if-nez v8, :cond_1

    .line 887
    sget-boolean v7, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_TB6582_HDMI_SUPPORT:Z

    if-eqz v7, :cond_0

    .line 888
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/mediatek/hdmi/HdmiDef;->getDefaultResolutions(I)[I

    move-result-object v7

    return-object v7

    .line 890
    :cond_0
    const/4 v7, 0x3

    invoke-static {v7}, Lcom/mediatek/hdmi/HdmiDef;->getDefaultResolutions(I)[I

    move-result-object v7

    return-object v7

    .line 894
    :cond_1
    sget-boolean v8, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_HDMI_SUPPORT:Z

    if-nez v8, :cond_2

    .line 895
    sget-boolean v8, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_MHL_SUPPORT:Z

    .line 894
    if-eqz v8, :cond_3

    .line 896
    :cond_2
    invoke-static {v10}, Lcom/mediatek/hdmi/HdmiDef;->getDefaultResolutions(I)[I

    move-result-object v7

    return-object v7

    .line 897
    :cond_3
    sget-boolean v8, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_MT8193_HDMI_SUPPORT:Z

    if-eqz v8, :cond_5

    .line 898
    invoke-static {v7}, Lcom/mediatek/hdmi/HdmiDef;->getDefaultResolutions(I)[I

    move-result-object v6

    .line 902
    .local v6, "resolutions":[I
    :goto_0
    iget-object v8, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    aget v8, v8, v7

    iget-object v9, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    aget v9, v9, v10

    or-int v1, v8, v9

    .line 903
    .local v1, "edidTemp":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v8, v6

    :goto_1
    if-ge v7, v8, :cond_6

    aget v5, v6, v7

    .line 906
    .local v5, "res":I
    :try_start_0
    sget-object v9, Lcom/mediatek/hdmi/HdmiDef;->sResolutionMask:[I

    aget v4, v9, v5

    .line 907
    .local v4, "mask":I
    and-int v9, v1, v4

    if-eqz v9, :cond_4

    .line 908
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 909
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    .end local v4    # "mask":I
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 900
    .end local v1    # "edidTemp":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "res":I
    .end local v6    # "resolutions":[I
    :cond_5
    invoke-static {}, Lcom/mediatek/hdmi/HdmiDef;->getAllResolutions()[I

    move-result-object v6

    .restart local v6    # "resolutions":[I
    goto :goto_0

    .line 912
    .restart local v1    # "edidTemp":I
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v5    # "res":I
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v9, "MtkHdmiService"

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 916
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v5    # "res":I
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 917
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 918
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v2

    .line 917
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 920
    :cond_7
    const-string/jumbo v7, "MtkHdmiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getSupportedResolutionsImpl: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 921
    return-object v6
.end method

.method private handleCablePlugged(Z)V
    .locals 3
    .param p1, "plugged"    # Z

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->updateClearMotionDimmed(Z)V

    .line 269
    if-eqz p1, :cond_4

    .line 270
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->refreshEdid(Z)V

    .line 271
    sget-boolean v1, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_MT8193_HDMI_SUPPORT:Z

    if-nez v1, :cond_0

    .line 272
    sget-boolean v1, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_HDMI_SUPPORT:Z

    .line 271
    if-nez v1, :cond_0

    .line 273
    sget-boolean v1, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_INTERNAL_MHL_SUPPORT:Z

    .line 271
    if-eqz v1, :cond_1

    .line 274
    :cond_0
    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiColorSpace:I

    iget v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiDeepColor:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setColorAndDeepImpl(II)Z

    .line 276
    :cond_1
    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    iget v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->initVideoResolution(II)V

    .line 281
    :goto_0
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z

    if-eqz v1, :cond_5

    :cond_2
    const/4 v0, 0x0

    .line 282
    .local v0, "isShowNotification":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleNotification(Z)V

    .line 283
    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    invoke-direct {p0, p1, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->updateWakeLock(ZZ)V

    .line 284
    if-eqz p1, :cond_3

    .line 285
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleMultiChannel()V

    .line 267
    :cond_3
    return-void

    .line 278
    .end local v0    # "isShowNotification":Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->refreshEdid(Z)V

    goto :goto_0

    .line 281
    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "isShowNotification":Z
    goto :goto_1
.end method

.method private handleCallStateChanged(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 138
    const-string/jumbo v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCallComing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mCallRestore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    if-ne p1, v6, :cond_2

    .line 140
    iput-boolean v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    .line 141
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->isSignalOutputting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 143
    const v2, 0x80500c8

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "contentStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getDisplayType()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 145
    sget-object v1, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    sget-object v2, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 148
    iput-boolean v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    .line 149
    invoke-virtual {p0, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmi(Z)Z

    .line 137
    .end local v0    # "contentStr":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    iput-boolean v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    .line 153
    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    if-eqz v1, :cond_1

    .line 154
    iput-boolean v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    .line 155
    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmi(Z)Z

    goto :goto_0
.end method

.method private handleMultiChannel()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 297
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->isSupportMultiChannel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 299
    const-string/jumbo v5, "hdmi_audio_output_mode"

    .line 300
    const/4 v6, -0x2

    .line 298
    invoke-static {v4, v5, v8, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    .line 301
    const-string/jumbo v4, "MtkHdmiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "current mode from setting provider : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 303
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 304
    const v5, 0x80500cb

    .line 303
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 306
    const v5, 0x80500cc

    .line 305
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "stereo":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 308
    const v5, 0x80500cd

    .line 307
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "multiChannel":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 311
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v8

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 312
    iget v6, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    .line 313
    new-instance v7, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;

    invoke-direct {v7, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    .line 309
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 326
    new-instance v5, Lcom/mediatek/hdmi/MtkHdmiManagerService$5;

    invoke-direct {v5, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$5;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    .line 325
    const/high16 v6, 0x1040000

    .line 309
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;

    .line 334
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 335
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 336
    .local v3, "win":Landroid/view/Window;
    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 338
    .end local v0    # "multiChannel":Ljava/lang/String;
    .end local v1    # "stereo":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "win":Landroid/view/Window;
    :cond_0
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 296
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-direct {p0, v8}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setAudioParameters(Z)V

    goto :goto_0
.end method

.method private handleNotification(Z)V
    .locals 12
    .param p1, "plugged"    # Z

    .prologue
    const/4 v1, 0x0

    const v11, 0x8020065

    const/4 v4, 0x0

    .line 407
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    .line 408
    const-string/jumbo v3, "notification"

    .line 407
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 409
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    if-nez v8, :cond_0

    .line 410
    const-string/jumbo v0, "MtkHdmiService"

    const-string/jumbo v1, "Fail to get NotificationManager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void

    .line 413
    :cond_0
    if-eqz p1, :cond_2

    .line 414
    const-string/jumbo v0, "MtkHdmiService"

    const-string/jumbo v3, "HDMI cable is pluged in, show notification now"

    invoke-static {v0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 416
    .local v7, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 417
    const v3, 0x80500c5

    .line 416
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 418
    .local v10, "titleStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 419
    const v3, 0x80500c6

    .line 418
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 420
    .local v6, "contentStr":Ljava/lang/String;
    iput v11, v7, Landroid/app/Notification;->icon:I

    .line 421
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getDisplayType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v3, v0, :cond_1

    .line 422
    sget-object v0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    sget-object v3, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 423
    sget-object v0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    sget-object v3, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 424
    const v0, 0x8020073

    iput v0, v7, Landroid/app/Notification;->icon:I

    .line 426
    :cond_1
    iput-object v10, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 427
    const/16 v0, 0x23

    iput v0, v7, Landroid/app/Notification;->flags:I

    .line 431
    new-instance v0, Landroid/content/ComponentName;

    .line 432
    const-string/jumbo v3, "com.android.settings"

    .line 433
    const-string/jumbo v5, "com.android.settings.HDMISettings"

    .line 431
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 435
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    .line 434
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 436
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0, v10, v6, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 440
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 438
    invoke-virtual {v8, v4, v11, v7, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 406
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "contentStr":Ljava/lang/String;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v10    # "titleStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 442
    :cond_2
    const-string/jumbo v0, "MtkHdmiService"

    const-string/jumbo v1, "HDMI cable is pluged out, clear notification now"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 443
    invoke-virtual {v8, v4, v11, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private hdmiCableStateChanged(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 208
    if-ne p1, v3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    .line 209
    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z

    if-eqz v2, :cond_5

    .line 210
    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    if-eqz v2, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getDisplayType()I

    move-result v1

    .line 212
    .local v1, "type":I
    if-eq v1, v3, :cond_4

    .line 213
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 214
    const v5, 0x80500c7

    .line 213
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "contentStr":Ljava/lang/String;
    if-ne v1, v6, :cond_0

    .line 216
    sget-object v2, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    sget-object v5, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_0
    const-string/jumbo v2, "MtkHdmiService"

    const-string/jumbo v5, "disable hdmi when play HD video"

    invoke-static {v2, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 221
    iput-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    .line 222
    const-string/jumbo v2, "MtkHdmiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsHdVideoPlaying: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    const-string/jumbo v5, " mHdVideoRestore: "

    .line 222
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    iget-boolean v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    .line 222
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmi(Z)Z

    .line 225
    return-void

    .end local v0    # "contentStr":Ljava/lang/String;
    .end local v1    # "type":I
    :cond_1
    move v2, v4

    .line 208
    goto :goto_0

    .line 227
    :cond_2
    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    if-eqz v2, :cond_4

    .line 228
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 229
    const v5, 0x80500c8

    .line 228
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    .restart local v0    # "contentStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getDisplayType()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 231
    sget-object v2, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;

    sget-object v5, Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_3
    const-string/jumbo v2, "MtkHdmiService"

    const-string/jumbo v5, "disable hdmi when call coming"

    invoke-static {v2, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 235
    iput-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    .line 236
    const-string/jumbo v2, "MtkHdmiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallComing: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " mCallRestore: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmi(Z)Z

    .line 238
    return-void

    .line 240
    .end local v0    # "contentStr":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getCapabilities()V

    .line 241
    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    invoke-direct {p0, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleCablePlugged(Z)V

    .line 244
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 245
    const-string/jumbo v3, "hdmi_cable_plugged"

    .line 246
    const/4 v4, -0x2

    .line 244
    invoke-static {v2, v3, p1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 207
    :cond_5
    return-void
.end method

.method private initVideoResolution(II)V
    .locals 6
    .param p1, "resolution"    # I
    .param p2, "scale"    # I

    .prologue
    .line 753
    const-string/jumbo v2, "MtkHdmiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initVideoResolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " scale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 754
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->isResolutionSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 755
    invoke-direct {p0, p1, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setVideoResolutionImpl(II)Z

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSuitableResolution(I)I

    move-result v1

    .line 758
    .local v1, "suitableResolution":I
    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 759
    add-int/lit8 v0, v1, -0x64

    .line 760
    .local v0, "finalResolution":I
    :goto_1
    const-string/jumbo v2, "MtkHdmiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initVideoResolution final video resolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 762
    invoke-direct {p0, v0, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setVideoResolutionImpl(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 763
    iput v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    .line 764
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 765
    const-string/jumbo v3, "hdmi_video_resolution"

    .line 766
    iget v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    const/4 v5, -0x2

    .line 764
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 759
    .end local v0    # "finalResolution":I
    :cond_2
    move v0, v1

    .restart local v0    # "finalResolution":I
    goto :goto_1
.end method

.method private initial()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 512
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 530
    :goto_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    .line 532
    const-string/jumbo v1, "power"

    .line 531
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 535
    .local v6, "mPowerManager":Landroid/os/PowerManager;
    const-string/jumbo v0, "HDMI"

    .line 534
    const v1, 0x2000000a

    .line 533
    invoke-virtual {v6, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 536
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 538
    .end local v6    # "mPowerManager":Landroid/os/PowerManager;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiObserver:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    if-nez v0, :cond_1

    .line 539
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiObserver:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    .line 540
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiObserver:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;

    invoke-virtual {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->startObserve()V

    .line 542
    :cond_1
    sget-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_MT8193_HDCP_SUPPORT:Z

    if-nez v0, :cond_2

    .line 543
    sget-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_HDMI_HDCP_SUPPORT:Z

    .line 542
    if-eqz v0, :cond_3

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    new-instance v1, Lcom/mediatek/hdmi/MtkHdmiManagerService$6;

    invoke-direct {v1, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$6;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->post(Ljava/lang/Runnable;)Z

    .line 556
    :cond_3
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    new-instance v1, Lcom/mediatek/hdmi/MtkHdmiManagerService$7;

    invoke-direct {v1, p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$7;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->post(Ljava/lang/Runnable;)Z

    .line 568
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->observeSettings()V

    .line 511
    return-void

    .line 513
    :cond_4
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "HdmiService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 514
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 515
    new-instance v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    .line 516
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 517
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string/jumbo v0, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    sget-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_SMARTBOOK_SUPPORT:Z

    if-eqz v0, :cond_5

    .line 524
    const-string/jumbo v0, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    :cond_5
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mActionReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 528
    iget-object v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    .line 527
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private isResolutionSupported(I)Z
    .locals 6
    .param p1, "resolution"    # I

    .prologue
    const/4 v3, 0x0

    .line 772
    const-string/jumbo v2, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isResolutionSupported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 773
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    .line 774
    return v3

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSupportedResolutions()[I

    move-result-object v1

    .line 777
    .local v1, "supportedResolutions":[I
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget v0, v1, v2

    .line 778
    .local v0, "res":I
    if-ne v0, p1, :cond_1

    .line 779
    const-string/jumbo v2, "MtkHdmiService"

    const-string/jumbo v3, "resolution is supported"

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 780
    const/4 v2, 0x1

    return v2

    .line 777
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 783
    .end local v0    # "res":I
    :cond_2
    return v3
.end method

.method private isSupportMultiChannel()Z
    .locals 2

    .prologue
    .line 290
    const/16 v0, 0x78

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getAudioParameter(II)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadHdmiSettings()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 607
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 608
    const-string/jumbo v3, "hdmi_enable_status"

    .line 607
    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    .line 610
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 611
    const-string/jumbo v3, "hdmi_video_resolution"

    .line 612
    const/16 v4, 0x64

    .line 610
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    .line 613
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 614
    const-string/jumbo v3, "hdmi_video_scale"

    .line 613
    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    .line 616
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 617
    const-string/jumbo v3, "hdmi_color_space"

    .line 616
    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiColorSpace:I

    .line 619
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 620
    const-string/jumbo v3, "hdmi_deep_color"

    .line 619
    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiDeepColor:I

    .line 622
    iput-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    .line 623
    iput-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    .line 624
    iput-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallComing:Z

    .line 625
    iput-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCallRestore:Z

    .line 606
    return-void

    :cond_0
    move v0, v2

    .line 607
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 989
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_0
    return-void
.end method

.method private needUpdate(I)Z
    .locals 4
    .param p1, "videoResolution"    # I

    .prologue
    .line 839
    const-string/jumbo v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 840
    const/4 v0, 0x1

    .line 841
    .local v0, "needUpdate":Z
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    const/4 v0, 0x0

    .line 844
    :cond_0
    const/16 v1, 0x64

    if-lt p1, v1, :cond_1

    .line 845
    const/4 v0, 0x1

    .line 847
    :cond_1
    return v0
.end method

.method private observeSettings()V
    .locals 5

    .prologue
    .line 629
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 630
    const-string/jumbo v1, "hdmi_enable_status"

    .line 629
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 631
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    .line 630
    const/4 v3, 0x0

    .line 631
    const/4 v4, -0x1

    .line 629
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 628
    return-void
.end method

.method private refreshEdid(Z)V
    .locals 8
    .param p1, "plugged"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 383
    if-eqz p1, :cond_4

    .line 384
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getResolutionMask()[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    .line 385
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    if-eqz v1, :cond_0

    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 387
    const-string/jumbo v1, "MtkHdmiService"

    const-string/jumbo v2, "mEdid[%d] = %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v1, "MtkHdmiService"

    const-string/jumbo v2, "mEdid is null!"

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    if-eqz v1, :cond_2

    .line 394
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 395
    const-string/jumbo v1, "MtkHdmiService"

    const-string/jumbo v2, "mPreEdid[%d] = %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    .end local v0    # "i":I
    :cond_2
    const-string/jumbo v1, "MtkHdmiService"

    const-string/jumbo v2, "mPreEdid is null!"

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    :cond_3
    :goto_2
    return-void

    .line 401
    :cond_4
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    iput-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    goto :goto_2
.end method

.method private registerCallListener()V
    .locals 3

    .prologue
    .line 257
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    .line 260
    const-string/jumbo v1, "phone"

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 263
    const-string/jumbo v0, "MtkHdmiService"

    const-string/jumbo v1, "register phone state change listener..."

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    :cond_1
    return-void
.end method

.method private setAudioParameters(Z)V
    .locals 7
    .param p1, "isStereoChecked"    # Z

    .prologue
    .line 345
    const/16 v3, 0x78

    .line 346
    const/4 v4, 0x3

    .line 345
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getAudioParameter(II)I

    move-result v1

    .line 347
    .local v1, "maxChannel":I
    if-eqz p1, :cond_0

    .line 348
    const/4 v1, 0x2

    .line 350
    :cond_0
    const/16 v3, 0x380

    .line 351
    const/4 v4, 0x7

    .line 350
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getAudioParameter(II)I

    move-result v2

    .line 352
    .local v2, "maxSampleate":I
    const/16 v3, 0xc00

    .line 353
    const/16 v4, 0xa

    .line 352
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getAudioParameter(II)I

    move-result v0

    .line 354
    .local v0, "maxBitwidth":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HDMI_channel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HDMI_maxsamplingrate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HDMI_bitwidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 357
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 358
    const-string/jumbo v4, "hdmi_audio_output_mode"

    iget v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    .line 359
    const/4 v6, -0x2

    .line 357
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 360
    const-string/jumbo v3, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAudioParameters mAudioOutputMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mAudioOutputMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 361
    const-string/jumbo v5, " ,maxChannel: "

    .line 360
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 361
    const-string/jumbo v5, " ,maxSampleate: "

    .line 360
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 362
    const-string/jumbo v5, " ,maxBitwidth: "

    .line 360
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method private setColorAndDeepImpl(II)Z
    .locals 1
    .param p1, "color"    # I
    .param p2, "deep"    # I

    .prologue
    .line 718
    monitor-enter p0

    .line 719
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeSetDeepColor(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setDrmKey()Z
    .locals 1

    .prologue
    .line 601
    monitor-enter p0

    .line 602
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeSetHdmiDrmKey()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setHdcpKey()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 580
    const/4 v4, 0x0

    .line 581
    .local v4, "key":[B
    const-string/jumbo v5, "NvRAMAgent"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 582
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/mediatek/hdmi/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/NvRAMAgent;

    move-result-object v0

    .line 583
    .local v0, "agent":Lcom/mediatek/hdmi/NvRAMAgent;
    if-eqz v0, :cond_1

    .line 585
    :try_start_0
    const-string/jumbo v5, "MtkHdmiService"

    const-string/jumbo v6, "Read HDCP key from nvram"

    invoke-static {v5, v6}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    const/16 v5, 0x2d

    invoke-interface {v0, v5}, Lcom/mediatek/hdmi/NvRAMAgent;->readFile(I)[B

    move-result-object v4

    .line 587
    .local v4, "key":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v5, 0x11f

    if-ge v3, v5, :cond_0

    .line 588
    const-string/jumbo v5, "MtkHdmiService"

    const-string/jumbo v6, "HDCP key[%d] = %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    aget-byte v8, v4, v3

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 590
    :cond_0
    if-eqz v4, :cond_1

    .line 591
    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeSetHdcpKey([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 593
    .end local v3    # "i":I
    .end local v4    # "key":[B
    :catch_0
    move-exception v2

    .line 594
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "MtkHdmiService"

    const-string/jumbo v6, "NvRAMAgent read file fail"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return v10
.end method

.method private setVideoResolutionImpl(II)Z
    .locals 5
    .param p1, "resolution"    # I
    .param p2, "scale"    # I

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getDisplayType()I

    move-result v1

    .line 788
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 789
    const-string/jumbo v2, "MtkHdmiService"

    const-string/jumbo v3, "revise resolution for SMB to 2"

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 790
    const/4 p1, 0x2

    .line 792
    :cond_0
    and-int/lit16 v2, p1, 0xff

    and-int/lit16 v3, p2, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int v0, v2, v3

    .line 793
    .local v0, "param":I
    const-string/jumbo v2, "MtkHdmiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set video resolution&scale: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 794
    monitor-enter p0

    .line 795
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeSetVideoConfig(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 794
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private unregisterCallListener()V
    .locals 3

    .prologue
    .line 251
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 250
    :cond_0
    return-void
.end method

.method private updateClearMotionDimmed(Z)V
    .locals 3
    .param p1, "plugged"    # Z

    .prologue
    .line 375
    sget-boolean v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_CLEARMOTION_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 376
    const-string/jumbo v1, "sys.display.clearMotion.dimmed"

    if-eqz p1, :cond_1

    const-string/jumbo v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.mediatek.clearmotion.DIMMED_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 377
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 374
    :cond_0
    return-void

    .line 376
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private updateWakeLock(ZZ)V
    .locals 1
    .param p1, "plugged"    # Z
    .param p2, "hdmiEnabled"    # Z

    .prologue
    .line 572
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeIsHdmiForceAwake()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 571
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;

    .line 637
    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "MtkHdmiService"

    .line 636
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string/jumbo v0, "MTK HDMI MANAGER (dumpsys HDMI)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HDMI mHdmiEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HDMI mHdmiVideoResolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HDMI mHdmiVideoScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HDMI mHdmiColorSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiColorSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HDMI mHdmiDeepColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiDeepColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HDMI mCapabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCapabilities:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HDMI mCablePlugged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HDMI mEdid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mEdid:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HDMI mPreEdid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mPreEdid:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HDMI mInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 635
    return-void
.end method

.method public enableHdmi(Z)Z
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 654
    const-string/jumbo v3, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enableHdmi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 655
    const/4 v2, 0x0

    .line 656
    .local v2, "ret":Z
    iget-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    if-ne p1, v3, :cond_1

    .line 657
    const-string/jumbo v3, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mHdmiEnabled is the same: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 672
    .end local v2    # "ret":Z
    :cond_0
    :goto_0
    return v2

    .line 659
    .restart local v2    # "ret":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmiImpl(Z)Z

    move-result v2

    .line 660
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 661
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 663
    .local v0, "ident":J
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    .line 664
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 665
    const-string/jumbo v5, "hdmi_enable_status"

    .line 666
    iget-boolean v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    const/4 v6, -0x2

    .line 664
    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 666
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 667
    :catchall_0
    move-exception v3

    .line 668
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    throw v3
.end method

.method public enableHdmiPower(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 956
    const-string/jumbo v1, "MtkHdmiService"

    const-string/jumbo v2, "enableHdmiPower"

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 957
    const/4 v0, 0x0

    .line 958
    .local v0, "ret":Z
    monitor-enter p0

    .line 959
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeHdmiPowerEnable(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "ret":Z
    monitor-exit p0

    .line 961
    return v0

    .line 958
    .local v0, "ret":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAudioParameter(II)I
    .locals 4
    .param p1, "mask"    # I
    .param p2, "offsets"    # I

    .prologue
    .line 367
    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCapabilities:I

    and-int/2addr v1, p1

    shr-int v0, v1, p2

    .line 368
    .local v0, "param":I
    const-string/jumbo v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioParameter() mask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,offsets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 369
    const-string/jumbo v3, " ,param: "

    .line 368
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 369
    const-string/jumbo v3, " ,mCapabilities: 0x"

    .line 368
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 370
    iget v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCapabilities:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    return v0
.end method

.method public getDisplayType()I
    .locals 3

    .prologue
    .line 926
    const-string/jumbo v1, "MtkHdmiService"

    const-string/jumbo v2, "getDisplayType"

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, "ret":I
    monitor-enter p0

    .line 929
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeGetDisplayType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    .line 931
    return v0

    .line 928
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getResolutionMask()[I
    .locals 2

    .prologue
    .line 683
    const-string/jumbo v0, "MtkHdmiService"

    const-string/jumbo v1, "getResolutionMask"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    monitor-enter p0

    .line 685
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeGetEdid()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupportedResolutions()[I
    .locals 2

    .prologue
    .line 881
    const-string/jumbo v0, "MtkHdmiService"

    const-string/jumbo v1, "getSupportedResolutions"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 882
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSupportedResolutionsImpl()[I

    move-result-object v0

    return-object v0
.end method

.method public hasCapability(I)Z
    .locals 4
    .param p1, "mask"    # I

    .prologue
    const/4 v0, 0x0

    .line 976
    const-string/jumbo v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasCapability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 977
    iget v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCapabilities:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSignalOutputting()Z
    .locals 2

    .prologue
    .line 691
    const-string/jumbo v0, "MtkHdmiService"

    const-string/jumbo v1, "isSignalOutputting"

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 692
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native nativeEnableAudio(Z)Z
.end method

.method public native nativeEnableCec(Z)Z
.end method

.method public native nativeEnableHdcp(Z)Z
.end method

.method public native nativeEnableHdmi(Z)Z
.end method

.method public native nativeEnableHdmiIpo(Z)Z
.end method

.method public native nativeEnableVideo(Z)Z
.end method

.method public native nativeGetCapabilities()I
.end method

.method public native nativeGetCecAddr()[C
.end method

.method public native nativeGetCecCmd()[I
.end method

.method public native nativeGetDisplayType()I
.end method

.method public native nativeGetEdid()[I
.end method

.method public native nativeHdmiPortraitEnable(Z)Z
.end method

.method public native nativeHdmiPowerEnable(Z)Z
.end method

.method public native nativeIsHdmiForceAwake()Z
.end method

.method public native nativeNeedSwDrmProtect()Z
.end method

.method public native nativeNotifyOtgState(I)Z
.end method

.method public native nativeSetAudioConfig(I)Z
.end method

.method public native nativeSetCecAddr(B[BCC)Z
.end method

.method public native nativeSetCecCmd(BBC[BIB)Z
.end method

.method public native nativeSetDeepColor(II)Z
.end method

.method public native nativeSetHdcpKey([B)Z
.end method

.method public native nativeSetHdmiDrmKey()Z
.end method

.method public native nativeSetVideoConfig(I)Z
.end method

.method public needSwDrmProtect()Z
    .locals 3

    .prologue
    .line 966
    const-string/jumbo v1, "MtkHdmiService"

    const-string/jumbo v2, "needSwDrmProtect"

    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, "ret":Z
    monitor-enter p0

    .line 969
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeNeedSwDrmProtect()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "ret":Z
    monitor-exit p0

    .line 971
    return v0

    .line 968
    .local v0, "ret":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public notifyHdVideoState(Z)V
    .locals 3
    .param p1, "playing"    # Z

    .prologue
    .line 936
    const-string/jumbo v0, "MtkHdmiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyHdVideoState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 937
    monitor-enter p0

    .line 938
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    .line 939
    return-void

    .line 941
    :cond_0
    :try_start_1
    const-string/jumbo v0, "MtkHdmiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsHdVideoPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 942
    const-string/jumbo v2, " mNeedRestore: "

    .line 941
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 942
    iget-boolean v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    .line 941
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 943
    iput-boolean p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    .line 944
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsHdVideoPlaying:Z

    if-nez v0, :cond_1

    .line 945
    iget-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    if-eqz v0, :cond_1

    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdVideoRestore:Z

    .line 947
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmi(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 935
    return-void

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setColorAndDeep(II)Z
    .locals 6
    .param p1, "color"    # I
    .param p2, "deep"    # I

    .prologue
    .line 697
    const-string/jumbo v3, "MtkHdmiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setColorAndDeep: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 698
    invoke-direct {p0, p1, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setColorAndDeepImpl(II)Z

    move-result v2

    .line 699
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 700
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 702
    .local v0, "ident":J
    :try_start_0
    iput p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiColorSpace:I

    .line 703
    iput p2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiDeepColor:I

    .line 704
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 705
    const-string/jumbo v4, "hdmi_color_space"

    .line 706
    const/4 v5, -0x2

    .line 704
    invoke-static {v3, v4, p1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 707
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 708
    const-string/jumbo v4, "hdmi_deep_color"

    .line 709
    const/4 v5, -0x2

    .line 707
    invoke-static {v3, v4, p2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    .end local v0    # "ident":J
    :cond_0
    return v2

    .line 710
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    .line 711
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    throw v3
.end method

.method public setVideoResolution(I)Z
    .locals 9
    .param p1, "resolution"    # I

    .prologue
    const/16 v8, 0x64

    .line 725
    const-string/jumbo v5, "MtkHdmiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setVideoResolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 726
    const/4 v1, 0x0

    .line 727
    .local v1, "ret":Z
    move v4, p1

    .line 728
    .local v4, "suitableResolution":I
    if-lt p1, v8, :cond_0

    .line 729
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->getSuitableResolution(I)I

    move-result v4

    .line 731
    :cond_0
    iget v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    if-ne v4, v5, :cond_1

    .line 732
    const-string/jumbo v5, "MtkHdmiService"

    const-string/jumbo v6, "setVideoResolution is the same"

    invoke-static {v5, v6}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 734
    :cond_1
    if-lt v4, v8, :cond_3

    .line 735
    add-int/lit8 v0, v4, -0x64

    .line 736
    .local v0, "finalResolution":I
    :goto_0
    const-string/jumbo v5, "MtkHdmiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "final video resolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " scale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 737
    iget v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    invoke-direct {p0, v0, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setVideoResolutionImpl(II)Z

    move-result v1

    .line 738
    .local v1, "ret":Z
    if-eqz v1, :cond_2

    .line 739
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 741
    .local v2, "ident":J
    :try_start_0
    iput v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    .line 742
    iget-object v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 743
    const-string/jumbo v6, "hdmi_video_resolution"

    .line 744
    iget v7, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    const/4 v8, -0x2

    .line 742
    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 749
    .end local v2    # "ident":J
    :cond_2
    return v1

    .line 735
    .end local v0    # "finalResolution":I
    .local v1, "ret":Z
    :cond_3
    move v0, v4

    .restart local v0    # "finalResolution":I
    goto :goto_0

    .line 745
    .local v1, "ret":Z
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v5

    .line 746
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 745
    throw v5
.end method

.method public setVideoScale(I)Z
    .locals 8
    .param p1, "scale"    # I

    .prologue
    .line 853
    const-string/jumbo v4, "MtkHdmiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setVideoScale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 854
    const/4 v1, 0x0

    .line 855
    .local v1, "ret":Z
    if-ltz p1, :cond_0

    const/16 v4, 0xa

    if-gt p1, v4, :cond_0

    .line 856
    const/4 v1, 0x1

    .line 858
    :cond_0
    if-eqz v1, :cond_1

    .line 859
    iput p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    .line 860
    iget v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    const/16 v5, 0x64

    if-lt v4, v5, :cond_2

    .line 861
    iget v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    add-int/lit8 v0, v4, -0x64

    .line 862
    .local v0, "finalResolution":I
    :goto_0
    const-string/jumbo v4, "MtkHdmiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set video resolution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " scale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 863
    iget v6, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    .line 862
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 864
    iget v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    invoke-direct {p0, v0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->setVideoResolutionImpl(II)Z

    move-result v1

    .line 865
    .local v1, "ret":Z
    if-eqz v1, :cond_1

    .line 866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 868
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 869
    const-string/jumbo v5, "hdmi_video_scale"

    iget v6, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoScale:I

    .line 870
    const/4 v7, -0x2

    .line 868
    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 876
    .end local v0    # "finalResolution":I
    .end local v1    # "ret":Z
    .end local v2    # "ident":J
    :cond_1
    return v1

    .line 861
    .local v1, "ret":Z
    :cond_2
    iget v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiVideoResolution:I

    .restart local v0    # "finalResolution":I
    goto :goto_0

    .line 871
    .local v1, "ret":Z
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v4

    .line 872
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    throw v4
.end method
