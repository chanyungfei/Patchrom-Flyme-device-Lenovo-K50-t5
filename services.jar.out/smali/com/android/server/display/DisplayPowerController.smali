.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$UpdateConfigReceiver;,
        Lcom/android/server/display/DisplayPowerController$1;,
        Lcom/android/server/display/DisplayPowerController$2;,
        Lcom/android/server/display/DisplayPowerController$3;,
        Lcom/android/server/display/DisplayPowerController$4;,
        Lcom/android/server/display/DisplayPowerController$5;,
        Lcom/android/server/display/DisplayPowerController$6;,
        Lcom/android/server/display/DisplayPowerController$7;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0xc8

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x28

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x190

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final LOW_DIMMING_PROTECTION_DURATION:J = 0x1388L

.field private static final LOW_DIMMING_PROTECTION_SUPPORT:Z

.field private static final LOW_DIMMING_PROTECTION_THRESHOLD:I = 0x28

.field private static final MSG_PROTECT_LOW_DIMMING:I = 0x64

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final MTK_AAL_LOW_DIMMING_PROTECTION_TRIGGERED:Ljava/lang/String; = "com.mediatek.aal.low_dimming_protection_triggered"

.field public static final MTK_AAL_RUNTIME_TUNING_SUPPORT:Z

.field public static final MTK_AAL_SUPPORT:Z

.field private static final MTK_AAL_UPDATE_CONFIG_ACTION:Ljava/lang/String; = "com.mediatek.aal.update_config"

.field public static final MTK_ULTRA_DIMMING_SUPPORT:Z

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0xfa

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TUNING_ALI2BLI_CURVE:I = 0x1

.field private static final TUNING_ALI2BLI_CURVE_LENGTH:I = 0x0

.field private static final TUNING_BLI_RAMP_RATE_BRIGHTEN:I = 0x2

.field private static final TUNING_BLI_RAMP_RATE_DARKEN:I = 0x3

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z


# instance fields
.field private BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

.field private BRIGHTNESS_RAMP_RATE_DARKEN:I

.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

.field private mBackLightGamma:F

.field private mBackLightMaximum:I

.field private mBackLightMinimum:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mDisplayReadyLocked:Z

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private mIPOShutDown:Z

.field private mLastBackLightGamma:F

.field private mLastPowerPolicy:I

.field private final mLock:Ljava/lang/Object;

.field private mLowDimmingProtectionEnabled:Z

.field private mLowDimmingProtectionTriggerBrightness:I

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenOff:Z

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

.field private mReportedScreenStateToPolicy:I

.field private final mScreenBrightnessDarkConfig:I

.field private final mScreenBrightnessDimConfig:I

.field private final mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/autobrightness/RampAnimatorLenovo",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShutDown:Z

.field private mTuningAli2BliSerial:I

.field private mTuningBliBrightenSerial:I

.field private mTuningBliDarkenSerial:I

.field private mTuningInitCurve:[I

.field private mTuningQuicklyApply:Z

.field private mUnfinishedBusiness:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private final mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIPOShutDown:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mShutDown:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mTuningQuicklyApply:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->handleProtectLowDimming()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const-class v0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->-assertionsDisabled:Z

    .line 106
    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 145
    const-string/jumbo v0, "ro.mtk_aal_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 144
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_SUPPORT:Z

    .line 147
    sget-boolean v0, Landroid/os/PowerManager;->MTK_ULTRA_DIMMING_SUPPORT:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->MTK_ULTRA_DIMMING_SUPPORT:Z

    .line 150
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->nativeRuntimeTuningIsSupported()Z

    move-result v0

    .line 149
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_RUNTIME_TUNING_SUPPORT:Z

    .line 1763
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->MTK_ULTRA_DIMMING_SUPPORT:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->LOW_DIMMING_PROTECTION_SUPPORT:Z

    .line 101
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;

    .prologue
    .line 323
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/16 v4, 0x28

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    .line 142
    const/16 v4, 0x28

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    .line 158
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 258
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 261
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 262
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 297
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastPowerPolicy:I

    .line 310
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIPOShutDown:Z

    .line 312
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mShutDown:Z

    .line 315
    const/high16 v4, 0x7fc00000    # NaNf

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mBackLightGamma:F

    .line 316
    const/high16 v4, 0x7fc00000    # NaNf

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastBackLightGamma:F

    .line 317
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mBackLightMinimum:I

    .line 318
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mBackLightMaximum:I

    .line 616
    new-instance v4, Lcom/android/server/display/DisplayPowerController$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 634
    new-instance v4, Lcom/android/server/display/DisplayPowerController$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

    .line 1255
    new-instance v4, Lcom/android/server/display/DisplayPowerController$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1358
    new-instance v4, Lcom/android/server/display/DisplayPowerController$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1371
    new-instance v4, Lcom/android/server/display/DisplayPowerController$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1384
    new-instance v4, Lcom/android/server/display/DisplayPowerController$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 1563
    new-instance v4, Lcom/android/server/display/DisplayPowerController$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1640
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mTuningInitCurve:[I

    .line 1641
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mTuningAli2BliSerial:I

    .line 1642
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mTuningBliBrightenSerial:I

    .line 1643
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mTuningBliDarkenSerial:I

    .line 1644
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mTuningQuicklyApply:Z

    .line 1776
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionEnabled:Z

    .line 1777
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionTriggerBrightness:I

    .line 326
    new-instance v4, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 327
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 329
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 330
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 331
    const-class v4, Landroid/view/WindowManagerPolicy;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    .line 332
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 333
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 337
    .local v24, "resources":Landroid/content/res/Resources;
    const/16 v27, 0x0

    .line 338
    .local v27, "screenBrightnessVirtualValues":Z
    sget-boolean v4, Lcom/android/server/display/DisplayPowerController;->MTK_ULTRA_DIMMING_SUPPORT:Z

    if-eqz v4, :cond_0

    .line 340
    const v4, 0x80c0007

    .line 339
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    .line 345
    .end local v27    # "screenBrightnessVirtualValues":Z
    :cond_0
    const v4, 0x10e005b

    .line 344
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move/from16 v0, v27

    invoke-static {v4, v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(IZ)I

    move-result v26

    .line 347
    .local v26, "screenBrightnessSettingMinimum":I
    sget-boolean v4, Lcom/android/server/display/DisplayPowerController;->MTK_ULTRA_DIMMING_SUPPORT:Z

    if-eqz v4, :cond_1

    .line 348
    const/16 v26, 0x1

    .line 352
    :cond_1
    const v4, 0x10e005e

    .line 351
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move/from16 v0, v27

    invoke-static {v4, v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(IZ)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 356
    const v4, 0x10e0062

    .line 355
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move/from16 v0, v27

    invoke-static {v4, v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(IZ)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 360
    const v4, 0x10e0063

    .line 359
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move/from16 v0, v27

    invoke-static {v4, v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(IZ)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 362
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v4, v5, :cond_2

    .line 363
    const-string/jumbo v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expected config_screenBrightnessDark ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 364
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 363
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 364
    const-string/jumbo v6, ") to be less than or equal to "

    .line 363
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 365
    const-string/jumbo v6, "config_screenBrightnessDim ("

    .line 363
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 365
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 363
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 365
    const-string/jumbo v6, ")."

    .line 363
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v4, v5, :cond_3

    .line 368
    const-string/jumbo v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expected config_screenBrightnessDark ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 369
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 368
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 369
    const-string/jumbo v6, ") to be less than or equal to "

    .line 368
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 370
    const-string/jumbo v6, "config_screenBrightnessSettingMinimum ("

    .line 368
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 371
    const-string/jumbo v6, ")."

    .line 368
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 374
    move/from16 v0, v26

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 376
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 374
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 378
    .local v11, "screenBrightnessRangeMinimum":I
    const/16 v4, 0xff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 381
    const v4, 0x1120021

    .line 380
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 384
    const v4, 0x1120045

    .line 383
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 387
    const v4, 0x10e0061

    .line 386
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    .line 389
    .local v22, "lightSensorRate":I
    const v4, 0x10e005f

    .line 388
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v16, v0

    .line 391
    .local v16, "brighteningLightDebounce":J
    const v4, 0x10e0060

    .line 390
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v20, v0

    .line 393
    .local v20, "darkeningLightDebounce":J
    const v4, 0x1120046

    .line 392
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 395
    .local v14, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v4, :cond_4

    .line 397
    const v4, 0x1070025

    .line 396
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v23

    .line 399
    .local v23, "lux":[I
    const v4, 0x1070026

    .line 398
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v25

    .line 401
    .local v25, "screenBrightness":[I
    const v4, 0x10e0064

    .line 400
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 403
    .local v10, "lightSensorWarmUpTimeConfig":I
    const v4, 0x1130001

    .line 404
    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 402
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v13

    .line 407
    .local v13, "dozeScaleFactor":F
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayPowerController;->createAutoBrightnessSpline([I[IZ)Landroid/util/Spline;

    move-result-object v9

    .line 409
    .local v9, "screenAutoBrightnessSpline":Landroid/util/Spline;
    if-nez v9, :cond_7

    .line 410
    const-string/jumbo v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 411
    move-object/from16 v0, v25

    array-length v6, v0

    .line 410
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 411
    const-string/jumbo v6, ") "

    .line 410
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 412
    const-string/jumbo v6, "must be monotic and have exactly one more entry than "

    .line 410
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 413
    const-string/jumbo v6, "config_autoBrightnessLevels (size "

    .line 410
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 413
    move-object/from16 v0, v23

    array-length v6, v0

    .line 410
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 413
    const-string/jumbo v6, ") "

    .line 410
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 414
    const-string/jumbo v6, "which must be strictly increasing.  "

    .line 410
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 415
    const-string/jumbo v6, "Auto-brightness will be disabled."

    .line 410
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 457
    .end local v9    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .end local v10    # "lightSensorWarmUpTimeConfig":I
    .end local v13    # "dozeScaleFactor":F
    .end local v23    # "lux":[I
    .end local v25    # "screenBrightness":[I
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 460
    const v4, 0x1120025

    .line 459
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_5

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    .line 466
    const/high16 v5, 0x40a00000    # 5.0f

    .line 465
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 470
    :cond_5
    sget-boolean v4, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_RUNTIME_TUNING_SUPPORT:Z

    if-eqz v4, :cond_6

    .line 471
    new-instance v19, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.mediatek.aal.update_config"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 472
    .local v19, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/display/DisplayPowerController$UpdateConfigReceiver;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/display/DisplayPowerController$UpdateConfigReceiver;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$UpdateConfigReceiver;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 475
    .end local v19    # "filter":Landroid/content/IntentFilter;
    :cond_6
    new-instance v19, Landroid/content/IntentFilter;

    invoke-direct/range {v19 .. v19}, Landroid/content/IntentFilter;-><init>()V

    .line 476
    .restart local v19    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string/jumbo v4, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/display/DisplayPowerController$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    return-void

    .line 418
    .end local v19    # "filter":Landroid/content/IntentFilter;
    .restart local v9    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .restart local v10    # "lightSensorWarmUpTimeConfig":I
    .restart local v13    # "dozeScaleFactor":F
    .restart local v23    # "lux":[I
    .restart local v25    # "screenBrightness":[I
    :cond_7
    const/4 v4, 0x0

    aget v4, v25, v4

    move/from16 v0, v27

    invoke-static {v4, v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(IZ)I

    move-result v15

    .line 420
    .local v15, "bottom":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    if-le v4, v15, :cond_8

    .line 421
    const-string/jumbo v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "config_screenBrightnessDark ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 422
    const-string/jumbo v6, ") should be less than or equal to the first value of "

    .line 421
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 423
    const-string/jumbo v6, "config_autoBrightnessLcdBacklightValues ("

    .line 421
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 424
    const-string/jumbo v6, ")."

    .line 421
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_8
    if-ge v15, v11, :cond_9

    .line 427
    move v11, v15

    .line 437
    :cond_9
    new-instance v4, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 440
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    move-object/from16 v8, p4

    .line 437
    invoke-direct/range {v4 .. v13}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;-><init>(Landroid/content/Context;Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIF)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .line 444
    sget-boolean v4, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_SUPPORT:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, v23

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v25

    array-length v5, v0

    if-ne v4, v5, :cond_4

    .line 445
    move-object/from16 v0, v23

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v25

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v0, v4, [I

    move-object/from16 v18, v0

    .line 446
    .local v18, "curve":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v18, v5

    .line 447
    move-object/from16 v0, v23

    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v0, v5, v1, v6, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 449
    move-object/from16 v0, v23

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v25

    array-length v5, v0

    .line 448
    const/4 v6, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 452
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mTuningInitCurve:[I

    goto/16 :goto_0
.end method

.method private animateScreenBrightness(II)V
    .locals 4
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .line 1129
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1130
    const-string/jumbo v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Animating brightness: target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    .line 1135
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_2

    const/4 v1, 0x1

    .line 1136
    :goto_0
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mLastPowerPolicy:I

    .line 1134
    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->animateTo(IIZI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1139
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    :cond_1
    :goto_1
    return-void

    .line 1135
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1140
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private animateScreenStateChange(IZ)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1148
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1149
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    .line 1148
    if-eqz v2, :cond_1

    .line 1150
    :cond_0
    return-void

    .line 1156
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v2, :cond_2

    if-eq p1, v1, :cond_2

    .line 1157
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1158
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1161
    :cond_2
    if-ne p1, v0, :cond_4

    .line 1165
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1166
    return-void

    .line 1182
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1183
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 1146
    :goto_0
    return-void

    .line 1185
    :cond_4
    if-ne p1, v5, :cond_7

    .line 1190
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    invoke-virtual {v1}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1191
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 1192
    return-void

    .line 1196
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1197
    return-void

    .line 1201
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1202
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 1203
    :cond_7
    if-ne p1, v3, :cond_b

    .line 1207
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    invoke-virtual {v0}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1208
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 1209
    return-void

    .line 1214
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_a

    .line 1215
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1216
    return-void

    .line 1218
    :cond_9
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1222
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1223
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 1226
    :cond_b
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1229
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1234
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_c

    .line 1238
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    goto :goto_0

    .line 1240
    :cond_c
    if-eqz p2, :cond_e

    .line 1241
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 1242
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_d

    .line 1241
    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    .line 1240
    if-eqz v0, :cond_e

    .line 1244
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v1, :cond_e

    .line 1246
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    .line 1243
    goto :goto_1

    .line 1250
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    goto/16 :goto_0
.end method

.method private blockScreenOn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1059
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    .line 1060
    const-string/jumbo v0, "Screen on blocked"

    const-wide/32 v2, 0x80000

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1061
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-direct {v0, p0, v4}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1062
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 1063
    const-string/jumbo v0, "DisplayPowerController"

    const-string/jumbo v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_0
    return-void
.end method

.method private static clampAbsoluteBrightness(IZ)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "virtualValue"    # Z

    .prologue
    .line 1528
    if-nez p1, :cond_0

    .line 1529
    invoke-static {p0}, Landroid/os/PowerManager;->dimmingPhysicalToVirtual(I)I

    move-result p0

    .line 1530
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1125
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 1124
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .prologue
    .line 1340
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1341
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1342
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 1339
    :cond_0
    return-void
.end method

.method private static createAutoBrightnessSpline([I[IZ)Landroid/util/Spline;
    .locals 13
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I
    .param p2, "virtualValues"    # Z

    .prologue
    const/high16 v12, 0x3fa00000    # 1.25f

    .line 1497
    :try_start_0
    array-length v2, p1

    .line 1498
    .local v2, "n":I
    new-array v5, v2, [F

    .line 1499
    .local v5, "x":[F
    new-array v6, v2, [F

    .line 1501
    .local v6, "y":[F
    const/4 v7, 0x0

    aget v7, p1, v7

    invoke-static {v7, p2}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(IZ)F

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    .line 1502
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1503
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 1504
    aget v7, p1, v1

    invoke-static {v7, p2}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(IZ)F

    move-result v7

    aput v7, v6, v1

    .line 1502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1507
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 1508
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1509
    const-string/jumbo v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "v":F
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 1511
    const-string/jumbo v7, "DisplayPowerController"

    const-string/jumbo v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    mul-float/2addr v4, v12

    goto :goto_1

    .line 1514
    .end local v4    # "v":F
    :cond_1
    return-object v3

    .line 1515
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    .line 1516
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "DisplayPowerController"

    const-string/jumbo v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1517
    const/4 v7, 0x0

    return-object v7
.end method

.method private debounceProximitySensor()V
    .locals 8

    .prologue
    .line 1320
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v1, :cond_0

    .line 1321
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 1322
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 1323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1324
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    .line 1326
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1327
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 1328
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1319
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 1332
    .restart local v2    # "now":J
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1333
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1334
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1425
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1426
    const-string/jumbo v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1436
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    .line 1435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1446
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    invoke-virtual {v1}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->isAnimating()Z

    move-result v1

    .line 1445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1450
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    .line 1449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1454
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    .line 1453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 1458
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 1461
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    if-eqz v0, :cond_3

    .line 1462
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-virtual {v0, p1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->dump(Ljava/io/PrintWriter;)V

    .line 1424
    :cond_3
    return-void
.end method

.method private getBrightnessSetting()I
    .locals 4

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1795
    const-string/jumbo v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    .line 1796
    const/4 v3, -0x2

    .line 1794
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getNewBacklight(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/16 v3, 0xcd

    const/16 v2, 0x80

    const/16 v1, 0xa

    .line 1591
    move v0, p1

    .line 1592
    .local v0, "newLevel":I
    if-ltz p1, :cond_1

    if-gt p1, v1, :cond_1

    .line 1593
    move v0, p1

    .line 1601
    :cond_0
    :goto_0
    int-to-float v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1602
    return v0

    .line 1594
    :cond_1
    if-gt p1, v2, :cond_2

    if-le p1, v1, :cond_2

    .line 1595
    mul-int/lit8 v1, p1, 0x41

    add-int/lit16 v1, v1, 0x212

    div-int/lit8 v0, v1, 0x76

    goto :goto_0

    .line 1596
    :cond_2
    if-gt p1, v3, :cond_3

    if-le p1, v2, :cond_3

    .line 1597
    mul-int/lit8 v1, p1, 0x50

    add-int/lit16 v1, v1, -0x1171

    div-int/lit8 v0, v1, 0x4d

    goto :goto_0

    .line 1598
    :cond_3
    const/16 v1, 0xff

    if-gt p1, v1, :cond_0

    if-le p1, v3, :cond_0

    .line 1599
    mul-int/lit8 v1, p1, 0x2

    add-int/lit16 v0, v1, -0xff

    goto :goto_0
.end method

.method private handleProtectLowDimming()V
    .locals 5

    .prologue
    .line 1801
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-nez v2, :cond_0

    .line 1802
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->protectedMinimumBrightness()I

    move-result v1

    .line 1804
    .local v1, "minBrightness":I
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->isScreenStateBright()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1805
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v2, :cond_1

    .line 1824
    .end local v1    # "minBrightness":I
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionTriggerBrightness:I

    .line 1800
    return-void

    .line 1806
    .restart local v1    # "minBrightness":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessSetting()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    if-ne v2, v3, :cond_0

    .line 1807
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    const/16 v3, 0x28

    if-ge v2, v3, :cond_0

    .line 1808
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    if-ge v2, v1, :cond_0

    .line 1810
    const-string/jumbo v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Low dimming protection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1811
    const-string/jumbo v4, " -> "

    .line 1810
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1811
    const-string/jumbo v4, ", auto = "

    .line 1810
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1812
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-virtual {v4}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->getAutomaticScreenBrightness()I

    move-result v4

    .line 1810
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1815
    const-string/jumbo v3, "screen_brightness"

    .line 1816
    const/4 v4, -0x2

    .line 1814
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1818
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.mediatek.aal.low_dimming_protection_triggered"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1819
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1292
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_3

    .line 1293
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    .line 1296
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v3, :cond_2

    if-eqz p3, :cond_2

    .line 1297
    return-void

    .line 1294
    :cond_1
    return-void

    .line 1303
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1304
    if-eqz p3, :cond_4

    .line 1305
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1307
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    .line 1306
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 1315
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    .line 1291
    :cond_3
    return-void

    .line 1309
    :cond_4
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1311
    const-wide/16 v0, 0xfa

    add-long/2addr v0, p1

    .line 1310
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    .line 581
    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 582
    new-instance v2, Lcom/android/server/display/ColorFade;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/display/ColorFade;-><init>(I)V

    .line 581
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 585
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    .line 584
    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 586
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 587
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    .line 589
    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 591
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 592
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 598
    new-instance v0, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    .line 599
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    .line 600
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 601
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-virtual {v4}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->getStateManager()Lcom/android/server/display/autobrightness/StateManager;

    move-result-object v4

    .line 602
    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 598
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;Landroid/content/Context;Lcom/android/server/display/autobrightness/StateManager;I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    .line 605
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->setListener(Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;)V

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 610
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 584
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 589
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isScreenStateBright()Z
    .locals 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeGetTuningInt(I)I
.end method

.method private static native nativeGetTuningIntArray(I[I)V
.end method

.method private static native nativeGetTuningSerial(I)I
.end method

.method private static native nativeRuntimeTuningIsSupported()Z
.end method

.method public static native nativeSetDebouncedAmbientLight(I)V
.end method

.method private static native nativeSetTuningInt(II)I
.end method

.method private static native nativeSetTuningIntArray(I[I)I
.end method

.method private static normalizeAbsoluteBrightness(IZ)F
    .locals 2
    .param p0, "value"    # I
    .param p1, "virtualValue"    # Z

    .prologue
    .line 1523
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(IZ)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private protectedMinimumBrightness()I
    .locals 2

    .prologue
    .line 1784
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-virtual {v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->getAutomaticScreenBrightness()I

    move-result v0

    .line 1789
    .local v0, "autoBrightness":I
    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    .line 1790
    const/4 v1, 0x1

    .line 1789
    :goto_0
    return v1

    .line 1790
    :cond_0
    const/16 v1, 0x28

    goto :goto_0
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1468
    packed-switch p0, :pswitch_data_0

    .line 1476
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1470
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 1472
    :pswitch_1
    const-string/jumbo v0, "Negative"

    return-object v0

    .line 1474
    :pswitch_2
    const-string/jumbo v0, "Positive"

    return-object v0

    .line 1468
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1481
    packed-switch p0, :pswitch_data_0

    .line 1489
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1483
    :pswitch_0
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0

    .line 1485
    :pswitch_1
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    .line 1487
    :pswitch_2
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    .line 1481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1381
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1379
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1368
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1366
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1355
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1353
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 563
    return-void

    .line 564
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 570
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 571
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 572
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 573
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 574
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 569
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 5
    .param p1, "debounceTime"    # J

    .prologue
    .line 1347
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1350
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1346
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, -0x1

    .line 1263
    if-eqz p1, :cond_2

    .line 1264
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    .line 1265
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1266
    const-string/jumbo v0, "DisplayPowerController"

    const-string/jumbo v1, "setProximitySensorEnabled : True"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1271
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 1272
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x3

    .line 1271
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1262
    :cond_1
    :goto_0
    return-void

    .line 1275
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    .line 1276
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1277
    const-string/jumbo v0, "DisplayPowerController"

    const-string/jumbo v1, "setProximitySensorEnabled : False"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1282
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1283
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1284
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1285
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1286
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0
.end method

.method private setScreenState(I)Z
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1077
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v5

    if-eq v5, p1, :cond_0

    .line 1078
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v5

    if-eq v5, v3, :cond_3

    const/4 v2, 0x1

    .line 1079
    .local v2, "wasOn":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 1083
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    .end local v2    # "wasOn":Z
    :cond_0
    :goto_1
    if-ne p1, v3, :cond_4

    const/4 v1, 0x1

    .line 1096
    .local v1, "isOff":Z
    :goto_2
    if-eqz v1, :cond_1

    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v5, :cond_1

    .line 1097
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v5, :cond_5

    .line 1101
    :cond_1
    if-nez v1, :cond_2

    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-nez v5, :cond_2

    .line 1102
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 1103
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_7

    .line 1105
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mIPOShutDown:Z

    if-eqz v5, :cond_6

    .line 1106
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1107
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 1108
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mIPOShutDown:Z

    .line 1109
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1116
    :goto_3
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1120
    :cond_2
    :goto_4
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v5, :cond_8

    :goto_5
    return v3

    .line 1078
    .end local v1    # "isOff":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "wasOn":Z
    goto :goto_0

    .line 1095
    .end local v2    # "wasOn":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isOff":Z
    goto :goto_2

    .line 1098
    :cond_5
    iput v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 1099
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1100
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->screenTurnedOff()V

    goto :goto_4

    .line 1111
    :cond_6
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_3

    .line 1114
    :cond_7
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    goto :goto_3

    :cond_8
    move v3, v4

    .line 1120
    goto :goto_5

    .line 1084
    .end local v1    # "isOff":Z
    .restart local v2    # "wasOn":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1068
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v2, :cond_0

    .line 1069
    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1070
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long v0, v2, v4

    .line 1071
    .local v0, "delay":J
    const-string/jumbo v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const-string/jumbo v2, "Screen on blocked"

    const-wide/32 v4, 0x80000

    const/4 v3, 0x0

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1067
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private updateBrightness(IZ)I
    .locals 4
    .param p1, "brightness"    # I
    .param p2, "autoBrightnessEnabled"    # Z

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 1618
    move v0, p1

    .line 1619
    .local v0, "value":I
    if-eqz p2, :cond_0

    .line 1621
    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    .line 1622
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mBackLightGamma:F

    .line 1620
    invoke-static {v1, v2}, Landroid/util/FloatMath;->pow(FF)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1626
    :cond_0
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBackLightMinimum:I

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mBackLightMaximum:I

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 1627
    const-string/jumbo v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "App Update Brightness, old brightness= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1628
    const-string/jumbo v3, " new brightness= "

    .line 1627
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    return v0
.end method

.method private updatePowerState()V
    .locals 24

    .prologue
    .line 647
    const/4 v13, 0x0

    .line 648
    .local v13, "mustInitialize":Z
    const/4 v4, 0x0

    .line 650
    .local v4, "autoBrightnessAdjustmentChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 651
    const/16 v20, 0x0

    :try_start_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v20, :cond_0

    monitor-exit v21

    .line 653
    return-void

    .line 656
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 657
    new-instance v20, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 658
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 659
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 660
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 661
    const/4 v13, 0x1

    .line 672
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    move/from16 v20, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v20, :cond_7

    const/4 v14, 0x0

    .local v14, "mustNotify":Z
    :goto_1
    monitor-exit v21

    .line 676
    if-eqz v13, :cond_2

    .line 677
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    .line 679
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_RUNTIME_TUNING_SUPPORT:Z

    if-eqz v20, :cond_2

    .line 680
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->writeInitConfig()V

    .line 683
    :cond_2
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_RUNTIME_TUNING_SUPPORT:Z

    if-eqz v20, :cond_3

    .line 684
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateRuntimeConfig()V

    .line 690
    :cond_3
    const/4 v7, -0x1

    .line 691
    .local v7, "brightness":I
    const/4 v15, 0x0

    .line 692
    .local v15, "performScreenOffTransition":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 722
    :goto_2
    const/16 v19, 0x2

    .line 725
    .local v19, "state":I
    :cond_4
    :goto_3
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->-assertionsDisabled:Z

    if-nez v20, :cond_b

    if-eqz v19, :cond_a

    const/16 v20, 0x1

    :goto_4
    if-nez v20, :cond_b

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 662
    .end local v7    # "brightness":I
    .end local v14    # "mustNotify":Z
    .end local v15    # "performScreenOffTransition":Z
    .end local v19    # "state":I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move/from16 v20, v0

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move/from16 v22, v0

    .line 663
    cmpl-float v20, v20, v22

    if-eqz v20, :cond_6

    const/4 v4, 0x1

    .line 665
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 666
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    move/from16 v22, v0

    or-int v20, v20, v22

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 667
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 668
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 669
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 650
    :catchall_0
    move-exception v20

    monitor-exit v21

    throw v20

    .line 663
    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    .line 672
    :cond_7
    const/4 v14, 0x1

    .restart local v14    # "mustNotify":Z
    goto/16 :goto_1

    .line 694
    .restart local v7    # "brightness":I
    .restart local v15    # "performScreenOffTransition":Z
    :pswitch_0
    const/16 v19, 0x1

    .line 696
    .restart local v19    # "state":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mShutDown:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 697
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mShutDown:Z

    goto/16 :goto_3

    .line 698
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mIPOShutDown:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    goto/16 :goto_3

    .line 707
    .end local v19    # "state":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    move/from16 v19, v0

    .line 712
    .restart local v19    # "state":I
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v7, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto/16 :goto_3

    .line 710
    .end local v19    # "state":I
    :cond_9
    const/16 v19, 0x3

    .restart local v19    # "state":I
    goto :goto_6

    .line 718
    .end local v19    # "state":I
    :pswitch_2
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    goto/16 :goto_2

    .line 725
    .restart local v19    # "state":I
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 728
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    move-object/from16 v20, v0

    if-eqz v20, :cond_32

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2e

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2e

    .line 730
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 731
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 733
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 734
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    .line 752
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 753
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    .line 754
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 755
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 760
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 761
    const/16 v19, 0x1

    .line 765
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mIPOShutDown:Z

    .line 770
    .local v11, "ipoShutdown":Z
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v19

    .line 774
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 775
    const/4 v7, 0x0

    .line 779
    :cond_f
    const/4 v5, 0x0

    .line 780
    .local v5, "autoBrightnessEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    .line 781
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    move/from16 v20, v0

    if-eqz v20, :cond_34

    .line 782
    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_33

    :cond_10
    const/4 v6, 0x1

    .line 783
    .local v6, "autoBrightnessEnabledInDoze":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    move/from16 v20, v0

    if-eqz v20, :cond_36

    .line 784
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    .line 783
    if-eqz v6, :cond_36

    .line 785
    :cond_11
    if-gez v7, :cond_35

    const/4 v5, 0x1

    .line 794
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    move-object/from16 v22, v0

    if-nez v5, :cond_37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionEnabled:Z

    move/from16 v20, v0

    .line 795
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move/from16 v23, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_38

    const/16 v21, 0x1

    .line 794
    :goto_c
    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->configure(ZFZ)V

    .line 806
    .end local v6    # "autoBrightnessEnabledInDoze":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    .line 807
    if-eqz v7, :cond_13

    .line 808
    const/16 v7, 0xff

    .line 812
    :cond_13
    const/16 v18, 0x0

    .line 813
    .local v18, "slowChange":Z
    if-gez v7, :cond_3c

    .line 814
    if-eqz v5, :cond_14

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->getAutomaticScreenBrightness()I

    move-result v7

    .line 817
    :cond_14
    if-ltz v7, :cond_3a

    .line 819
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v7

    .line 823
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15

    if-eqz v4, :cond_39

    .line 828
    :cond_15
    :goto_d
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 856
    :cond_16
    :goto_e
    if-gez v7, :cond_18

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    .line 857
    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 858
    :cond_17
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 865
    :cond_18
    if-gez v7, :cond_1a

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v7

    .line 869
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->LOW_DIMMING_PROTECTION_SUPPORT:Z

    if-eqz v20, :cond_1a

    .line 870
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isScreenStateBright()Z

    move-result v20

    if-nez v20, :cond_19

    .line 875
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionTriggerBrightness:I

    .line 878
    :cond_19
    const/16 v20, 0x28

    move/from16 v0, v20

    if-ge v7, v0, :cond_3d

    const/16 v20, 0x1

    :goto_f
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionEnabled:Z

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    move-object/from16 v22, v0

    .line 890
    if-nez v5, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionEnabled:Z

    move/from16 v20, v0

    .line 891
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move/from16 v23, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3f

    const/16 v21, 0x1

    .line 889
    :goto_11
    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->configure(ZFZ)V

    .line 897
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->protectedMinimumBrightness()I

    move-result v12

    .line 898
    .local v12, "minBrightness":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessSetting()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 899
    if-ge v7, v12, :cond_1a

    .line 900
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionTriggerBrightness:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v7, v0, :cond_1a

    .line 901
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isScreenStateBright()Z

    move-result v20

    .line 898
    if-eqz v20, :cond_1a

    .line 903
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 904
    .local v8, "current":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-object/from16 v20, v0

    .line 906
    const-wide/16 v22, 0x1388

    add-long v22, v22, v8

    .line 905
    const/16 v21, 0x64

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 908
    const-string/jumbo v20, "DisplayPowerController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Trigger low dimming protection : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 909
    const-string/jumbo v22, " < "

    .line 908
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 909
    const-string/jumbo v22, ", auto = "

    .line 908
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->getAutomaticScreenBrightness()I

    move-result v22

    .line 908
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/display/DisplayPowerController;->mLowDimmingProtectionTriggerBrightness:I

    .line 923
    .end local v8    # "current":J
    .end local v12    # "minBrightness":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v7, v0, :cond_1b

    .line 926
    add-int/lit8 v20, v7, -0xa

    if-lez v20, :cond_40

    .line 927
    add-int/lit8 v7, v7, -0xa

    .line 931
    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    move/from16 v20, v0

    .line 930
    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 931
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v21, v0

    .line 930
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 933
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    move/from16 v20, v0

    if-nez v20, :cond_1c

    .line 934
    const/16 v18, 0x0

    .line 936
    :cond_1c
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 939
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 945
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_20

    .line 946
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v7, v0, :cond_1e

    .line 947
    div-int/lit8 v20, v7, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 949
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    move/from16 v20, v0

    if-nez v20, :cond_1f

    .line 950
    const/16 v18, 0x0

    .line 952
    :cond_1f
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    .line 957
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    move/from16 v20, v0

    if-nez v20, :cond_26

    .line 959
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mBackLightGamma:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-eqz v20, :cond_41

    .line 962
    :goto_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mBackLightGamma:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mLastBackLightGamma:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_21

    .line 964
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mBackLightGamma:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastBackLightGamma:F

    .line 965
    const/16 v18, 0x0

    .line 969
    :cond_21
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_22

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_26

    .line 971
    :cond_22
    const/16 v16, 0x28

    .line 973
    .local v16, "rate":I
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->MTK_AAL_SUPPORT:Z

    if-eqz v20, :cond_24

    .line 974
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mTuningQuicklyApply:Z

    move/from16 v20, v0

    if-eqz v20, :cond_23

    .line 975
    const/16 v18, 0x0

    .line 977
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v20

    move/from16 v0, v20

    if-ge v0, v7, :cond_42

    .line 978
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    move/from16 v16, v0

    .line 984
    :cond_24
    :goto_14
    if-nez v18, :cond_25

    .line 985
    const/16 v16, 0xc8

    .line 989
    :cond_25
    if-eqz v11, :cond_43

    .line 990
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v7, v1}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 1001
    .end local v16    # "rate":I
    :cond_26
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    move-object/from16 v20, v0

    if-nez v20, :cond_27

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v20

    if-eqz v20, :cond_44

    .line 1001
    :cond_27
    const/16 v17, 0x0

    .line 1005
    :goto_16
    if-eqz v17, :cond_46

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->isAnimating()Z

    move-result v20

    if-eqz v20, :cond_45

    const/4 v10, 0x0

    .line 1009
    .local v10, "finished":Z
    :goto_17
    if-eqz v17, :cond_28

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_28

    .line 1010
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_28

    .line 1011
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManagerPolicy;->screenTurnedOn()V

    .line 1016
    :cond_28
    if-nez v10, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    move/from16 v20, v0

    if-eqz v20, :cond_47

    .line 1025
    :cond_29
    :goto_18
    if-eqz v17, :cond_2b

    if-eqz v14, :cond_2b

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1028
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_2a

    .line 1029
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1031
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v20, :cond_2a

    .line 1032
    const-string/jumbo v20, "DisplayPowerController"

    const-string/jumbo v22, "Display ready!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2a
    monitor-exit v21

    .line 1036
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    .line 1040
    :cond_2b
    if-eqz v10, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2d

    .line 1041
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v20, :cond_2c

    .line 1042
    const-string/jumbo v20, "DisplayPowerController"

    const-string/jumbo v21, "Finished business..."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_2c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 1049
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastPowerPolicy:I

    .line 644
    return-void

    .line 736
    .end local v5    # "autoBrightnessEnabled":Z
    .end local v10    # "finished":Z
    .end local v11    # "ipoShutdown":Z
    .end local v18    # "slowChange":Z
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2f

    .line 737
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v20, v0

    .line 736
    if-eqz v20, :cond_2f

    .line 738
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2f

    .line 739
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2f

    .line 740
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_7

    .line 742
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    move/from16 v20, v0

    if-eqz v20, :cond_31

    .line 743
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v20, v0

    if-eqz v20, :cond_30

    .line 744
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 746
    :cond_30
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 750
    :goto_19
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_7

    .line 748
    :cond_31
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_19

    .line 758
    :cond_32
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_8

    .line 782
    .restart local v5    # "autoBrightnessEnabled":Z
    .restart local v11    # "ipoShutdown":Z
    :cond_33
    const/4 v6, 0x0

    .restart local v6    # "autoBrightnessEnabledInDoze":Z
    goto/16 :goto_9

    .line 781
    .end local v6    # "autoBrightnessEnabledInDoze":Z
    :cond_34
    const/4 v6, 0x0

    .restart local v6    # "autoBrightnessEnabledInDoze":Z
    goto/16 :goto_9

    .line 785
    :cond_35
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 783
    :cond_36
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 794
    :cond_37
    const/16 v20, 0x1

    goto/16 :goto_b

    .line 795
    :cond_38
    const/16 v21, 0x0

    goto/16 :goto_c

    .line 824
    .end local v6    # "autoBrightnessEnabledInDoze":Z
    .restart local v18    # "slowChange":Z
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mLastPowerPolicy:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 826
    const/16 v18, 0x1

    goto/16 :goto_d

    .line 830
    :cond_3a
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 833
    if-eqz v5, :cond_16

    .line 836
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mLastPowerPolicy:I

    move/from16 v20, v0

    if-nez v20, :cond_3b

    .line 838
    const/4 v7, 0x0

    goto/16 :goto_e

    .line 841
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/autobrightness/RampAnimatorLenovo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/autobrightness/RampAnimatorLenovo;->getCurrentValue()I

    move-result v7

    goto/16 :goto_e

    .line 852
    :cond_3c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto/16 :goto_e

    .line 878
    :cond_3d
    const/16 v20, 0x0

    goto/16 :goto_f

    .line 890
    :cond_3e
    const/16 v20, 0x1

    goto/16 :goto_10

    .line 891
    :cond_3f
    const/16 v21, 0x0

    goto/16 :goto_11

    .line 929
    :cond_40
    div-int/lit8 v7, v7, 0x2

    goto/16 :goto_12

    .line 960
    :cond_41
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/android/server/display/DisplayPowerController;->updateBrightness(IZ)I

    move-result v7

    goto/16 :goto_13

    .line 980
    .restart local v16    # "rate":I
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    move/from16 v16, v0

    goto/16 :goto_14

    .line 992
    :cond_43
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    goto/16 :goto_15

    .line 1003
    .end local v16    # "rate":I
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v20

    if-nez v20, :cond_27

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v17

    .local v17, "ready":Z
    goto/16 :goto_16

    .line 1006
    .end local v17    # "ready":Z
    :cond_45
    const/4 v10, 0x1

    .restart local v10    # "finished":Z
    goto/16 :goto_17

    .line 1005
    .end local v10    # "finished":Z
    :cond_46
    const/4 v10, 0x0

    .restart local v10    # "finished":Z
    goto/16 :goto_17

    .line 1017
    :cond_47
    sget-boolean v20, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v20, :cond_48

    .line 1018
    const-string/jumbo v20, "DisplayPowerController"

    const-string/jumbo v21, "Unfinished business..."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1021
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    goto/16 :goto_18

    .line 1027
    :catchall_1
    move-exception v20

    monitor-exit v21

    throw v20

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateRuntimeConfig()V
    .locals 13

    .prologue
    .line 1674
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1675
    const/4 v8, 0x0

    .line 1678
    .local v8, "updated":Z
    const/4 v9, 0x1

    :try_start_0
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningSerial(I)I

    move-result v6

    .line 1679
    .local v6, "serial":I
    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->mTuningAli2BliSerial:I

    if-eq v6, v9, :cond_1

    .line 1680
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningInt(I)I

    move-result v4

    .line 1681
    .local v4, "length":I
    if-lez v4, :cond_9

    .line 1682
    mul-int/lit8 v9, v4, 0x2

    new-array v2, v9, [I

    .line 1683
    .local v2, "curve":[I
    const/4 v9, 0x1

    invoke-static {v9, v2}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningIntArray(I[I)V

    .line 1685
    const/4 v9, 0x0

    aget v9, v2, v9

    if-eqz v9, :cond_0

    .line 1686
    const-string/jumbo v9, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "AALRuntimeTuning: lux[0] is not 0: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v2, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_0
    add-int/lit8 v9, v4, -0x1

    new-array v5, v9, [I

    .line 1690
    .local v5, "lux":[I
    new-array v0, v4, [I

    .line 1692
    .local v0, "brightness":[I
    add-int/lit8 v9, v4, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v2, v11, v5, v12, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1693
    const/4 v9, 0x0

    invoke-static {v2, v4, v0, v9, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1695
    const/4 v9, 0x0

    invoke-static {v5, v0, v9}, Lcom/android/server/display/DisplayPowerController;->createAutoBrightnessSpline([I[IZ)Landroid/util/Spline;

    move-result-object v7

    .line 1696
    .local v7, "spline":Landroid/util/Spline;
    if-eqz v7, :cond_7

    .line 1697
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-virtual {v9, v7}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->setScreenAutoBrightnessSpline(Landroid/util/Spline;)V

    .line 1699
    iput v6, p0, Lcom/android/server/display/DisplayPowerController;->mTuningAli2BliSerial:I

    .line 1700
    const/4 v8, 0x1

    .line 1702
    const-string/jumbo v9, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "AALRuntimeTuning: curve updated. Length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1703
    const-string/jumbo v12, ", serial = "

    .line 1702
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    const-string/jumbo v9, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "AALRuntimeTuning: lux = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v2, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1705
    array-length v12, v5

    add-int/lit8 v12, v12, -0x1

    aget v12, v5, v12

    .line 1704
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1705
    const-string/jumbo v12, " brightness = "

    .line 1704
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1705
    const/4 v12, 0x0

    aget v12, v0, v12

    .line 1704
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1706
    const-string/jumbo v12, "-"

    .line 1704
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1706
    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    aget v12, v0, v12

    .line 1704
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    .end local v0    # "brightness":[I
    .end local v2    # "curve":[I
    .end local v4    # "length":I
    .end local v5    # "lux":[I
    .end local v7    # "spline":Landroid/util/Spline;
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 1726
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-virtual {v9}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->updateRuntimeConfig()V

    .line 1727
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/display/DisplayPowerController;->mTuningQuicklyApply:Z

    .line 1730
    :cond_2
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningSerial(I)I

    move-result v6

    .line 1731
    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliBrightenSerial:I

    if-eq v6, v9, :cond_4

    .line 1732
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningInt(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    .line 1733
    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    if-gtz v9, :cond_3

    .line 1734
    const/16 v9, 0x28

    iput v9, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    .line 1735
    :cond_3
    iput v6, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliBrightenSerial:I

    .line 1737
    const-string/jumbo v9, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "AALRuntimeTuning: brighten = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1738
    const-string/jumbo v12, ", serial = "

    .line 1737
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_4
    const/4 v9, 0x3

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningSerial(I)I

    move-result v6

    .line 1742
    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliDarkenSerial:I

    if-eq v6, v9, :cond_6

    .line 1743
    const/4 v9, 0x3

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->nativeGetTuningInt(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    .line 1744
    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    if-gtz v9, :cond_5

    .line 1745
    const/16 v9, 0x28

    iput v9, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    .line 1746
    :cond_5
    iput v6, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliDarkenSerial:I

    .line 1748
    const-string/jumbo v9, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "AALRuntimeTuning: darken = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1749
    const-string/jumbo v12, ", serial = "

    .line 1748
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v10

    .line 1673
    return-void

    .line 1708
    .restart local v0    # "brightness":[I
    .restart local v2    # "curve":[I
    .restart local v4    # "length":I
    .restart local v5    # "lux":[I
    .restart local v7    # "spline":Landroid/util/Spline;
    :cond_7
    :try_start_1
    const-string/jumbo v9, "DisplayPowerController"

    const-string/jumbo v11, "AALRuntimeTuning: invalid curve is given."

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1711
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v9, "AALRuntimeTuning: curve = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1712
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_8

    .line 1713
    aget v9, v2, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1714
    const-string/jumbo v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1715
    add-int v9, v4, v3

    aget v9, v2, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1716
    const-string/jumbo v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1712
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1718
    :cond_8
    const-string/jumbo v9, "DisplayPowerController"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1674
    .end local v0    # "brightness":[I
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "curve":[I
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "lux":[I
    .end local v6    # "serial":I
    .end local v7    # "spline":Landroid/util/Spline;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 1721
    .restart local v4    # "length":I
    .restart local v6    # "serial":I
    :cond_9
    :try_start_2
    const-string/jumbo v9, "DisplayPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "AALRuntimeTuning: invalid curve length: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private writeInitConfig()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1656
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1657
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningInitCurve:[I

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningInitCurve:[I

    .line 1658
    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/server/display/DisplayPowerController;->nativeSetTuningIntArray(I[I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningAli2BliSerial:I

    .line 1660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningInitCurve:[I

    .line 1662
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliBrightenSerial:I

    if-ne v0, v3, :cond_1

    .line 1664
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_BRIGHTEN:I

    .line 1663
    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/android/server/display/DisplayPowerController;->nativeSetTuningInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliBrightenSerial:I

    .line 1666
    :cond_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliDarkenSerial:I

    if-ne v0, v3, :cond_2

    .line 1668
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RAMP_RATE_DARKEN:I

    .line 1667
    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/android/server/display/DisplayPowerController;->nativeSetTuningInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mTuningBliDarkenSerial:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 1655
    return-void

    .line 1656
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1393
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1394
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1395
    const-string/jumbo v0, "Display Power Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1400
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1399
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1404
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1405
    const-string/jumbo v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessDarkConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1413
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 1412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    .line 1421
    const-wide/16 v2, 0x3e8

    .line 1416
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1392
    return-void

    .line 1393
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 4
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .prologue
    .line 528
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 529
    const-string/jumbo v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 530
    const-string/jumbo v3, ", waitForNegativeProximity="

    .line 529
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 534
    const/4 v0, 0x0

    .line 536
    .local v0, "changed":Z
    if-eqz p2, :cond_1

    .line 537
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-eqz v1, :cond_5

    .line 542
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v1, :cond_6

    .line 543
    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 544
    const/4 v0, 0x1

    .line 550
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 551
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 554
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v1, :cond_7

    .line 559
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    .line 538
    :cond_5
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 539
    const/4 v0, 0x1

    goto :goto_0

    .line 545
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 546
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 547
    const/4 v0, 0x1

    goto :goto_1

    .line 555
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 556
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 533
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setBackLightProperties(FII)V
    .locals 6
    .param p1, "gamma"    # F
    .param p2, "minimum"    # I
    .param p3, "maximum"    # I

    .prologue
    .line 1608
    const-string/jumbo v0, "DisplayPowerController"

    .line 1609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set BackLight Prop, gamma= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%1.3f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1610
    const-string/jumbo v2, " minimum="

    .line 1609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1610
    const-string/jumbo v2, " maximum="

    .line 1609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1608
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mBackLightGamma:F

    .line 1612
    iput p2, p0, Lcom/android/server/display/DisplayPowerController;->mBackLightMinimum:I

    .line 1613
    iput p3, p0, Lcom/android/server/display/DisplayPowerController;->mBackLightMaximum:I

    .line 1614
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 1607
    return-void
.end method

.method public setIPOScreenOnDelay(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->setIPOScreenOnDelay(I)V

    .line 508
    return-void
.end method

.method public updateBrightness()V
    .locals 0

    .prologue
    .line 1055
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 1054
    return-void
.end method
